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

package org.laokou.flowable.domain.definition;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.laokou.common.i18n.common.exception.FlowException;
import org.laokou.common.i18n.dto.AggregateRoot;

import static lombok.AccessLevel.PRIVATE;

/**
 * @author laokou
 */
@Data
@SuperBuilder
@AllArgsConstructor(access = PRIVATE)
@NoArgsConstructor(access = PRIVATE)
@Schema(name = "Activate", description = "激活")
public class Activate extends AggregateRoot<Long> {

    @Schema(name = "definitionId", description = "定义ID")
    private String definitionId;

    public void checkActivated(boolean activated) {
        if (activated) {
            throw new FlowException("激活失败，流程已激活");
        }
    }

}
