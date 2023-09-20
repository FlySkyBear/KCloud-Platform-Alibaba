/*
 * Copyright (c) 2022 KCloud-Platform-Alibaba Authors. All Rights Reserved.
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

package org.laokou.admin.domain.gateway;

import org.laokou.admin.domain.log.LoginLog;
import org.laokou.admin.domain.log.OperateLog;
import org.laokou.admin.domain.user.User;
import org.laokou.common.i18n.dto.Datas;
import org.laokou.common.i18n.dto.PageQuery;

/**
 * @author laokou
 */
public interface LogGateway {

    Datas<LoginLog> loginList(LoginLog loginLog,User user,PageQuery pageQuery);

    Datas<OperateLog> operateList(OperateLog operateLog, User user, PageQuery pageQuery);

}
