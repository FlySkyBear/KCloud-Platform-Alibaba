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
package org.laokou.admin.server.infrastructure.feign.workflow;

import org.laokou.admin.server.infrastructure.feign.workflow.factory.WorkDefinitionApiFeignClientFallbackFactory;
import org.laokou.common.i18n.dto.Result;
import org.laokou.common.openfeign.constant.ServiceConstant;
import org.laokou.flowable.client.dto.DefinitionDTO;
import org.laokou.flowable.client.vo.DefinitionVO;
import org.laokou.flowable.client.vo.PageVO;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

/**
 * @author laokou
 */
@FeignClient(contextId = "workDefinition", value = ServiceConstant.LAOKOU_FLOWABLE, path = "/work/definition/api",
		fallbackFactory = WorkDefinitionApiFeignClientFallbackFactory.class)
@Service
public interface WorkDefinitionApiFeignClient {

	/**
	 * 新增流程
	 * @param file
	 * @return
	 * @throws IOException
	 */
	@PostMapping(value = "/insert", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	Result<Boolean> insert(@RequestPart("file") MultipartFile file);

	/**
	 * 查询流程
	 * @param dto
	 * @return
	 */
	@PostMapping(value = "/query")
	Result<PageVO<DefinitionVO>> query(@RequestBody DefinitionDTO dto);

	/**
	 * 流程图
	 * @param definitionId
	 * @return
	 * @return
	 */
	@GetMapping(value = "/diagram")
	Result<String> diagram(@RequestParam("definitionId") String definitionId);

	/**
	 * 删除流程
	 * @param deploymentId
	 * @return
	 */
	@DeleteMapping(value = "/delete")
	Result<Boolean> delete(@RequestParam("deploymentId") String deploymentId);

	/**
	 * 挂起流程
	 * @param definitionId
	 * @return
	 */
	@PutMapping(value = "/suspend")
	Result<Boolean> suspend(@RequestParam("definitionId") String definitionId);

	/**
	 * 激活流程
	 * @param definitionId
	 * @return
	 */
	@PutMapping(value = "/activate")
	Result<Boolean> activate(@RequestParam("definitionId") String definitionId);

}
