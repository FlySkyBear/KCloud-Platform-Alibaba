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

package org.laokou.admin.command.dict;

import com.baomidou.dynamic.datasource.annotation.DS;
import lombok.RequiredArgsConstructor;
import org.laokou.admin.domain.dict.Dict;
import org.laokou.admin.domain.gateway.DictGateway;
import org.laokou.admin.dto.dict.DictModifyCmd;
import org.laokou.admin.dto.dict.clientobject.DictCO;
import org.springframework.stereotype.Component;

import static org.laokou.common.i18n.common.DatasourceConstants.TENANT;

/**
 * 修改字典执行器.
 *
 * @author laokou
 */
@Component
@RequiredArgsConstructor
public class DictModifyCmdExe {

	private final DictGateway dictGateway;

	/**
	 * 执行修改字典.
	 * @param cmd 修改字典参数
	 */
	@DS(TENANT)
	public void executeVoid(DictModifyCmd cmd) {
		dictGateway.modify(convert(cmd.getDictCO()));
	}

	private Dict convert(DictCO co) {
		return Dict.builder()
				.id(co.getId())
				.value(co.getValue())
				.type(co.getType())
				.label(co.getLabel())
				.sort(co.getSort())
				.remark(co.getRemark())
				.build();
	}

}
