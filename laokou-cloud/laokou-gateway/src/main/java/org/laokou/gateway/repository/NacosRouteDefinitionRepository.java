/*
 * Copyright (c) 2022 KCloud-Platform-Alibaba Author or Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
package org.laokou.gateway.repository;

import com.alibaba.nacos.api.config.ConfigService;
import com.alibaba.nacos.api.config.listener.Listener;
import com.alibaba.nacos.api.exception.NacosException;
import io.micrometer.common.lang.NonNullApi;
import jakarta.annotation.PostConstruct;
import lombok.extern.slf4j.Slf4j;
import org.laokou.common.core.utils.JacksonUtil;
import org.laokou.common.i18n.common.exception.SystemException;
import org.laokou.common.i18n.utils.LogUtil;
import org.laokou.common.nacos.utils.ConfigUtil;
import org.laokou.common.redis.utils.RedisKeyUtil;
import org.springframework.cloud.gateway.event.RefreshRoutesEvent;
import org.springframework.cloud.gateway.route.RouteDefinition;
import org.springframework.cloud.gateway.route.RouteDefinitionRepository;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.context.ApplicationEventPublisherAware;
import org.springframework.data.redis.core.ReactiveHashOperations;
import org.springframework.data.redis.core.ReactiveRedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import reactor.core.scheduler.Schedulers;

import java.util.Collection;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

import static org.laokou.common.i18n.common.ErrorCodes.ROUTE_NOT_EXIST;
import static org.laokou.common.i18n.common.RouterConstants.DATA_ID;

/**
 * <a href=
 * "https://github.com/alibaba/spring-cloud-alibaba/blob/2.2.x/spring-cloud-alibaba-examples/nacos-example/nacos-config-example/src/main/java/com/alibaba/cloud/examples/example/ConfigListenerExample.java">...</a>
 *
 * @author laokou
 */
@Component
@Slf4j
@NonNullApi
@Repository
public class NacosRouteDefinitionRepository implements RouteDefinitionRepository, ApplicationEventPublisherAware {

	private final ConfigUtil configUtil;

	private final ReactiveHashOperations<String, String, RouteDefinition> reactiveHashOperations;

	private ApplicationEventPublisher applicationEventPublisher;

	public NacosRouteDefinitionRepository(ConfigUtil configUtil,
			ReactiveRedisTemplate<String, Object> reactiveRedisTemplate) {
		this.configUtil = configUtil;
		this.reactiveHashOperations = reactiveRedisTemplate.opsForHash();
	}

	@PostConstruct
	public void init() throws NacosException {
		// Spring Cloud Gateway 动态路由的 order 是路由匹配的顺序，值越小，优先级越高。当多个路由匹配同一个请求时
		// Spring Cloud Gateway 会按照 order 的值从小到大进行匹配，找到第一个匹配成功的路由进行处理。
		String group = configUtil.getGroup();
		ConfigService configService = configUtil.getConfigService();
		configService.addListener(DATA_ID, group, new Listener() {
			@Override
			public Executor getExecutor() {
				return Executors.newSingleThreadExecutor();
			}

			@Override
			public void receiveConfigInfo(String configInfo) {
				log.info("接收到配置变动通知");
				// 清除缓存
				reactiveHashOperations.delete(RedisKeyUtil.getRouteDefinitionHashKey())
					.subscribe(success -> log.info("删除成功"), error -> log.error("删除失败，错误信息：{}，详情见日志", LogUtil.result(error.getMessage()), error));
				// 刷新事件
				applicationEventPublisher.publishEvent(new RefreshRoutesEvent(this));
			}
		});
	}

	@Override
	// @formatter:off
	public Flux<RouteDefinition> getRouteDefinitions() {
        return reactiveHashOperations.entries(RedisKeyUtil.getRouteDefinitionHashKey()).mapNotNull(Map.Entry::getValue);
	}

	@Override
	public Mono<Void> save(Mono<RouteDefinition> route) {
		return Mono.empty();
	}

	@Override
	public Mono<Void> delete(Mono<String> routeId) {
		return Mono.empty();
	}

	@Override
	public void setApplicationEventPublisher(ApplicationEventPublisher applicationEventPublisher) {
		this.applicationEventPublisher = applicationEventPublisher;
	}

	private Flux<RouteDefinition> routers() {
		return Flux.fromIterable(pullRouters()).subscribeOn(Schedulers.boundedElastic()).doOnNext(router -> reactiveHashOperations.putIfAbsent(RedisKeyUtil.getRouteDefinitionHashKey(), router.getId(), router).subscribe());
	}

	private Collection<RouteDefinition> pullRouters() {
		try {
			// pull nacos config info
			String group = configUtil.getGroup();
			ConfigService configService = configUtil.getConfigService();
			String configInfo = configService.getConfig(DATA_ID, group, 5000);
			return JacksonUtil.toList(configInfo, RouteDefinition.class);
		}
		catch (Exception e) {
			log.error("错误信息：{}，详情见日志", LogUtil.result(e.getMessage()), e);
			throw new SystemException(ROUTE_NOT_EXIST);
		}
	}
	// @formatter:on

}
