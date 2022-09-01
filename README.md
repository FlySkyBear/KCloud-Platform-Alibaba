### 项目备注
项目：KCloud-Platform  
作者：老寇  
语言：Java  
职位：Java工程师  
时间：2020.06.08 ~ 至今  

### 项目介绍
老寇云平台是基于SpringCloud微服务开发、快速构建微服务项目的脚手架、支持Shell、Docker等多种部署方式，实现RBAC权限、其中包含系统管理、系统监控、工作流程、数据分析等几大模块、坚持开源，永不闭源  

### 功能介绍
用户管理  
角色管理  
菜单管理  
部门管理  
日志管理  
字典管理  
消息管理    
认证管理  
搜索管理  
资源管理  
流程定义  
流程任务  
接口文档  
数据监控  
服务监控  
主机监控  

### 设计原则
开闭原则  
单一职责原则  

### 系统架构
![](image/老寇云平台架构图.png)

### 技术体系

#### 四层架构
application <=> 应用层  
domain <=> 领域层  
infrastructure <=> 基础层  
interfaces <=> 表现层  

#### 基础框架
SpringBoot  
SpringCloud Netflix  

#### 技术栈
Shiro  
Mysql  
Redis  
Mybatis-Plus  
Apollo  
Flowable  
ElasticSearch  

#### 服务监控
Skywalking  
Prometheus  
Grafana  
SpringBoot Admin  

#### 一键部署
docker-compose  

#### 持续交付
jenkins  

#### 项目结构
~~~
├── laokou-base
        └── laokou-common -- 公共组件
        └── laokou-dynamic-datasource 多数据源组件
        └── laokou-log -- 日志组件
        └── laokou-security -- 认证组件
├── laokou-cloud
        └── laokou-gateway -- API网关
        └── laokou-monitor -- 服务监控
        └── laokou-register -- 服务治理
├── laokou-parent -- 版本依赖
├── laokou-service
        └── laokou-admin -- 后台管理模块
        └── laokou-auth -- 认证模块
        └── laokou-oauth2 -- 认证模块
        └── laokou-generator -- 数据生成模块
        └── laokou-redis -- 缓存模块
~~~

### 项目配置
安装jdk1.8、mysql5.7、redis、apollo  
创建数据库  
开启apr模式  
修改第三方相关配置  
修改中间件相关配置  

```yaml
  # mysql
  datasource:
    druid:
      # 连接地址
      url: jdbc:mysql://127.0.0.1:3306/kcloud?allowMultiQueries=true&useUnicode=true&characterEncoding=UTF-8&useSSL=false
      # 用户名
      username: root
      # 密码
      password: XXXXXX
  # redis
  redis:
    #数据库索引
    database: 0
    #主机
    host: 127.0.0.1
    #端口
    port: 6379
    #连接超时时长（毫秒）
    timeout: 6000ms 
```

### 多数据源配置
##### 代码引入
```java
@Service
@Transactional(rollbackFor = Exception.class,propagation = Propagation.REQUIRES_NEW)
public class SysUserApplicationServiceImpl implements SysUserApplicationService {

    @Autowired
    private SysUserService sysUserService;

    @Override
    @DataSource("master")
    public IPage<SysUserVO> queryUserPage(SysUserQO qo) {
        IPage<SysUserVO> page = new Page<>(qo.getPageNum(),qo.getPageSize());
        return sysUserService.getUserPage(page,qo);
    }
}
```
##### 配置文件
```yaml
dynamic:
  datasource:
    slave:
      driver-class-name: com.mysql.jdbc.Driver
      url: jdbc:mysql://127.0.0.1:3306/kcloud?useUnicode=true&characterEncoding=UTF-8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=Asia/Shanghai&useSSL=false
      username: root
      password: 123456
```

### 数据权限
##### 代码引入
```java
@Service
@Transactional(rollbackFor = Exception.class,propagation = Propagation.REQUIRES_NEW)
public class SysUserApplicationServiceImpl implements SysUserApplicationService {

    @Autowired
    private SysUserService sysUserService;

    @Override
    @DataFilter(tableAlias = "boot_sys_user")
    public IPage<SysUserVO> queryUserPage(SysUserQO qo) {
        IPage<SysUserVO> page = new Page<>(qo.getPageNum(),qo.getPageSize());
        return sysUserService.getUserPage(page,qo);
    }
}
```
##### 配置文件
```xml
<if test="qo.sqlFilter != null and qo.sqlFilter != ''">
    and ( ${qo.sqlFilter} )
</if>
```

### 服务认证
##### 代码引入
说明：@PreAuthorize 根据请求头携带的ticket判断，ticket有值且等于ticket，则说明已经在网关认证过了直接跳过，否则需要认证（注意：多个权限标识请用逗号,隔开）
```java
@RestController
@AllArgsConstructor
@Api(value = "系统用户API",protocols = "http",tags = "系统用户API")
@RequestMapping("/sys/user/api")
public class SysUserApiController {

    private final SysUserApplicationService sysUserApplicationService;

    @PostMapping("/query")
    @ApiOperation("系统用户>查询")
    @PreAuthorize("sys:user:query")
    public HttpResultUtil<IPage<SysUserVO>> query(@RequestBody SysUserQO qo) {
        return new HttpResultUtil<IPage<SysUserVO>>().ok(sysUserApplicationService.queryUserPage(qo));
    }
}
```

### 演示地址
[http://175.178.69.253](http://175.178.69.253)  
admin/admin123  
test/test123  
laok5/test123  

### 项目截图
<table>
    <tr>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/1.png"/></td>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/2.png"/></td>
    </tr>
    <tr>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/3.png"/></td>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/4.png"/></td>
    </tr>
    <tr>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/5.png"/></td>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/6.png"/></td>
    </tr>
    <tr>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/7.png"/></td>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/8.png"/></td>
    </tr>
    <tr>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/9.png"/></td>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/10.png"/></td>
    </tr>
    <tr>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/11.png"/></td>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/12.png"/></td>
    </tr>
    <tr>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/13.png"/></td>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/14.png"/></td>
    </tr>
    <tr>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/15.png"/></td>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/16.png"/></td>
    </tr>
    <tr>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/17.png"/></td>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/18.png"/></td>
    </tr>
    <tr>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/19.png"/></td>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/20.png"/></td>
    </tr>
    <tr>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/21.png"/></td>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/22.png"/></td>
    </tr>
    <tr>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/23.png"/></td>
        <td><img src="https://gitee.com/tttt_wmh_cn/KCloud-Platform/raw/master/image/24.png"/></td>
    </tr>
</table>

### 对外开放
/sys/login.html?redirect_url=xxx GET  
对外开放登录页面

/sys/auth/api/open/userInfo GET  
对外开放用户信息

### 项目说明
代码不可商用及二次开源，仅供学习使用，否则后果自负  
代码不可商用及二次开源，仅供学习使用，否则后果自负  
代码不可商用及二次开源，仅供学习使用，否则后果自负  

### 参与贡献
欢迎各路英雄好汉参与KCloud-Platform代码贡献，期待您的加入！Fork本仓库 新建Feat_xxx分支提交代码，新建Pull Request

### 加入仓库
[https://gitee.com/tttt_wmh_cn/KCloud-Platform/invite_link?invite=2e7ea5fb2430d51c84ba242d7b4f86f0844265149005366db7993663152babc5ff34e14fcb3734835f318cd36bbddc3a](https://gitee.com/tttt_wmh_cn/KCloud-Platform/invite_link?invite=2e7ea5fb2430d51c84ba242d7b4f86f0844265149005366db7993663152babc5ff34e14fcb3734835f318cd36bbddc3a)

### 开源协议
KCloud-Platform 开源软件遵循 [Apache 2.0 协议](https://www.apache.org/licenses/LICENSE-2.0.html) 请务必保留作者、Copyright信息  
![](https://minio.pigx.vip/oss/1655474288.jpg)

### 致谢
[人人社区](https://www.renren.io)  
[若依社区](http://www.ruoyi.vip)  

### 联系
后端技术交流群 [![加入QQ群](https://img.shields.io/badge/Q群-218686225-blue.svg)](https://qm.qq.com/cgi-bin/qm/qr?k=WFANTXDEjrDw6UxsrRFCv_rQsEu6LTxH&jump_from=webapi)
