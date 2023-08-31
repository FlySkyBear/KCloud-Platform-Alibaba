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

package org.laokou.admin.command.user.query;

import lombok.RequiredArgsConstructor;
import org.laokou.admin.client.dto.user.UserOptionListQry;
import org.laokou.admin.client.dto.common.clientobject.OptionCO;
import org.laokou.admin.domain.gateway.UserGateway;
import org.laokou.admin.domain.common.Option;
import org.laokou.common.core.utils.ConvertUtil;
import org.laokou.common.i18n.dto.Result;
import org.laokou.common.security.utils.UserUtil;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author laokou
 */
@Component
@RequiredArgsConstructor
public class UserOptionListQryExe {

	private final UserGateway userGateway;

	public Result<List<OptionCO>> execute(UserOptionListQry qry) {
		List<Option> optionList = userGateway.getOptionList(UserUtil.getTenantId());
		return Result.of(ConvertUtil.sourceToTarget(optionList, OptionCO.class));
	}

}
