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

package org.laokou.admin.domain.gateway;

import io.swagger.v3.oas.annotations.media.Schema;
import org.laokou.admin.domain.dept.Dept;

/**
 * @author laokou
 */
@Schema(name = "DeptGateway", description = "部门网关")
public interface DeptGateway {

	/**
	 * 新增部门.
	 * @param dept 部门对象
	 */
	void create(Dept dept);

	/**
	 * 修改部门.
	 * @param dept 部门对象
	 */
	void modify(Dept dept);

	/**
	 * 根据ID删除部门.
	 * @param ids IDS
	 */
	void remove(Long[] ids);

}
