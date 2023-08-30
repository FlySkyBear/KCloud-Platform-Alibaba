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
package org.laokou.admin.web;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.laokou.admin.client.api.TenantsServiceI;
import org.laokou.admin.client.dto.TenantOptionListQry;
import org.laokou.admin.client.dto.clientobject.OptionCO;
import org.laokou.common.i18n.dto.Result;
import org.laokou.common.trace.annotation.TraceLog;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author laokou
 */
@RestController
@Tag(name = "TenantsController", description = "租户")
@RequiredArgsConstructor
public class TenantsController {

	private final TenantsServiceI tenantsServiceI;

	@TraceLog
	@PostMapping("v1/tenants/list")
	@Operation(summary = "查询", description = "查询")
	// @PreAuthorize("hasAuthority('tenants:list')")
	public Result<?> list() {
		return Result.of(null);
	}

	@TraceLog
	@PostMapping("v1/tenants")
	@Operation(summary = "新增", description = "新增")
	// @OperateLog(module = "租户管理", name = "新增")
	// @PreAuthorize("hasAuthority('tenants:insert')")
	public Result<Boolean> insert() {
		return Result.of(null);
	}

	@TraceLog
	@GetMapping("v1/tenants/{id}")
	@Operation(summary = "查看", description = "查看")
	// @DataCache(name = "tenants", key = "#id")
	public Result<?> get(@PathVariable("id") Long id) {
		return Result.of(null);
	}

	@TraceLog
	@PutMapping("v1/tenants")
	@Operation(summary = "修改", description = "修改")
	// @OperateLog(module = "租户管理", name = "修改")
	// @PreAuthorize("hasAuthority('tenants:update')")
	// @DataCache(name = "tenants", key = "#dto.id", type = CacheEnum.DEL)
	public Result<Boolean> update() {
		return Result.of(null);
	}

	@TraceLog
	@DeleteMapping("v1/tenants/{id}")
	@Operation(summary = "删除", description = "删除")
	// @OperateLog(module = "租户管理", name = "删除")
	// @PreAuthorize("hasAuthority('tenants:delete')")
	// @DataCache(name = "tenants", key = "#id", type = CacheEnum.DEL)
	public Result<Boolean> delete(@PathVariable("id") Long id) {
		return Result.of(null);
	}

	@TraceLog
	@GetMapping("v1/tenants/option-list")
	@Operation(summary = "下拉列表", description = "下拉列表")
	public Result<List<OptionCO>> optionList() {
		return tenantsServiceI.optionList(new TenantOptionListQry());
	}

}
