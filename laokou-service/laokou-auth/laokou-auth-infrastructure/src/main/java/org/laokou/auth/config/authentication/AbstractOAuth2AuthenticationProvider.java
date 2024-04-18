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

package org.laokou.auth.config.authentication;

import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.laokou.auth.domain.auth.Auth;
import org.laokou.common.core.utils.RequestUtil;
import org.laokou.common.crypto.utils.AesUtil;
import org.laokou.common.i18n.utils.ObjectUtils;
import org.laokou.common.i18n.utils.StringUtil;
import org.laokou.common.security.handler.OAuth2ExceptionHandler;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.core.*;
import org.springframework.security.oauth2.core.oidc.OidcIdToken;
import org.springframework.security.oauth2.core.oidc.OidcScopes;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.security.oauth2.server.authorization.OAuth2Authorization;
import org.springframework.security.oauth2.server.authorization.OAuth2AuthorizationService;
import org.springframework.security.oauth2.server.authorization.OAuth2TokenType;
import org.springframework.security.oauth2.server.authorization.authentication.OAuth2AccessTokenAuthenticationToken;
import org.springframework.security.oauth2.server.authorization.authentication.OAuth2AuthorizationCodeAuthenticationProvider;
import org.springframework.security.oauth2.server.authorization.authentication.OAuth2ClientAuthenticationToken;
import org.springframework.security.oauth2.server.authorization.client.RegisteredClient;
import org.springframework.security.oauth2.server.authorization.context.AuthorizationServerContextHolder;
import org.springframework.security.oauth2.server.authorization.token.DefaultOAuth2TokenContext;
import org.springframework.security.oauth2.server.authorization.token.OAuth2TokenGenerator;

import java.io.IOException;
import java.security.Principal;
import java.util.Collections;
import java.util.Optional;
import java.util.Set;

import static org.laokou.common.i18n.common.StringConstant.EMPTY;
import static org.laokou.common.i18n.common.exception.AuthException.*;
import static org.springframework.security.oauth2.core.oidc.endpoint.OidcParameterNames.ID_TOKEN;
import static org.springframework.security.oauth2.server.authorization.OAuth2TokenType.ACCESS_TOKEN;

/**
 * 抽象认证处理器.
 *
 * @author laokou
 */
@Slf4j
@RequiredArgsConstructor
public abstract class AbstractOAuth2AuthenticationProvider implements AuthenticationProvider {

	private final OAuth2AuthorizationService authorizationService;

	private final OAuth2TokenGenerator<? extends OAuth2Token> tokenGenerator;

	private static final OAuth2TokenType ID_TOKEN_TOKEN_TYPE = new OAuth2TokenType(ID_TOKEN);

	private final OAuth2AuthenticationProvider authProvider;

	/**
	 * 认证.
	 * @param authentication 认证对象
	 */
	@SneakyThrows
	public Authentication authenticate(Authentication authentication) {
		HttpServletRequest request = RequestUtil.getHttpServletRequest();
		return authenticate(authentication, principal(request));
	}

	/**
	 * 类型支持.
	 * @param authentication 类型
	 * @return 支持结果
	 * @see OAuth2AuthorizationCodeAuthenticationProvider#supports(Class)
	 * 是否支持认证（provider）.
	 */
	abstract public boolean supports(Class<?> authentication);

	/**
	 * 认证.
	 * @param request 请求对象
	 */
	abstract Authentication principal(HttpServletRequest request) throws IOException;

	/**
	 * 获取认证类型.
	 * @return 认证类型
	 */
	abstract AuthorizationGrantType getGrantType();

	/**
	 * 获取令牌.
	 * @param authentication 认证对象
	 * @param principal 认证对象
	 * @return 令牌
	 */
	protected Authentication authenticate(Authentication authentication, Authentication principal) {
		try {
			// 仿照授权码模式
			// 生成token（access_token + refresh_token）
			AbstractOAuth2AuthenticationToken auth2BaseAuthenticationToken = (AbstractOAuth2AuthenticationToken) authentication;
			OAuth2ClientAuthenticationToken clientPrincipal = getAuthenticatedClientElseThrowInvalidClient(
					auth2BaseAuthenticationToken);
			RegisteredClient registeredClient = clientPrincipal.getRegisteredClient();
			if (ObjectUtils.isNull(registeredClient)) {
				throw OAuth2ExceptionHandler.getException(REGISTERED_CLIENT_NOT_EXIST);
			}
			// 获取认证范围
			Set<String> scopes = registeredClient.getScopes();
			String loginName = principal.getCredentials().toString();
			// 认证类型
			AuthorizationGrantType grantType = getGrantType();
			// 获取上下文
			DefaultOAuth2TokenContext.Builder tokenContextBuilder = DefaultOAuth2TokenContext.builder()
				.registeredClient(registeredClient)
				.principal(principal)
				.tokenType(ACCESS_TOKEN)
				.authorizedScopes(scopes)
				.authorizationServerContext(AuthorizationServerContextHolder.getContext())
				.authorizationGrantType(grantType)
				.authorizationGrant(auth2BaseAuthenticationToken);
			DefaultOAuth2TokenContext tokenContext = tokenContextBuilder.tokenType(ACCESS_TOKEN).build();
			// 生成access_token
			OAuth2Token generatedAccessToken = Optional.ofNullable(tokenGenerator.generate(tokenContext))
				.orElseThrow(() -> OAuth2ExceptionHandler.getException(GENERATE_ACCESS_TOKEN_FAIL));
			OAuth2AccessToken accessToken = new OAuth2AccessToken(OAuth2AccessToken.TokenType.BEARER,
					generatedAccessToken.getTokenValue(), generatedAccessToken.getIssuedAt(),
					generatedAccessToken.getExpiresAt(), tokenContext.getAuthorizedScopes());
			// jwt
			OAuth2Authorization.Builder authorizationBuilder = OAuth2Authorization
				.withRegisteredClient(registeredClient)
				.principalName(loginName)
				.authorizedScopes(scopes)
				.authorizationGrantType(grantType);
			if (generatedAccessToken instanceof ClaimAccessor claimAccessor) {
				authorizationBuilder
					.token(accessToken,
							(metadata) -> metadata.put(OAuth2Authorization.Token.CLAIMS_METADATA_NAME,
									claimAccessor.getClaims()))
					.authorizedScopes(scopes)
					// admin后台管理需要token，解析token获取用户信息，因此将用户信息存在数据库，下次直接查询数据库就可以获取用户信息
					.attribute(Principal.class.getName(), principal);
			}
			else {
				authorizationBuilder.accessToken(accessToken);
			}
			// 生成refresh_token
			OAuth2RefreshToken refreshToken = null;
			if (registeredClient.getAuthorizationGrantTypes().contains(AuthorizationGrantType.REFRESH_TOKEN)
					&& !clientPrincipal.getClientAuthenticationMethod().equals(ClientAuthenticationMethod.NONE)) {
				tokenContext = tokenContextBuilder.tokenType(OAuth2TokenType.REFRESH_TOKEN).build();
				OAuth2Token generatedRefreshToken = Optional.ofNullable(tokenGenerator.generate(tokenContext))
					.orElseThrow(() -> OAuth2ExceptionHandler.getException(GENERATE_REFRESH_TOKEN_FAIL));
				refreshToken = (OAuth2RefreshToken) generatedRefreshToken;
				authorizationBuilder.refreshToken(refreshToken);
			}
			if (scopes.contains(OidcScopes.OPENID)) {
				tokenContext = tokenContextBuilder.tokenType(ID_TOKEN_TOKEN_TYPE)
					// ID令牌定制器可能需要访问访问令牌、刷新令牌
					.authorization(authorizationBuilder.build())
					.build();
				OAuth2Token generatedIdToken = Optional.ofNullable(this.tokenGenerator.generate(tokenContext))
					.orElseThrow(() -> OAuth2ExceptionHandler.getException(GENERATE_ID_TOKEN_FAIL));
				// 生成id_token
				OidcIdToken idToken = new OidcIdToken(generatedIdToken.getTokenValue(), generatedIdToken.getIssuedAt(),
						generatedIdToken.getExpiresAt(), ((Jwt) generatedIdToken).getClaims());
				authorizationBuilder.token(idToken, (metadata) -> metadata
					.put(OAuth2Authorization.Token.CLAIMS_METADATA_NAME, idToken.getClaims()));
			}
			OAuth2Authorization authorization = authorizationBuilder.build();
			authorizationService.save(authorization);
			return new OAuth2AccessTokenAuthenticationToken(registeredClient, clientPrincipal, accessToken,
					refreshToken, Collections.emptyMap());
		}
		finally {
			// 清空上下文
			SecurityContextHolder.clearContext();
		}
	}

	/**
	 * 获取用户信息.
	 * @param auth 用户对象
	 * @param request 请求参数
	 * @return 用户信息
	 */
	protected UsernamePasswordAuthenticationToken authenticationToken(Auth auth, HttpServletRequest request) {
		return authProvider.authenticationToken(auth, request);
	}

	protected String encryptAes(String str) {
		if (StringUtil.isEmpty(str)) {
			return EMPTY;
		}
		return AesUtil.encrypt(str);
	}

	private OAuth2ClientAuthenticationToken getAuthenticatedClientElseThrowInvalidClient(
			Authentication authentication) {
		OAuth2ClientAuthenticationToken clientPrincipal = null;
		if (OAuth2ClientAuthenticationToken.class.isAssignableFrom(authentication.getPrincipal().getClass())) {
			clientPrincipal = (OAuth2ClientAuthenticationToken) authentication.getPrincipal();
		}
		if (ObjectUtils.isNotNull(clientPrincipal) && clientPrincipal.isAuthenticated()) {
			return clientPrincipal;
		}
		throw OAuth2ExceptionHandler.getException(INVALID_CLIENT);
	}

}
