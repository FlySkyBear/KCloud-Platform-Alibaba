package io.laokou.admin.application.service.impl;

import io.laokou.admin.application.service.FlowableDefinitionApplicationService;
import org.flowable.engine.RepositoryService;
import org.flowable.engine.repository.DeploymentBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.InputStream;

/**
 * @author Kou Shenhai
 * @version 1.0
 * @date 2022/7/6 0006 下午 6:11
 */
@Service
public class FlowableDefinitionApplicationServiceImpl implements FlowableDefinitionApplicationService {

    @Autowired
    private RepositoryService repositoryService;

    @Override
    public Boolean importFile(String name, InputStream in) {
        String processName = name + BPMN_FILE_SUFFIX;
        DeploymentBuilder deploymentBuilder = repositoryService.createDeployment()
                .name(processName)
                .key(name)
                .addInputStream(processName, in);
        deploymentBuilder.deploy();
        return true;
    }

}
