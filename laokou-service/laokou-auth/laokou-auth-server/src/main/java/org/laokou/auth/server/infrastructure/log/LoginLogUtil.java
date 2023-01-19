/**
 * Copyright (c) 2022 KCloud-Platform-Alibaba Authors. All Rights Reserved.
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * <p>
 *   http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.laokou.auth.server.infrastructure.log;

import eu.bitwalker.useragentutils.UserAgent;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.HttpHeaders;
import org.laokou.auth.client.dto.LoginLogDTO;
import org.laokou.auth.server.domain.sys.repository.service.SysLoginLogService;
import org.laokou.common.core.utils.AddressUtil;
import org.laokou.common.core.utils.IpUtil;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;

/**
 * @author laokou
 */
@Component
@Slf4j
@RequiredArgsConstructor
public class LoginLogUtil {

    private final SysLoginLogService sysLoginLogService;

    @Async
    @Transactional
    public void recordLogin(String username,String loginType, Integer status, String msg, HttpServletRequest request) throws IOException {
        UserAgent userAgent = UserAgent.parseUserAgentString(request.getHeader(HttpHeaders.USER_AGENT));
        String ip = IpUtil.getIpAddr(request);
        //获取客户端操作系统
        String os = userAgent.getOperatingSystem().getName();
        //获取客户端浏览器
        String browser = userAgent.getBrowser().getName();
        LoginLogDTO dto = new LoginLogDTO();
        dto.setLoginName(username);
        dto.setRequestIp(ip);
        dto.setRequestAddress(AddressUtil.getRealAddress(ip));
        dto.setBrowser(browser);
        dto.setOs(os);
        dto.setMsg(msg);
        dto.setLoginType(loginType);
        dto.setRequestStatus(status);
        sysLoginLogService.insertLoginLog(dto);
    }

}
