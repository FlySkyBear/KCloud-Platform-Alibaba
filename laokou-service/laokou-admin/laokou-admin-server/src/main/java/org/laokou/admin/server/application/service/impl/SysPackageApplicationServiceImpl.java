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
import lombok.RequiredArgsConstructor;
import org.laokou.admin.server.application.service.SysPackageApplicationService;
import org.laokou.tenant.dto.SysPackageDTO;
import org.laokou.tenant.qo.SysPackageQo;
import org.laokou.tenant.vo.SysPackageVO;
import org.springframework.stereotype.Service;

/**
 * @author laokou
 */
@Service
@RequiredArgsConstructor
public class SysPackageApplicationServiceImpl implements SysPackageApplicationService {

    @Override
    public Boolean insertPackage(SysPackageDTO dto) {
        return null;
    }

    @Override
    public Boolean updatePackage(SysPackageDTO dto) {
        return null;
    }

    @Override
    public Boolean deletePackage(Long id) {
        return null;
    }

    @Override
    public IPage<SysPackageVO> queryPackagePage(SysPackageQo qo) {
        return null;
    }

    @Override
    public SysPackageVO getPackageById(Long id) {
        return null;
    }

}