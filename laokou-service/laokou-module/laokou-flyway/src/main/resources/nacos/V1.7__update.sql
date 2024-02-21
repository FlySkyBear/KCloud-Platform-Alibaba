UPDATE `config_info` SET `data_id` = 'application-common.yaml', `group_id` = 'LAOKOU_GROUP', `content` = '# spring\nspring:\n  # security\n  security:\n    oauth2:\n      resource-server:\n        enabled: true\n        request-matcher:\n          ignore-patterns:\n            GET:\n              - /**/v3/api-docs/**=laokou-gateway\n              - /v3/api-docs/**=laokou-auth,laokou-admin\n              - /swagger-ui.html=laokou-admin,laokou-gateway,laokou-auth\n              - /swagger-ui/**=laokou-admin,laokou-gateway,laokou-auth\n              - /actuator/**=laokou-admin,laokou-gateway,laokou-auth\n              - /error=laokou-admin,laokou-auth\n              - /v1/tenants/option-list=laokou-admin,laokou-gateway\n              - /v1/tenants/id=laokou-admin,laokou-gateway\n              - /favicon.ico=laokou-gateway\n              - /v1/captchas/{uuid}=laokou-gateway,laokou-auth\n              - /v1/secrets=laokou-gateway,laokou-auth\n              - /graceful-shutdown=laokou-auth\n              - /oauth2/authorize=laokou-gateway\n              - /ws=laokou-gateway\n            DELETE:\n              - /v1/logouts=laokou-admin,laokou-gateway\n  # task\n  task-execution:\n    thread-name-prefix: laokou-ttl-task-\n    pool:\n      core-size: 17\n      keep-alive: 180s\n  cloud:\n    # 解决集成sentinel，openfeign启动报错，官方下个版本修复\n    openfeign:\n      compression:\n        response:\n          enabled: true\n        request:\n          enabled: true\n      # FeignAutoConfiguration、OkHttpFeignLoadBalancerConfiguration、OkHttpClient#getClient、FeignClientProperties、OptionsFactoryBean#getObject\n      # 在BeanFactory调用getBean()时，不是调用getBean，是调用getObject(),因此，getObject()相当于代理了getBean(),而且getObject()对Options初始化，是直接从openfeign.default获取配置值的\n      okhttp:\n        enabled: true\n      circuitbreaker:\n        enabled: true\n      httpclient:\n        enabled: false\n        hc5:\n          enabled: false\n        disable-ssl-validation: true\n      client:\n        config:\n          default:\n            connectTimeout: 120000 #连接超时\n            readTimeout: 120000 #读取超时\n            logger-level: full\n      lazy-attributes-resolution: true\n    # sentinel\n    sentinel:\n      eager: true #开启饥饿加载，直接初始化\n      transport:\n        port: 8769\n        dashboard: sentinel.laokou.org:8972\n\n# actuator\nmanagement:\n  endpoints:\n    web:\n      exposure:\n        include: \"*\"\n  endpoint:\n    health:\n      show-details: always\n\n# springdoc\nspringdoc:\n  swagger-ui:\n    path: /swagger-ui.html\n\n# server\nserver:\n  servlet:\n    encoding:\n      charset: UTF-8\n  undertow:\n    threads:\n      # 设置IO线程数，来执行非阻塞任务，负责多个连接数\n      io: 16\n      # 工作线程数\n      worker: 256\n    # 每块buffer的空间大小\n    buffer-size: 1024\n    # 分配堆外内存\n    direct-buffers: true\n\n# feign\nfeign:\n  sentinel:\n    enabled: true\n    default-rule: default\n    rules:\n      # https://sentinelguard.io/zh-cn/docs/circuit-breaking.html\n      default:\n        - grade: 2 # 异常数策略\n          count: 1 # 异常数模式下为对应的阈值\n          timeWindow: 30 # 熔断时长，单位为 s（经过熔断时长后熔断器会进入探测恢复状态（HALF-OPEN 状态），若接下来的一个请求成功完成（没有错误）则结束熔断，否则会再次被熔断。ERROR_COUNT）\n          statIntervalMs: 1000 # 统计时长（单位为 ms），如 60*1000 代表分钟级（1.8.0 引入）\n          minRequestAmount: 5 # 熔断触发的最小请求数，请求数小于该值时即使异常比率超出阈值也不会熔断', `md5` = '248d439908a418f6f7fd72cc28790b28', `gmt_create` = '2023-01-13 12:16:46', `gmt_modified` = '2024-02-04 13:29:06', `src_user` = 'nacos', `src_ip` = '0:0:0:0:0:0:0:1', `app_name` = '', `tenant_id` = 'a61abd4c-ef96-42a5-99a1-616adee531f3', `c_desc` = '', `c_use` = '', `effect` = '', `type` = 'yaml', `c_schema` = '', `encrypted_data_key` = '' WHERE `id` = 17;
