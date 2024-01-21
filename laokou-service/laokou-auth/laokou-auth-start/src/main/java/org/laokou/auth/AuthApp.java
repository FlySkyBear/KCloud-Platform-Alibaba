/*
 * Copyright (c) 2022-2024 KCloud-Platform-Alibaba Author or Authors. All Rights Reserved.
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

package org.laokou.auth;

import com.ulisesbocchio.jasyptspringboot.annotation.EnableEncryptableProperties;
import lombok.SneakyThrows;
import org.laokou.common.core.annotation.EnableTask;
import org.laokou.common.nacos.filter.ShutdownFilter;
import org.laokou.common.redis.annotation.EnableRedisRepository;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.oauth2.server.servlet.OAuth2AuthorizationServerAutoConfiguration;
import org.springframework.boot.autoconfigure.security.oauth2.server.servlet.OAuth2AuthorizationServerJwtAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.security.core.context.SecurityContextHolder;

import java.net.InetAddress;

import static org.laokou.common.i18n.common.NetworkConstants.IP;

/**
 * 启动类.
 *
 * @author laokou
 */
@SpringBootApplication(scanBasePackages = "org.laokou",
		exclude = { OAuth2AuthorizationServerAutoConfiguration.class,
				OAuth2AuthorizationServerJwtAutoConfiguration.class })
@EnableConfigurationProperties
@EnableEncryptableProperties
@EnableDiscoveryClient
@EnableRedisRepository
@EnableTask
@ServletComponentScan(basePackageClasses = { ShutdownFilter.class })
public class AuthApp {

	@SneakyThrows
	public static void main(String[] args) {
		// SpringSecurity 子线程读取父线程的上下文
		System.setProperty(SecurityContextHolder.SYSTEM_PROPERTY, SecurityContextHolder.MODE_INHERITABLETHREADLOCAL);
		// https://github.com/alibaba/nacos/pull/3654
		// 请查看 HttpLoginProcessor
		// System.setProperty(TlsSystemConfig.TLS_ENABLE, TRUE);
		// System.setProperty(TlsSystemConfig.CLIENT_AUTH, TRUE);
		// System.setProperty(TlsSystemConfig.CLIENT_TRUST_CERT, "tls/nacos.cer");
		System.setProperty(IP, InetAddress.getLocalHost().getHostAddress());
		new SpringApplicationBuilder(AuthApp.class).web(WebApplicationType.SERVLET).run(args);
	}

}
