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

package org.laokou.flowable.service;

import lombok.RequiredArgsConstructor;
import org.laokou.common.i18n.dto.Datas;
import org.laokou.common.i18n.dto.Result;
import org.laokou.flowable.api.TasksServiceI;
import org.springframework.stereotype.Service;

/**
 * @author laokou
 */
@Service
@RequiredArgsConstructor
public class TasksServiceImpl implements TasksServiceI {

    @Override
    public Result<Datas<?>> list() {
        return null;
    }

    @Override
    public Result<Boolean> audit() {
        return null;
    }

    @Override
    public Result<Boolean> resolve() {
        return null;
    }

    @Override
    public Result<Boolean> start() {
        return null;
    }

    @Override
    public Result<String> diagram() {
        return null;
    }

    @Override
    public Result<Boolean> transfer() {
        return null;
    }

    @Override
    public Result<Boolean> delegate() {
        return null;
    }

}