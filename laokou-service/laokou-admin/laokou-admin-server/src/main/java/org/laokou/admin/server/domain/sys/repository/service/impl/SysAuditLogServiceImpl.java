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
package org.laokou.admin.server.domain.sys.repository.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.laokou.admin.server.domain.sys.entity.SysAuditLogDO;
import org.laokou.admin.server.domain.sys.repository.mapper.SysAuditLogMapper;
import org.laokou.admin.server.domain.sys.repository.service.SysAuditLogService;
import org.laokou.admin.client.vo.SysAuditLogVO;
import org.laokou.common.core.utils.ConvertUtil;
import org.laokou.admin.client.dto.AuditLogDTO;
import org.springframework.stereotype.Service;
import java.util.*;
/**
 * @author laokou
 * @version 1.0
 * @date 2022/8/26 0026 下午 5:35
 */
@Service
@RequiredArgsConstructor
public class SysAuditLogServiceImpl extends ServiceImpl<SysAuditLogMapper, SysAuditLogDO> implements SysAuditLogService {

    private final SysAuditLogMapper sysAuditLogMapper;

    @Override
    public List<SysAuditLogVO> getAuditLogList(Long businessId,Integer type) {
        return this.sysAuditLogMapper.getAuditLogList(businessId,type);
    }

    @Override
    public Boolean insertAuditLog(AuditLogDTO dto) {
        SysAuditLogDO auditDO = ConvertUtil.sourceToTarget(dto, SysAuditLogDO.class);
        baseMapper.insert(auditDO);
        return true;
    }

}
