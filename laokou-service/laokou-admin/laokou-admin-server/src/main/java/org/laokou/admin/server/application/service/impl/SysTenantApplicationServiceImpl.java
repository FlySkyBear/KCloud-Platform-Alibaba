/**
 * Copyright (c) 2022 KCloud-Platform-Alibaba Authors. All Rights Reserved.
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.laokou.admin.server.application.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.RequiredArgsConstructor;
import org.laokou.admin.server.application.service.SysTenantApplicationService;
import org.laokou.auth.client.utils.UserUtil;
import org.laokou.common.core.utils.ConvertUtil;
import org.laokou.common.swagger.exception.CustomException;
import org.laokou.common.swagger.utils.ValidatorUtil;
import org.laokou.tenant.dto.SysTenantDTO;
import org.laokou.tenant.entity.SysTenantDO;
import org.laokou.tenant.qo.SysTenantQo;
import org.laokou.tenant.service.SysTenantService;
import org.laokou.tenant.vo.SysTenantVO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author laokou
 */
@Service
@RequiredArgsConstructor
public class SysTenantApplicationServiceImpl implements SysTenantApplicationService {

    private final SysTenantService sysTenantService;

    @Override
    public IPage<SysTenantVO> queryTenantPage(SysTenantQo qo) {
        ValidatorUtil.validateEntity(qo);
        IPage<SysTenantVO> page = new Page<>(qo.getPageNum(),qo.getPageSize());
        return sysTenantService.queryTenantPage(page,qo);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean insertTenant(SysTenantDTO dto) {
        ValidatorUtil.validateEntity(dto);
        long count = sysTenantService.count(Wrappers.lambdaQuery(SysTenantDO.class).eq(SysTenantDO::getName, dto.getName()));
        if (count > 0) {
            throw new CustomException("租户名称已存在，请重新填写");
        }
        SysTenantDO sysTenantDO = ConvertUtil.sourceToTarget(dto, SysTenantDO.class);
        sysTenantDO.setCreator(UserUtil.getUserId());
        return sysTenantService.save(sysTenantDO);
    }

    @Override
    public SysTenantVO getTenantById(Long id) {
        return sysTenantService.getTenantById(id);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean updateTenant(SysTenantDTO dto) {
        ValidatorUtil.validateEntity(dto);
        Long id = dto.getId();
        if (id == null) {
            throw new CustomException("租户编号不为空");
        }
        long count = sysTenantService.count(Wrappers.lambdaQuery(SysTenantDO.class).eq(SysTenantDO::getName, dto.getName()).ne(SysTenantDO::getId,id));
        if (count > 0) {
            throw new CustomException("租户名称已存在，请重新填写");
        }
        Integer version = sysTenantService.getVersion(id);
        SysTenantDO sysTenantDO = ConvertUtil.sourceToTarget(dto, SysTenantDO.class);
        sysTenantDO.setVersion(version);
        sysTenantDO.setEditor(UserUtil.getUserId());
        return sysTenantService.updateById(sysTenantDO);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean deleteTenant(Long id) {
        sysTenantService.deleteTenant(id);
        return true;
    }
}