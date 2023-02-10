-- ------------------------------------菜单------------------------------------
CREATE TABLE `boot_sys_menu` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                 `pid` bigint(20) NOT NULL COMMENT '父节点',
                                 `permission` varchar(200) NOT NULL COMMENT '授权(多个用逗号分隔，如：sys:user:list,sys:user:save)',
                                 `type` tinyint(1) unsigned DEFAULT NULL COMMENT '类型   0：菜单   1：按钮',
                                 `name` varchar(100) NOT NULL COMMENT '菜单名称',
                                 `url` varchar(200) NOT NULL COMMENT '路径',
                                 `icon` varchar(50) DEFAULT NULL COMMENT '图标',
                                 `creator` bigint(20) DEFAULT NULL COMMENT '创建人',
                                 `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                 `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                 `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                 `del_flag` tinyint(1) DEFAULT '0' COMMENT '1已删除 0未删除',
                                 `sort` int(11) DEFAULT '1' COMMENT '排序',
                                 `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单';
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1391677542887788567', '1535878154046939137', 'sys:menu:view', '0', '菜单管理', '/sys/menu/view', 'treeTable', '1341620898007281665', '1341620898007281665', '2022-06-12 23:36:44', '2022-06-12 23:36:44', '0', '3000', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1535858679453085698', '1391677542887788567', 'sys:menu:query', '1', '菜单查询', '/sys/menu/api/query', 'search', '1341620898007281665', '1341620898007281665', '2022-06-22 07:09:59', '2022-06-21 23:11:00', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1535859148908949506', '1391677542887788567', 'sys:menu:insert', '1', '菜单新增', '/sys/menu/api/insert', 'plus', '1341620898007281665', NULL, '2022-06-12 21:59:41', '2022-06-12 21:59:41', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1535859326311231489', '1391677542887788567', 'sys:menu:update', '1', '菜单修改', '/sys/menu/api/update', 'edit', '1341620898007281665', '1341620898007281665', '2022-06-20 01:45:22', '2022-06-19 17:46:23', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1535859588534923265', '1391677542887788567', 'sys:menu:delete', '1', '菜单删除', '/sys/menu/api/delete', 'delete', '1341620898007281665', NULL, '2022-06-12 13:40:35', '2022-06-12 13:40:35', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1535878154046939137', '0', 'sys:view', '0', '系统管理', '/sys/view', 'system', '1341620898007281665', '1341620898007281665', '2022-10-26 19:26:21', '2023-01-30 17:34:41', '0', '9000', '1');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1535881096963563522', '1535878154046939137', 'sys:user:view', '0', '用户管理', '/sys/user/view', 'user', '1341620898007281665', '1341620898007281665', '2022-06-16 04:04:56', '2022-06-15 20:05:57', '0', '1000', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1535881356595175426', '1535878154046939137', 'sys:role:view', '0', '角色管理', '/sys/role/view', 'peoples', '1341620898007281665', NULL, '2022-06-12 15:07:05', '2022-06-12 15:07:05', '0', '2000', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1535886982654205953', '1535881356595175426', 'sys:role:query', '1', '角色查询', '/sys/role/api/query', 'search', '1341620898007281665', '1341620898007281665', '2022-06-22 07:10:10', '2022-06-21 23:11:10', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1535887129341599746', '1535881356595175426', 'sys:role:insert', '1', '角色新增', '/sys/role/api/insert', 'plus', '1341620898007281665', NULL, '2022-06-12 15:30:02', '2022-06-12 15:30:02', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1535887276649750530', '1535881356595175426', 'sys:role:update', '1', '角色修改', '/sys/role/api/update', 'edit', '1341620898007281665', '1341620898007281665', '2022-06-20 01:45:31', '2022-06-19 17:46:31', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1535887450809835521', '1535881356595175426', 'sys:role:delete', '1', '角色删除', '/sys/role/api/delete', 'delete', '1341620898007281665', NULL, '2022-06-12 15:31:18', '2022-06-12 15:31:18', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1535887779873955841', '1535881096963563522', 'sys:user:query', '1', '用户查询', '/sys/user/api/query', 'search', '1341620898007281665', '1341620898007281665', '2022-06-22 07:10:19', '2022-06-21 23:11:20', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1535887940687765505', '1535881096963563522', 'sys:user:insert', '1', '用户新增', '/sys/user/api/insert', 'plus', '1341620898007281665', '1341620898007281665', '2022-07-23 15:34:06', '2022-07-23 15:34:06', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1535888146045083649', '1535881096963563522', 'sys:user:update', '1', '用户修改', '/sys/user/api/update', 'edit', '1341620898007281665', '1341620898007281665', '2022-06-20 01:45:37', '2022-06-19 17:46:37', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1535888341252186114', '1535881096963563522', 'sys:user:delete', '1', '用户删除', '/sys/user/api/delete', 'delete', '1341620898007281665', NULL, '2022-06-12 23:37:47', '2022-06-12 23:37:47', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1537444981390794754', '0', 'monitor:view', '0', '系统监控', '/monitor/view', 'monitor', '1341620898007281665', '1341620898007281665', '2022-10-26 19:26:30', '2022-10-26 19:26:30', '0', '8000', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1538469199368712193', '1537444981390794754', 'monitor:admin:view', '0', '服务监控', 'http://192.168.62.1:5000/monitor', 'server', '1341620898007281665', '1341620898007281665', '2022-07-17 17:39:45', '2023-01-12 07:36:25', '0', '3000', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1539250224424394753', '1535878154046939137', 'sys:log:view', '0', '日志管理', '/sys/log/view', 'log', '1341620898007281665', '1341620898007281665', '2022-08-23 12:04:04', '2022-08-23 12:04:04', '0', '500', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1539251440843857922', '1539250224424394753', 'sys:log:operate:view', '0', '操作日志', '/sys/log/operate/view', 'form', '1341620898007281665', '1341620898007281665', '2022-06-24 06:45:42', '2022-06-23 23:13:09', '0', '200', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1539265093588545538', '1539251440843857922', 'sys:log:operate:query', '1', '查询日志', '/sys/log/api/operate/query', 'search', '1341620898007281665', '1341620898007281665', '2022-06-24 06:46:11', '2022-06-23 23:13:38', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1539396453854629890', '1539250224424394753', 'sys:log:login:view', '0', '登录日志', '/sys/log/login/view', 'logininfor', '1341620898007281665', '1341620898007281665', '2022-06-24 06:46:01', '2022-06-23 23:13:28', '0', '100', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1539402478934646785', '1539396453854629890', 'sys:log:login:query', '1', '查询日志', '/sys/log/api/login/query', 'search', '1341620898007281665', '1341620898007281665', '2022-06-24 06:45:53', '2022-06-23 23:13:20', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1539615028590673921', '1535881096963563522', 'sys:user:password', '1', '重置密码', '/sys/user/api/password', 'key', '1341620898007281665', NULL, '2022-06-23 06:22:41', '2022-06-23 06:22:41', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1539989085181972481', '1535878154046939137', 'sys:dict:view', '0', '字典管理', '/sys/dict/view', 'dict', '1341620898007281665', '1341620898007281665', '2022-06-24 07:01:55', '2022-06-23 23:29:23', '0', '900', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1540000886082768897', '1539989085181972481', 'sys:dict:query', '1', '字典查询', '/sys/dict/api/query', 'search', '1341620898007281665', '1341620898007281665', '2022-06-24 07:30:24', '2022-06-23 23:57:51', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1540001496240754689', '1539989085181972481', 'sys:dict:insert', '1', '字典新增', '/sys/dict/api/insert', 'plus', '1341620898007281665', '1341620898007281665', '2022-06-24 07:32:06', '2022-06-23 23:59:33', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1540001809446211586', '1539989085181972481', 'sys:dict:update', '1', '字典修改', '/sys/dict/api/update', 'edit', '1341620898007281665', NULL, '2022-06-24 00:00:18', '2022-06-24 00:00:18', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1540001992288505857', '1539989085181972481', 'sys:dict:delete', '1', '字典删除', '/sys/dict/api/delete', 'delete', '1341620898007281665', '1341620898007281665', '2022-06-24 07:33:59', '2022-06-24 00:01:26', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1545035717690912769', '0', 'workflow:view', '0', '工作流程', '/workflow/view', 'tree', '1341620898007281665', '1341620898007281665', '2022-10-26 19:26:25', '2022-10-26 19:26:25', '0', '7000', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1545036486288732162', '1545035717690912769', 'workflow:definition:view', '0', '流程定义', '/workflow/definition/view', 'guide', '1341620898007281665', '1341620898007281665', '2022-07-07 21:27:18', '2022-07-07 21:27:18', '0', '5000', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1545037580289044482', '1560528267620061186', 'sys:resource:audit:view', '0', '资源审批', '/sys/resource/audit/view', 'timeRange', '1341620898007281665', '1341620898007281665', '2022-07-07 21:34:30', '2022-12-09 20:29:45', '0', '99', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1545442687073681410', '1545036486288732162', 'workflow:definition:insert', '1', '流程新增', '/workflow/definition/api/insert', 'plus', '1537114827246292994', NULL, '2022-07-09 00:20:24', '2022-07-09 00:20:24', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1545442932918616065', '1545036486288732162', 'workflow:definition:query', '1', '流程查询', '/workflow/definition/api/query', 'search', '1537114827246292994', NULL, '2022-08-25 16:31:34', '2022-08-25 16:31:34', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1545443357407346689', '1545036486288732162', 'workflow:definition:activate', '1', '流程激活', '/workflow/definition/api/activate', 'play-circle', '1537114827246292994', NULL, '2022-07-09 00:23:04', '2022-07-09 00:23:04', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1545443597204094977', '1545036486288732162', 'workflow:definition:suspend', '1', '流程挂起', '/workflow/definition/api/suspend', 'pause-circle', '1537114827246292994', NULL, '2022-07-09 00:24:01', '2022-07-09 00:24:01', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1545443828113113090', '1545036486288732162', 'workflow:definition:delete', '1', '流程删除', '/workflow/definition/api/delete', 'delete', '1537114827246292994', NULL, '2022-07-09 00:24:56', '2022-07-09 00:24:56', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1545444197799067650', '1545036486288732162', 'workflow:definition:diagram', '1', '流程查看', '/workflow/definition/api/diagram', 'eyeOpen', '1537114827246292994', '1341620898007281665', '2022-08-27 09:16:34', '2022-12-09 21:05:54', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1545444853809184770', '1545037580289044482', 'workflow:task:resource:query', '1', '任务查询', '/workflow/task/api/resource/query', 'search', '1537114827246292994', '1341620898007281665', '2022-08-25 13:27:40', '2022-12-09 20:32:50', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1545445208781520897', '1545037580289044482', 'workflow:task:resource:audit', '1', '任务审批', '/workflow/task/api/resource/audit', 'audit', '1537114827246292994', '1341620898007281665', '2022-08-25 13:27:25', '2022-12-09 20:36:38', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1547109188256260097', '1535878154046939137', 'sys:api:view', '0', '接口文档', 'http://192.168.62.1:5555/swagger-ui.html', 'row', '1341620898007281665', '1341620898007281665', '2022-07-17 17:04:18', '2023-01-12 07:37:02', '0', '400', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1549758203624480770', '1535878154046939137', 'sys:message:view', '0', '消息管理', '/sys/message/view', 'message', '1341620898007281665', NULL, '2022-07-20 22:08:44', '2022-07-20 22:08:44', '0', '800', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1550116610713944065', '1549758203624480770', 'sys:message:query', '1', '消息查询', '/sys/message/api/query', 'search', '1341620898007281665', NULL, '2022-08-25 16:32:35', '2022-08-25 16:32:35', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1550117239402364930', '1549758203624480770', 'sys:message:insert', '1', '消息新增', '/sys/message/api/insert', 'plus', '1341620898007281665', '1341620898007281665', '2022-08-29 19:19:22', '2022-08-29 19:19:22', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1550117550498086913', '1549758203624480770', 'sys:message:detail', '1', '消息查看', '/sys/message/api/detail', 'eyeOpen', '1341620898007281665', NULL, '2022-07-21 21:56:38', '2022-07-21 21:56:38', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1551957039155638274', '1535878154046939137', 'sys:dept:view', '0', '部门管理', '/sys/dept/view', 'team', '1341620898007281665', NULL, '2022-07-26 23:46:07', '2022-07-26 23:46:07', '0', '999', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1552304553893392386', '1551957039155638274', 'sys:dept:query', '1', '部门查询', '/sys/dept/api/query', 'search', '1341620898007281665', NULL, '2022-08-25 16:32:48', '2022-08-25 16:32:48', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1552304713121755138', '1551957039155638274', 'sys:dept:insert', '1', '部门新增', '/sys/dept/api/insert', 'plus', '1341620898007281665', NULL, '2022-07-27 22:47:39', '2022-07-27 22:47:39', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1552304865207218177', '1551957039155638274', 'sys:dept:update', '1', '部门修改', '/sys/dept/api/update', 'edit', '1341620898007281665', NULL, '2022-07-27 22:48:15', '2022-07-27 22:48:15', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1552305016701284353', '1551957039155638274', 'sys:dept:delete', '1', '部门删除', '/sys/dept/api/delete', 'delete', '1341620898007281665', NULL, '2022-07-27 22:48:51', '2022-07-27 22:48:51', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1552525480564416514', '1537444981390794754', 'sys:monitor:cache', '0', '缓存监控', '/monitor/cache/view', 'redis', '1341620898007281665', '1341620898007281665', '2022-07-28 23:30:24', '2022-07-28 23:30:25', '0', '2000', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1552526314178142209', '1537444981390794754', 'sys:monitor:server', '0', '主机监控', '/monitor/server/view', 'hdd', '1341620898007281665', '1341620898007281665', '2022-07-28 23:30:04', '2022-07-28 23:30:05', '0', '1000', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1560528267620061186', '1535878154046939137', 'sys:resource:view', '0', '资源管理', '/sys/resource/view', 'folder', '1341620898007281665', '1341620898007281665', '2022-08-23 12:03:22', '2022-08-23 12:03:22', '0', '510', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1560529603300364290', '1560528267620061186', 'sys:resource:audio:view', '0', '音频管理', '/sys/resource/audio/view', 'customer-service', '1341620898007281665', '1341620898007281665', '2022-08-19 15:31:27', '2022-08-19 15:31:28', '0', '100', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1560530192751071234', '1560528267620061186', 'sys:resource:video:view', '0', '视频管理', '/sys/resource/video/view', 'video-camera', '1341620898007281665', NULL, '2022-08-19 15:32:46', '2022-08-19 15:32:46', '0', '200', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1560530418819862529', '1560528267620061186', 'sys:resource:image:view', '0', '图片管理', '/sys/resource/image/view', 'picture', '1341620898007281665', '1341620898007281665', '2022-08-19 15:34:18', '2022-08-19 15:34:18', '0', '300', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1562969136453316610', '1560529603300364290', 'sys:resource:audio:query', '1', '音频查询', '/sys/resource/audio/api/query', 'search', '1537114827246292994', NULL, '2022-08-26 09:04:15', '2022-08-26 09:04:15', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1562969406365167618', '1560529603300364290', 'sys:resource:audio:insert', '1', '音频新增', '/sys/resource/audio/api/insert', 'plus', '1537114827246292994', NULL, '2022-08-26 09:05:20', '2022-08-26 09:05:20', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1562969780283174914', '1560529603300364290', 'sys:resource:audio:update', '1', '音频修改', '/sys/resource/audio/api/update', 'edit', '1537114827246292994', NULL, '2022-08-26 09:06:49', '2022-08-26 09:06:49', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1562970001914392577', '1560529603300364290', 'sys:resource:audio:delete', '1', '音频删除', '/sys/resource/audio/api/delete', 'delete', '1537114827246292994', NULL, '2022-08-26 09:07:42', '2022-08-26 09:07:42', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1562970341317472258', '1560529603300364290', 'sys:resource:audio:diagram', '1', '音频流程图', '/sys/resource/audio/api/diagram', 'gold', '1537114827246292994', '1537114827246292994', '2022-08-26 09:18:57', '2022-08-26 09:18:58', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1562971590226014209', '1560530418819862529', 'sys:resource:image:query', '1', '图片查询', '/sys/resource/image/api/query', 'search', '1537114827246292994', NULL, '2022-08-26 09:14:00', '2022-08-26 09:14:00', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1562971829607526401', '1560530418819862529', 'sys:resource:image:insert', '1', '图片新增', '/sys/resource/image/api/insert', 'plus', '1537114827246292994', NULL, '2022-08-26 09:14:57', '2022-08-26 09:14:57', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1562972243434336257', '1560530418819862529', 'sys:resource:image:update', '1', '图片修改', '/sys/resource/image/api/update', 'edit', '1537114827246292994', NULL, '2022-08-26 09:16:36', '2022-08-26 09:16:36', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1562972411969859586', '1560530418819862529', 'sys:resource:image:delete', '1', '图片删除', '/sys/resource/image/api/delete', 'delete', '1537114827246292994', NULL, '2022-08-26 09:17:16', '2022-08-26 09:17:16', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1562972785472630785', '1560530418819862529', 'sys:resource:image:diagram', '1', '图片流程图', '/sys/resource/image/api/diagram', 'gold', '1537114827246292994', NULL, '2022-08-26 09:18:45', '2022-08-26 09:18:45', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1562973157121519617', '1560530192751071234', 'sys:resource:video:query', '1', '视频查询', '/sys/resource/video/api/query', 'search', '1537114827246292994', NULL, '2022-08-26 09:20:14', '2022-08-26 09:20:14', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1562973326504292353', '1560530192751071234', 'sys:resource:video:insert', '1', '视频新增', '/sys/resource/video/api/insert', 'plus', '1537114827246292994', NULL, '2022-08-26 09:20:54', '2022-08-26 09:20:54', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1562973502765723650', '1560530192751071234', 'sys:resource:video:update', '1', '视频修改', '/sys/resource/video/api/update', 'edit', '1537114827246292994', NULL, '2022-08-26 09:21:36', '2022-08-26 09:21:36', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1562973726783500290', '1560530192751071234', 'sys:resource:video:delete', '1', '视频删除', '/sys/resource/video/api/delete', 'delete', '1537114827246292994', NULL, '2022-08-26 09:22:30', '2022-08-26 09:22:30', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1562973963560349698', '1560530192751071234', 'sys:resource:video:diagram', '1', '视频流程图', '/sys/resource/video/api/diagram', 'gold', '1537114827246292994', NULL, '2022-08-26 09:23:26', '2022-08-26 09:23:26', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1563103435471122433', '1560529603300364290', 'sys:resource:audio:auditLog', '1', '音频-审批日志', '/sys/resource/audio/api/auditLog', 'file', '1341620898007281665', '1341620898007281665', '2022-08-27 09:08:26', '2022-12-10 16:33:19', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1563104611147116545', '1560530192751071234', 'sys:resource:video:auditLog', '1', '视频-审批日志', '/sys/resource/video/api/auditLog', 'file', '1341620898007281665', '1341620898007281665', '2022-08-27 09:08:37', '2022-12-10 16:32:11', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1563104888692600833', '1560530418819862529', 'sys:resource:image:auditLog', '1', '图片-审批日志', '/sys/resource/image/api/auditLog', 'file', '1341620898007281665', '1341620898007281665', '2022-08-27 09:08:46', '2022-12-10 16:32:30', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1563333871266885634', '1560530418819862529', 'sys:resource:image:detail', '1', '图片查看', '/sys/resource/image/api/detail', 'eyeOpen', '1341620898007281665', NULL, '2022-08-27 09:16:33', '2022-08-27 09:16:33', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1563334139421323265', '1560530192751071234', 'sys:resource:video:detail', '1', '视频查看', '/sys/resource/video/api/detail', 'eyeOpen', '1341620898007281665', NULL, '2022-08-27 09:14:39', '2022-08-27 09:14:39', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1563334404471975938', '1560529603300364290', 'sys:resource:audio:detail', '1', '音频查看', '/sys/resource/audio/api/detail', 'eyeOpen', '1341620898007281665', NULL, '2022-08-27 09:16:31', '2022-08-27 09:16:31', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1564211460488826881', '1560529603300364290', 'sys:resource:audio:complete:syncIndex', '1', '音频-全量同步', '/sys/resource/audio/api/complete/syncIndex', 'undo', '1341620898007281665', '1341620898007281665', '2022-08-29 19:20:48', '2023-01-17 15:56:33', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1564214128678539265', '1560530418819862529', 'sys:resource:image:complete:syncIndex', '1', '图片-全量同步', '/sys/resource/image/api/complete/syncIndex', 'undo', '1341620898007281665', '1341620898007281665', '2022-08-29 19:31:25', '2023-01-17 15:52:55', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1564214393074880513', '1560530192751071234', 'sys:resource:video:complete:syncIndex', '1', '视频-全量同步', '/sys/resource/video/api/complete/syncIndex', 'undo', '1341620898007281665', '1341620898007281665', '2022-08-29 19:32:28', '2023-01-17 15:54:19', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1564227439767920641', '1535878154046939137', 'sys:search:view', '0', '搜索管理', '/sys/search/view', 'ie', '1341620898007281665', '1341620898007281665', '2022-08-29 20:26:22', '2022-08-29 20:26:22', '0', '700', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1564228322215927810', '1564227439767920641', 'sys:search:resource:view', '0', '资源搜索', '/sys/search/resource/view', 'loading', '1341620898007281665', NULL, '2022-08-29 20:27:49', '2022-08-29 20:27:49', '0', '100', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1564996817056710657', '1564228322215927810', 'sys:search:resource:query', '1', '搜索资源', '/sys/search/api/resource', 'search', '1341620898007281665', NULL, '2022-08-31 23:21:32', '2022-08-31 23:21:32', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1564996817056710661', '1545037580289044482', 'workflow:task:resource:detail', '1', '任务详情', '/workflow/task/api/resource/detail', 'eye', '1341620898007281665', '1341620898007281665', '2022-12-10 12:44:49', '2022-12-10 12:45:27', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1564996817056710662', '1560530418819862529', 'sys:resource:image:increment:syncIndex', '1', '图片-增量同步', '/sys/resource/image/api/increment/syncIndex', 'redo', '1341620898007281665', '1341620898007281665', '2022-12-10 16:28:20', '2023-01-17 16:04:16', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1564996817056710664', '1560529603300364290', 'sys:resource:audio:increment:syncIndex', '1', '音频-增量同步', '/sys/resource/audio/api/increment/syncIndex', 'redo', '1341620898007281665', '1341620898007281665', '2022-12-10 16:33:50', '2023-01-17 16:03:32', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1564996817056710665', '1539251440843857922', 'sys:log:operate:export', '1', '操作-导出日志', '/sys/log/api/operate/export', 'export', '1341620898007281665', '1341620898007281665', '2022-12-11 11:32:53', '2022-12-11 11:50:57', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1564996817056710666', '1539396453854629890', 'sys:log:login:export', '1', '登录-导出日志', '/sys/log/api/login/export', 'export', '1341620898007281665', '1341620898007281665', '2022-12-11 11:50:45', '2022-12-11 11:52:03', '0', '10', '0');
INSERT INTO `boot_sys_menu` (`id`, `pid`, `permission`, `type`, `name`, `url`, `icon`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `version`) VALUES ('1564996817056710668', '1560530192751071234', 'sys:resource:video:increment:syncIndex', '1', '视频-增量同步', '/sys/resource/video/api/increment/syncIndex', 'redo', '1341620898007281665', '1341620898007281665', '2022-12-12 21:05:31', '2023-01-17 16:03:49', '0', '10', '0');
-- ------------------------------------菜单------------------------------------

-- ------------------------------------中间表------------------------------------
CREATE TABLE `boot_sys_role_dept` (
                                      `role_id` bigint(20) NOT NULL COMMENT '角色id',
                                      `dept_id` bigint(20) NOT NULL COMMENT '部门id',
                                      PRIMARY KEY (`role_id`,`dept_id`),
                                      KEY `role_id` (`role_id`) USING BTREE,
                                      KEY `menu_id` (`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-部门';
CREATE TABLE `boot_sys_role_menu` (
                                      `role_id` bigint(20) NOT NULL COMMENT '角色id',
                                      `menu_id` bigint(20) NOT NULL COMMENT '菜单id',
                                      PRIMARY KEY (`role_id`,`menu_id`),
                                      KEY `role_id` (`role_id`) USING BTREE,
                                      KEY `menu_id` (`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';
CREATE TABLE `boot_sys_user_role` (
                                      `user_id` bigint(20) NOT NULL COMMENT '用户id',
                                      `role_id` bigint(20) NOT NULL COMMENT '角色id',
                                      PRIMARY KEY (`user_id`,`role_id`),
                                      KEY `user_id` (`user_id`) USING BTREE,
                                      KEY `role_id` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';
-- ------------------------------------中间表------------------------------------

-- ------------------------------------日志------------------------------------
CREATE TABLE `boot_sys_audit_log` (
                                      `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                      `business_id` bigint(20) DEFAULT NULL COMMENT '资源id',
                                      `audit_name` varchar(50) DEFAULT NULL COMMENT '审批人',
                                      `audit_date` datetime DEFAULT NULL COMMENT '审批时间',
                                      `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                      `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                                      `creator` bigint(20) DEFAULT NULL COMMENT '创建人',
                                      `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                      `del_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1已删除 0未删除',
                                      `audit_status` tinyint(1) DEFAULT NULL COMMENT '0审批驳回 1审批通过',
                                      `comment` varchar(200) DEFAULT NULL COMMENT '审批意见',
                                      `type` tinyint(1) DEFAULT '0' COMMENT '0 资源',
                                      `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
                                      PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='审批日志';
CREATE TABLE `boot_sys_login_log` (
                                      `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                      `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
                                      `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                      `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                      `del_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1已删除 0未删除',
                                      `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                      `login_name` varchar(200) DEFAULT NULL COMMENT '登录用户',
                                      `request_ip` varchar(50) DEFAULT NULL COMMENT 'IP地址',
                                      `request_address` varchar(200) DEFAULT NULL COMMENT '归属地',
                                      `browser` varchar(50) DEFAULT NULL COMMENT '浏览器版本',
                                      `os` varchar(50) DEFAULT NULL COMMENT '操作系统',
                                      `request_status` tinyint(1) unsigned NOT NULL COMMENT '状态  0：成功   1：失败',
                                      `msg` varchar(500) DEFAULT NULL COMMENT '提示信息',
                                      `login_type` varchar(50) DEFAULT NULL COMMENT '登录类型',
                                      `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
                                      PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='登录日志';
CREATE TABLE `boot_sys_operate_log` (
                                        `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                        `module` varchar(32) DEFAULT NULL COMMENT '模块名称，如：系统菜单',
                                        `operation` varchar(50) DEFAULT NULL COMMENT '操作名称',
                                        `request_uri` varchar(200) DEFAULT NULL COMMENT '请求URI',
                                        `method_name` varchar(1000) DEFAULT NULL COMMENT '方法名称',
                                        `request_method` varchar(20) DEFAULT NULL COMMENT '请求方式',
                                        `request_params` text COMMENT '请求参数',
                                        `user_agent` varchar(500) DEFAULT NULL COMMENT '浏览器版本',
                                        `request_ip` varchar(50) DEFAULT NULL COMMENT 'IP地址',
                                        `request_address` varchar(200) DEFAULT NULL COMMENT '归属地',
                                        `request_status` tinyint(1) unsigned NOT NULL COMMENT '状态  0：成功   1：失败',
                                        `operator` varchar(50) DEFAULT NULL COMMENT '操作人',
                                        `error_msg` text COMMENT '错误信息',
                                        `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
                                        `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                        `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                        `del_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1已删除 0未删除',
                                        `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                        `dept_id` bigint(20) DEFAULT NULL COMMENT '部门id',
                                        `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
                                        PRIMARY KEY (`id`),
                                        KEY `idx_module` (`module`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='操作日志';
-- ------------------------------------日志------------------------------------

-- ------------------------------------字典------------------------------------
CREATE TABLE `boot_sys_dict` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                 `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
                                 `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                 `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                 `del_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1已删除 0未删除',
                                 `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                 `dict_value` text COMMENT '值',
                                 `dict_label` varchar(100) DEFAULT NULL COMMENT '标签',
                                 `type` varchar(100) DEFAULT NULL COMMENT '类型',
                                 `remark` varchar(500) DEFAULT NULL COMMENT '备注',
                                 `sort` int(11) DEFAULT '1' COMMENT '排序',
                                 `dept_id` bigint(20) DEFAULT NULL COMMENT '部门id',
                                 `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='字典';
-- ------------------------------------字典------------------------------------

-- ------------------------------------部门------------------------------------
CREATE TABLE `boot_sys_dept` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                 `pid` bigint(20) NOT NULL COMMENT '父节点',
                                 `name` varchar(100) DEFAULT NULL COMMENT '名称',
                                 `sort` int(11) DEFAULT '1' COMMENT '排序',
                                 `creator` bigint(20) DEFAULT NULL COMMENT '创建人',
                                 `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                 `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                 `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                 `del_flag` tinyint(1) DEFAULT '0' COMMENT '1已删除 0未删除',
                                 `path` varchar(2000) DEFAULT NULL COMMENT '路径',
                                 `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='部门';
INSERT INTO `boot_sys_dept` (`id`, `pid`, `name`, `sort`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `path`, `version`) VALUES ('1535858679453085698', '1535887940687765505', '广州分公司', '666', '1341620898007281665', '1341620898007281665', '2022-11-02 22:35:30', '2022-11-02 22:35:30', '0', '0/1535858679453085698', '0');
INSERT INTO `boot_sys_dept` (`id`, `pid`, `name`, `sort`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `path`, `version`) VALUES ('1535881356595175426', '1535887940687765505', '长沙分公司', '111', '1341620898007281665', '1341620898007281665', '2022-11-02 22:35:30', '2022-11-02 22:35:30', '0', '0/1535881356595175426', '0');
INSERT INTO `boot_sys_dept` (`id`, `pid`, `name`, `sort`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `path`, `version`) VALUES ('1535887129341599746', '1535887940687765505', '深圳分公司', '888', '1341620898007281665', '1341620898007281665', '2022-11-02 22:35:30', '2023-01-30 22:01:13', '0', '0/1535887940687765505/1535887129341599746', '1');
INSERT INTO `boot_sys_dept` (`id`, `pid`, `name`, `sort`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `path`, `version`) VALUES ('1535887940687765505', '0', '老寇云集团', '1000', '1341620898007281665', '1341620898007281665', '2022-11-16 12:12:55', '2022-11-16 12:12:56', '0', '0/1535887940687765505', '0');
INSERT INTO `boot_sys_dept` (`id`, `pid`, `name`, `sort`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `path`, `version`) VALUES ('1584488175088373761', '1535881356595175426', '研发部', '20', '1341620898007281665', '1341620898007281665', '2022-11-02 22:35:30', '2022-11-02 22:35:30', '0', '0/1584488175088373761', '0');
INSERT INTO `boot_sys_dept` (`id`, `pid`, `name`, `sort`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `path`, `version`) VALUES ('1584488411756171265', '1535881356595175426', '市场部', '10', '1341620898007281665', '1341620898007281665', '2022-11-02 22:35:30', '2022-11-02 22:35:30', '0', '0/1584488411756171265', '0');
INSERT INTO `boot_sys_dept` (`id`, `pid`, `name`, `sort`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `path`, `version`) VALUES ('1584488411756171266', '1584488175088373761', '开发组', '5', '1341620898007281665', '1341620898007281665', '2022-11-02 22:35:30', '2022-12-28 17:20:25', '0', '0/1584488175088373761/1584488411756171266', '0');
-- ------------------------------------部门------------------------------------

-- ------------------------------------消息------------------------------------
CREATE TABLE `boot_sys_message` (
                                    `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                    `title` varchar(400) DEFAULT NULL COMMENT '标题',
                                    `content` longtext COMMENT '内容',
                                    `send_channel` tinyint(10) DEFAULT NULL COMMENT '发送渠道：0平台 1微信公众号 2邮箱',
                                    `creator` bigint(20) DEFAULT NULL COMMENT '创建人',
                                    `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                    `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                    `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                    `del_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1已删除 0未删除',
                                    `dept_id` bigint(20) DEFAULT NULL COMMENT '部门id',
                                    `type` tinyint(2) DEFAULT '0' COMMENT '0通知 1提醒',
                                    `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息';
CREATE TABLE `boot_sys_message_detail` (
                                           `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                           `message_id` bigint(20) DEFAULT NULL COMMENT '消息id',
                                           `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
                                           `creator` bigint(20) DEFAULT NULL COMMENT '创建人',
                                           `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                           `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                           `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                                           `del_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1已删除 0未删除',
                                           `read_flag` tinyint(1) DEFAULT '0' COMMENT '是否已读 0未读 1已读',
                                           `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
                                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息详情';
-- ------------------------------------消息------------------------------------

-- ------------------------------------对象存储------------------------------------
CREATE TABLE `boot_sys_oss` (
                                `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                `creator` bigint(20) DEFAULT NULL COMMENT '创建人',
                                `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                `del_flag` tinyint(1) DEFAULT '0' COMMENT '1已删除 0未删除',
                                `name` varchar(20) DEFAULT NULL COMMENT '名称',
                                `endpoint` varchar(200) DEFAULT NULL COMMENT '终端',
                                `region` varchar(10) DEFAULT NULL COMMENT '区域',
                                `access_key` varchar(50) DEFAULT NULL COMMENT '访问密钥',
                                `secret_key` varchar(100) DEFAULT NULL COMMENT '用户密钥',
                                `bucket_name` varchar(20) DEFAULT NULL COMMENT '桶名',
                                `path_style_access_enabled` tinyint(1) DEFAULT NULL COMMENT '路径样式访问 1启动 0不启用',
                                `status` tinyint(1) DEFAULT NULL COMMENT '状态 1已启用 0未启用',
                                `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='对象存储';
INSERT INTO `boot_sys_oss` (`id`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `name`, `endpoint`, `region`, `access_key`, `secret_key`, `bucket_name`, `path_style_access_enabled`, `status`, `version`) VALUES ('1', '1341620898007281665', '1341620898007281665', '2023-01-05 16:36:37', '2023-01-05 16:36:37', '0', 'Minio OSS', 'http://localhost:9000', 'Shenzhen', 'minioadmin', 'minioadmin', 'laokou-minio-bucket', '1', '0', '0');
CREATE TABLE `boot_sys_oss_log` (
                                    `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                    `creator` bigint(20) DEFAULT NULL COMMENT '创建人',
                                    `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                    `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                    `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                    `del_flag` tinyint(1) DEFAULT '0' COMMENT '1已删除 0未删除',
                                    `md5` varchar(100) DEFAULT NULL COMMENT 'md5标识',
                                    `url` varchar(200) DEFAULT NULL COMMENT '路径',
                                    `file_name` varchar(100) DEFAULT NULL COMMENT '文件名称',
                                    `file_size` bigint(20) DEFAULT NULL COMMENT '文件大小',
                                    `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='存储日志';
-- ------------------------------------对象存储------------------------------------

-- ------------------------------------资源------------------------------------
CREATE TABLE `boot_sys_resource` (
                                     `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                     `title` varchar(200) NOT NULL COMMENT '名称',
                                     `url` varchar(500) NOT NULL COMMENT '地址',
                                     `code` varchar(10) NOT NULL COMMENT '类型 audio音频 video视频  image图片 text文本 other其他',
                                     `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                     `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                                     `remark` text NOT NULL COMMENT '备注',
                                     `creator` bigint(20) DEFAULT NULL COMMENT '创建人',
                                     `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                     `del_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1已删除 0未删除',
                                     `tags` longtext COMMENT '标签',
                                     `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
                                     PRIMARY KEY (`id`,`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='资源'
PARTITION BY RANGE ( UNIX_TIMESTAMP(`create_date`))
(PARTITION lk202110 VALUES LESS THAN (1633017600) ENGINE = InnoDB,
 PARTITION lk202111 VALUES LESS THAN (1635696000) ENGINE = InnoDB,
 PARTITION lk202112 VALUES LESS THAN (1638288000) ENGINE = InnoDB,
 PARTITION lk202203 VALUES LESS THAN (1646064000) ENGINE = InnoDB,
 PARTITION lk202204 VALUES LESS THAN (1648742400) ENGINE = InnoDB,
 PARTITION lk202205 VALUES LESS THAN (1651334400) ENGINE = InnoDB,
 PARTITION lk202206 VALUES LESS THAN (1654012800) ENGINE = InnoDB,
 PARTITION lk202207 VALUES LESS THAN (1656604800) ENGINE = InnoDB,
 PARTITION lk202208 VALUES LESS THAN (1659283200) ENGINE = InnoDB,
 PARTITION lk202209 VALUES LESS THAN (1661961600) ENGINE = InnoDB,
 PARTITION lk202210 VALUES LESS THAN (1664553600) ENGINE = InnoDB,
 PARTITION lk202211 VALUES LESS THAN (1667232000) ENGINE = InnoDB,
 PARTITION lk202212 VALUES LESS THAN (1669824000) ENGINE = InnoDB);
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1429355654328815617', '大籽 - 白月光与朱砂痣.mp3', 'http://175.178.69.253:81/upload/node4/f906b6a282564c559632a1beeb449f5f.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:43:30', '《白月光与朱砂痣》是由大籽、嘿人李逵演唱的歌曲，收录于2021年1月1日发行的《白月光与朱砂痣》专辑。', '1341620898007281665', '1341620898007281665', '0', '大籽', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1429355954762616834', '王胜男_花粥 - 出山.mp3', 'http://175.178.69.253:81/upload/node1/ebd577c32a8d448c8349af779d36110a.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:39:43', '《出山》是由花粥作词、作曲，王胜男和花粥演唱的歌曲，正式发行于2018年9月28日。背景伴奏原曲是Bachbeats创作的《Super Love》。', '1341620898007281665', '1341620898007281665', '0', '王胜男,花粥', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1429355987293638657', '艾辰 - 错位时空.mp3', 'http://175.178.69.253:81/upload/node2/a673b6697e4142e5b24e5347b2b32fe8.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:39:50', '《错位时空》是周仁作词，张博文作曲，艾辰演唱的歌曲，由网易云音乐飓风工作室出品，于2021年1月1日发行。', '1341620898007281665', '1341620898007281665', '0', '艾辰', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1429356225781764097', '周杰伦 - 告白气球.mp3', 'http://175.178.69.253:81/upload/node4/33e764e16a3f43dfa720967f8a95b9d8.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:40:04', '《告白气球》是周杰伦演唱的一首歌曲，由方文山作词，周杰伦作曲，林迈可编曲，收录于周杰伦2016年6月24日发行的录音室专辑《周杰伦的床边故事》中。\n2017年1月，这首歌曲获得Billboard Radio China 2016年度十大金曲奖；同年，该歌曲入围了第28届金曲奖最佳年度歌曲奖。', '1341620898007281665', '1341620898007281665', '0', '周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1429356501397868545', '丸子呦 - 广寒宫.mp3', 'http://175.178.69.253:81/upload/node4/c62266fb46004a96954f1c88e57999ea.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:39:56', '《广寒宫》是2019年4月30日丸子哟发布演唱的古风歌曲。作曲 : 刘凤瑶作词 : 蒋柽，编曲：侯贻强 / EZ-Mitchell。', '1341620898007281665', '1341620898007281665', '0', '丸子呦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1429356560529166337', '胡歌 - 逍遥叹.mp3', 'http://175.178.69.253:81/upload/node4/9e18868a6555416aa6b8c50eb24f25d4.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:43:24', '《逍遥叹》是电视剧《仙剑奇侠传》的插曲，由陈宇任（Funck）作词、作曲，屠颖编曲，郭文宗制作，胡歌演唱，收录在华研国际音乐2005年1月25日发行的电视剧《仙剑奇侠传》原声带中 。', '1341620898007281665', '1341620898007281665', '0', '胡歌', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1429356593961963521', '要不要买菜 - 下山.mp3', 'http://175.178.69.253:81/upload/node3/b66ce02154434655b43cd82eb20354f5.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:38:08', '《下山》是由朱斌语作词作曲，要不要买菜演唱的歌曲，发行于2019年11月22日。\n2021年1月23日，该曲获得第二届腾讯音乐娱乐盛典年度十大热歌奖。', '1341620898007281665', '1341620898007281665', '0', '要不要买菜', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1429356687457193986', '陈一发儿 - 童话镇.mp3', 'http://175.178.69.253:81/upload/node5/99e4a13f475144c7b0a984dc50f67a84.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:36:01', '《童话镇》是由竹君作词，暗杠作曲，陈一发儿翻唱的流行歌曲。该曲女声版本在云音乐热歌榜连续两周榜首，并最终入选2016年度云音乐最热歌曲第五名，成为陈一发儿的代表作之一。', '1341620898007281665', '1341620898007281665', '0', '陈一发儿', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1429356715475144706', '汪睿 - 桃花笑.mp3', 'http://175.178.69.253:81/upload/node4/424ca662e7d84e8486eb5bac29f858f0.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:36:08', '《桃花笑》为林依晨、张彬彬领衔主演的电视剧《小女花不弃》中的插曲，由汪睿演唱，由青萝子作词，西门振作曲。该歌曲温馨喜庆，旋律轻快欢乐，歌词郎朗上口，配上汪睿独特可爱的嗓音，好听又为剧情发展烘托气氛。', '1341620898007281665', '1341620898007281665', '0', '汪睿', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1429356956618264577', '银临 - 棠梨煎雪.mp3', 'http://175.178.69.253:81/upload/node5/3db5f8ab95cc45debbac3238b2178336.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:39:12', '《棠梨煎雪》是一首银临演唱的古风歌曲，收录于2013年12月15日发行的专辑《腐草为萤》', '1341620898007281665', '1341620898007281665', '0', '银临', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1429358833586081793', '蔡依林 - 日不落.mp3', 'http://175.178.69.253:81/upload/node3/bea227b2276e4ff08ba80c78bb135c28.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:38:17', '《日不落》是中国台湾流行音乐女歌手蔡依林演唱的一首歌曲，翻唱自BWO的《Sunshine in the Rain》，由崔惟楷重新填词，Bodies Without Organs作曲，收录于蔡依林2007年09月21日发行的专辑《特务J》中，亦是音乐电影《记忆的裂痕》中的背景音乐。\n该歌曲发行后获得第六届HITO流行音乐奖年度听众最爱歌曲、第十五届北京流行音乐典礼年度金曲和第八届全球华语歌曲排行榜最受欢迎二十大金曲等奖项。2008年1月《日不落》获得中国台湾Hit Fm百首单曲冠军。', '1341620898007281665', '1341620898007281665', '0', '蔡依林', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1429358893971476482', '深海鱼子酱 - 千千万万.mp3', 'http://175.178.69.253:81/upload/node1/e74d47b36a3b47f99da3bc1ca23320ff.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:39:05', '《千千万万》是深海鱼子酱演唱的歌曲，发行于2022年1月13日，收录于专辑《千千万万(粤语版)》中。', '1341620898007281665', '1341620898007281665', '0', '深海鱼子酱', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1429358962762256386', '流芒菌 - 红昭愿.mp3', 'http://175.178.69.253:81/upload/node4/fa9aa526d024481b9c1c5cbdc5ae2ab0.mp3', 'audio', '2021-10-21 13:05:09', '2022-12-10 13:44:20', '《红昭愿》是来自音阙诗听音乐社的一首原创作品，由荒唐客作词，殇小瑾作曲，流茫菌演唱的一首歌。正式发行于2017年1月11日。大量的不重复处理让歌曲呈现更高的耐听感，时时刻刻都是新鲜的元素！据社长也亦是《红昭愿》这首歌的制作人殇小谨介绍：“魔性的开场loop人声采样，是我们的第七版创意。和声的配唱模式，是我们的第三版创意。编曲的整体搭配，包括中国风古筝元素的加入，是我们的第三版创意。”', '1341620898007281665', '1341620898007281665', '0', '流芒菌', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1429359285337788418', '张韶涵 - 淋雨一直走.mp3', 'http://175.178.69.253:81/upload/node2/fc4f4b3713174e57a9e88cc55e9d009f.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:42:56', '《淋雨一直走》是张韶涵演唱的一首歌曲，收录在张韶涵发行的专辑《有形的翅膀》中。\n2012年12月这首歌曲获得第20届中国歌曲排行榜年度金曲奖和最佳编曲奖，2013年4月获得Music Radio中国TOP排行榜年度金曲奖。', '1341620898007281665', '1341620898007281665', '0', '张韶涵', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1429360419737636866', '花僮 - 笑纳.mp3', 'http://175.178.69.253:81/upload/node4/1ea804cfdda948ae8901b7d7cd670cb8.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:39:35', '《笑纳》是周仁作词，古月作曲，韩珂编曲，花僮演唱的歌曲，发行于2020年8月26日。收录于同名专辑《笑纳》中。', '1341620898007281665', '1341620898007281665', '0', '花僮', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1431054811305213953', '许嵩 - 如果当时.mp3', 'http://175.178.69.253:81/upload/node5/40ca5064ce1e4df594ab7bbfe53b7b8d.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:40:11', '《如果当时》是许嵩首张个人专辑《自定义》的一首主打歌曲，创作工作均由许嵩独自完成。发行于2009年1月10日。\n这首歌是一首构思独特的养耳之作，具有浓厚的中国风味道。', '1341620898007281665', '1341620898007281665', '0', '许嵩', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610165923516417', '黎林添娇 - 星月糖.mp3', 'http://175.178.69.253:81/upload/node4/bed7739d71414a95a43694a20ec69e9a.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:43:57', '《星月糖》是漠飞作词，王鹏作曲，黎林添娇演唱的一首歌。', '1341620898007281665', '1341620898007281665', '0', '黎林添娇', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848513', 'yihuik苡慧 - 银河与星斗.mp3', 'http://175.178.69.253:81/upload/node5/f96ff9b14ce94f8e8746ef8738614fcd.mp3', 'audio', '2021-10-21 13:05:09', '2022-08-26 10:37:41', '《银河与星斗》是由李昀格和刘思情作词，轮子作曲，yihuik苡慧演唱的歌曲，发行于2021年5月30日。收录于同名专辑《银河与星斗》中。', '1341620898007281665', '1341620898007281665', '0', 'yihuik苡慧', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848514', '黄霑_罗大佑_徐克 - 沧海一声笑.mp4', 'http://175.178.69.253:81/upload/node4/108f3fe556a54faea00c0af69ff7a832.mp4', 'video', '2021-10-24 14:55:43', '2023-01-01 16:30:53', '《沧海一声笑》是1990年上映的电影《笑傲江湖》的主题曲，由黄霑作词、作曲，顾嘉辉编曲。\n歌曲分粤语、普通话两个版本，但歌词几乎相同；粤语版由许冠杰演唱，收录于许冠杰1990年4月1日由宝丽金唱片发行的专辑《90电影金曲精选》中；普通话版由罗大佑、黄霑、徐克共同演唱，收录于黄沾1990年由滚石唱片发行的专辑《笑傲江湖-百无禁忌黄沾作品集》中。\n1991年，该曲获第10届香港电影金像奖最佳原创电影歌曲奖。', '1341620898007281665', '1341620898007281665', '0', '黄霑,罗大佑,徐克', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848515', '令狐冲 - 一曲肝肠断.jpg', 'http://175.178.69.253:81/upload/node3/bacb44ff9a5f4ba9bb7eefd7adc45a47.jpg', 'image', '2021-10-24 15:07:54', '2023-01-19 19:01:19', '老寇的QQ个人头像', '1341620898007281665', '1341620898007281665', '0', '令狐冲,老寇,头像', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848516', '郑中基 - 无赖.mp3', 'http://175.178.69.253:81/upload/node2/0cacaed1d0e24dd8bf783d6126981cd3.mp3', 'audio', '2021-10-24 15:33:48', '2022-08-26 10:43:50', '《无赖》是郑中基演唱的一首粤语歌曲，由李峻一填词、作曲，收录在郑中基2005年6月由金牌大风唱片发行的粤语专辑《Before After》中。该歌曲是电影《龙咁威2之皇母娘娘呢》的主题曲。\n2005年12月该歌曲获得新城劲爆歌曲、劲爆卡拉OK歌曲两个奖项；2006年获得第28届香港十大中文金曲、2005年度十大劲歌金曲金曲奖。', '1341620898007281665', '1341620898007281665', '0', '郑中基', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848520', '李昕融_樊桐舟_李凯稠 - 你笑起来真好看.mp3', 'http://175.178.69.253:81/upload/node1/6f159e4ade6340cfa877508f28457289.mp3', 'audio', '2021-10-26 08:39:20', '2022-08-26 10:43:17', '《你笑起来真好看》是由周兵作词，李凯稠作曲，李昕融、樊桐舟、李凯稠共同演唱的歌曲，于2020年10月26日以单曲形式发行。\n2020年，该曲获得中国当代歌曲创作精品工程“听见中国听见你”年度优秀歌曲奖。', '1341620898007281665', '1341620898007281665', '0', '李昕融,樊桐舟,李凯稠', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848524', '胡歌 - 指纹.mp4', 'http://175.178.69.253:81/upload/node5/69142f1e30d04175bbe2825688efbe25.mp4', 'video', '2021-11-04 20:45:23', '2022-10-22 16:09:57', '《指纹》是电视剧《轩辕剑之天之痕》的插曲，由周剑光作词，郑宇界作曲，胡歌演唱，谢嘉荣制作MV。', '1341620898007281665', '1341620898007281665', '0', '胡歌', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848525', '刘德华 - 17岁.mp4', 'http://175.178.69.253:81/upload/node3/fecc0b2a83dd4c94b0398f6187ebc04c.mp4', 'video', '2021-11-07 09:53:00', '2022-08-26 10:38:49', '《17岁》是刘德华演唱的一首歌曲，由刘德华和徐继宗作词，徐继宗作曲的一首歌，编曲为Billy Chan，收录在专辑《如果有一天》中。', '1341620898007281665', '1341620898007281665', '0', '刘德华', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848527', '黄安 - 新鸳鸯蝴蝶梦.mp3', 'http://175.178.69.253:81/upload/node3/73c11e1aac3c4b3db893ca711bb78ab5.mp3', 'audio', '2021-11-28 17:43:38', '2022-08-26 10:36:15', '《新鸳鸯蝴蝶梦》是1993年台湾电视剧《包青天》的主题曲，由黄安演唱、填词并作曲，詹宏达编曲，最早收录于1993年2月1日发行的同名专辑《新鸳鸯蝴蝶梦》中。', '1341620898007281665', '1341620898007281665', '0', '黄安', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848530', '蔡依林_周杰伦 - 布拉格广场.flac', 'http://175.178.69.253:81/upload/node5/a607608ec20b46e2abbeaf3e704db6d6.flac', 'audio', '2022-03-14 11:07:44', '2022-08-26 10:37:49', '《布拉格广场》是蔡依林、周杰伦演唱的歌曲，由方文山作词、周杰伦作曲、钟兴民编曲，收录于蔡依林2003年3月7日发行的专辑《看我72变》中。\n2004年5月，钟兴民在第15届台湾金曲奖颁奖典礼上凭借该曲获得“最佳编曲人奖” 。', '1341620898007281665', '1341620898007281665', '0', '蔡依林,周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848531', '周杰伦 - 本草纲目.flac', 'http://175.178.69.253:81/upload/node5/1cabe4eabef547688090a4c58ad2c82e.flac', 'audio', '2022-03-01 11:17:50', '2022-08-26 10:36:57', '《本草纲目》是周杰伦演唱的一首歌曲，由方文山作词，周杰伦作曲，林迈可编曲，收录在周杰伦2006年9月5日发行的专辑《依然范特西》中。 \n周杰伦在2009年春节联欢晚会上与宋祖英以“英伦组合”合唱该歌曲。', '1341620898007281665', '1341620898007281665', '0', '周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848532', '周杰伦 - 超人不会飞.flac', 'http://175.178.69.253:81/upload/node3/98f52b4365df44efb76e4c8e046f006d.flac', 'audio', '2022-03-07 11:19:14', '2022-08-26 10:37:24', '《超人不会飞》是周杰伦演唱的一首歌曲，由周杰伦填词、谱曲，林迈可编曲，收录在周杰伦2010年5月18日发行的专辑《跨时代》中。', '1341620898007281665', '1341620898007281665', '0', '周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848533', '周杰伦 - 稻香.flac', 'http://175.178.69.253:81/upload/node4/76340fdb43be499ea3a540ea6f934267.flac', 'audio', '2022-03-16 11:20:50', '2022-10-22 15:58:08', '《稻香》是周杰伦演唱的一首歌曲，由周杰伦作词、作曲，黄雨勋编曲，收录在周杰伦2008年10月15日发行的专辑《魔杰座》中；周杰伦在接受媒体采访时表示，《稻香》是因5·12汶川地震创作的。\n2009年这首歌曲获得第20届台湾金曲奖最佳年度歌曲奖、雪碧榜中国原创音乐流行榜港台地区歌曲奖等奖项。', '1341620898007281665', '1341620898007281665', '0', '周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848534', '周杰伦 - 东风破.flac', 'http://175.178.69.253:81/upload/node3/a56c134452cc466e8596c39d9c4fb0bc.flac', 'audio', '2022-03-14 11:22:10', '2022-08-26 10:33:54', '《东风破》是周杰伦演唱的一首歌曲，由周杰伦谱曲，方文山填词，林迈可编曲，收录在周杰伦2003年7月31日发行的个人第四张专辑《叶惠美》中。\n2004年，该歌曲获得第四届华语流行乐传媒大奖十大单曲奖、第11届中国歌曲排行榜港台地区最受欢迎歌曲奖、MusicRadio中国TOP排行榜台港地区年度歌曲和第七届中央电视台音乐电视大赛港台及海外华语最佳MV作品奖等奖项，方文山凭借该歌曲获得第四届百事音乐风云榜年度港台及海外华人最佳作词奖。', '1341620898007281665', '1341620898007281665', '0', '周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848535', '周杰伦 - 断了的弦.flac', 'http://175.178.69.253:81/upload/node5/b5c8a23a9aeb4fb7963a93b5a46d034c.flac', 'audio', '2022-03-14 11:23:59', '2022-08-27 11:05:23', '《断了的弦》是周杰伦演唱的一首歌曲，由方文山作词，周杰伦作曲，钟兴民编曲，收录于周杰伦于2003年11月13日发行的EP《寻找周杰伦》中 。该曲是电影《寻找周杰伦》的插曲。', '1341620898007281665', '1341620898007281665', '0', '周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848536', '周杰伦 - 发如雪.flac', 'http://175.178.69.253:81/upload/node1/b83abed50bf64d5490afed2762ccea05.flac', 'audio', '2022-03-27 11:25:11', '2022-10-22 15:58:08', '《发如雪》是由周杰伦作曲，方文山填词，周杰伦演唱。《发如雪》是首古筝伴奏的中国古典风格的作品，相比《夜曲》的欧洲古典风格，这首《十一月的萧邦》专辑中的第二主打歌曲毫不逊色。另外歌词“本来无一物，何处惹尘埃”道出了这生生世世，缘起缘落，一切只因心尘未脱的世间痴男怨女的心境。《发如雪》是一首在唱腔上颇具难度技巧的歌曲，周杰伦飙到高音的地方令人印象深刻。', '1341620898007281665', '1341620898007281665', '0', '周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848537', '周杰伦 - 霍元甲.flac', 'http://175.178.69.253:81/upload/node3/e632ad8073b24f76a8ca17e6d9a812ae.flac', 'audio', '2022-03-14 11:26:15', '2022-08-26 10:40:18', '《霍元甲》是周杰伦演唱的一首歌曲，由方文山作词，周杰伦作曲，洪敬尧编曲，收录于2006年1月20日发行的同名EP《霍元甲》中。该曲是电影《霍元甲》的同名主题曲。\n2007年，该曲获得第26届香港电影金像奖最佳原创电影歌曲提名，周杰伦凭借该曲获得第18届台湾金曲奖最佳单曲制作人奖。', '1341620898007281665', '1341620898007281665', '0', '周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848538', '周杰伦 - 兰亭序.mp3', 'http://175.178.69.253:81/upload/node1/d8ed3d9659b843ceb776d603cc068bef.mp3', 'audio', '2022-02-24 11:29:06', '2022-08-26 10:36:48', '《兰亭序》是周杰伦演唱的一首歌曲，由周杰伦作曲，方文山填词，钟兴民编曲，收录在周杰伦2008年10月15日发行的专辑《魔杰座》中。\n2011年，周杰伦在央视春晚上演唱了这首歌曲，并获得了2011年CCTV春晚我最喜爱的春节联欢晚会评选歌舞类节目三等奖。\n', '1341620898007281665', '1341620898007281665', '0', '周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848539', '周杰伦 - 龙卷风.flac', 'http://175.178.69.253:81/upload/node4/f74da90133ed48638193cc072773a217.flac', 'audio', '2022-03-14 11:31:07', '2022-08-26 10:42:43', '《龙卷风》是周杰伦演唱的一首歌曲，由徐若瑄作词，周杰伦作曲，钟兴民编曲，收录于周杰伦2000年11月7日发行的首张个人专辑《Jay》中。\n2001年，该歌曲获得新城劲爆卡拉OK歌曲奖。', '1341620898007281665', '1341620898007281665', '0', '周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848540', '周杰伦 - 牛仔很忙.flac', 'http://175.178.69.253:81/upload/node1/d97ae6efe4a841f3a119d96e32f3994b.flac', 'audio', '2022-03-29 11:33:34', '2022-10-22 15:58:08', '《牛仔很忙》是周杰伦演唱的一首歌曲，由周杰伦作曲，黄俊郎填词，钟兴民编曲，收录在周杰伦2007年11月2日发行的专辑《我很忙》中。', '1341620898007281665', '1341620898007281665', '0', '周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848541', '周杰伦 - 七里香.flac', 'http://175.178.69.253:81/upload/node1/31dbe74b6a184f94b3e690ddb23b173d.flac', 'audio', '2022-03-29 11:35:07', '2022-10-22 22:30:34', '七里香歌曲《七里香》，由周杰伦演唱，方文山作词，周杰伦谱曲，钟兴民编曲，收录在周杰伦2004年8月3日发行的同名专辑《七里香》中。\n2004年，该曲获得香港TVB8十大金曲最佳作曲、监制、编曲3项大奖。2005年，该曲获得第27届十大中文金曲十大金曲奖、优秀流行华语歌曲奖以及第11届全球华语音乐榜中榜年度最佳歌曲等多个奖项。', '1341620898007281665', '1341620898007281665', '0', '周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848542', '周杰伦_费玉清 - 千里之外.flac', 'http://175.178.69.253:81/upload/node4/7c51289e75fd427484871b63aeee0545.flac', 'audio', '2022-03-07 11:36:12', '2022-08-26 10:38:42', '《千里之外》是周杰伦、费玉清演唱的一首歌曲，由方文山作词，周杰伦作曲，林迈可编曲，收录在周杰伦2006年9月5日发行的专辑《依然范特西》中，是周杰伦的代表作品之一。该歌曲另有费玉清的独唱版本，收录于费玉清2007年4月20日发行的专辑《回想曲青青校树》中。\n2007年，该歌曲获得了第十三届全球华语音乐榜中榜年度最佳歌曲奖、第29届十大中文金曲全国最受欢迎中文歌曲奖、第7届蒙牛酸酸乳音乐风云榜年度最佳歌曲奖。', '1341620898007281665', '1341620898007281665', '0', '费玉清,周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848543', '周杰伦 - 烟花易冷.flac', 'http://175.178.69.253:81/upload/node4/4c6655d7d5dc42b1a491f8a0c4138413.flac', 'audio', '2022-03-15 11:37:57', '2022-08-26 10:43:03', '《烟花易冷》是方文山作词，黄雨勋编曲，周杰伦作曲并演唱的一首歌曲，收录在周杰伦2010年5月18日发行的专辑《跨时代》中。\n2011年，该曲获得2010年度北京流行音乐典礼“年度金曲奖”。', '1341620898007281665', '1341620898007281665', '0', '周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848544', '周杰伦 - 夜的第七章.mp3', 'http://175.178.69.253:81/upload/node2/23d90162fde44dd58b7e7147e196adb9.mp3', 'audio', '2022-03-16 11:39:14', '2022-10-22 15:58:08', '《夜的第七章》讲的是伦敦近郊的公园里的发生了一起凶杀案，现场唯一留下的线索是死者口里的一朵蓝色玫瑰的故事。\n《夜的第七章》是周杰伦、潘儿演唱的一首歌曲，由黄俊郎作词，周杰伦作曲，钟兴民、林迈可编曲。收录在周杰伦于2006年9月5日发行的专辑《依然范特西》中。', '1341620898007281665', '1341620898007281665', '0', '周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1441610450502848545', '周杰伦 - 夜曲.flac', 'http://175.178.69.253:81/upload/node1/eefa051169454bf9ab1ccaa313febf8e.flac', 'audio', '2022-03-14 11:40:57', '2022-08-26 10:42:36', '《夜曲》是周杰伦演唱的一首歌曲，由方文山作词，周杰伦作曲，林迈可编曲，收录在周杰伦2005年11月1日发行的专辑《11月的萧邦》中。\n2005年，该曲获得雪碧榜港台金曲、9+2音乐先锋榜年度先锋金曲。2006年，该曲获得全球华语音乐榜中榜年度最佳歌曲等多个奖项。', '1341620898007281665', '1341620898007281665', '0', '周杰伦', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1564806594321100801', 'k↑.jpg', 'http://175.178.69.253:81/upload/node3/1d73029a377241e1903cba6c45060bf1.jpg', 'image', '2022-08-31 10:45:39', '2023-01-19 18:23:21', '老寇的CSDN个人头像', '1341620898007281665', '1341620898007281665', '0', 'CSDN,老寇,头像', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1585117840203255810', 'Yanni - With An Orchid (心兰相随).mp4', 'http://175.178.69.253:81/upload/node5/02a6554e954142c09c77702e5197762a.mp4', 'video', '2022-10-26 11:55:18', '2022-10-26 12:01:47', 'With An Orchid 《心兰相随》是一首非常有名的New Age(新世纪)曲子。由希腊演奏家、作曲家Yanni创作，收录于其专辑 If I Could Tell You 。香港凤凰卫视的凤凰气象站，大连电视台晚间气象预报和福州电视台的福州三天未来天气采用它为背景音乐，受到许多人的喜爱。', '1341620898007281665', '1341620898007281665', '0', '雅尼,心兰相随', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1585120102459838465', '李宇春 - 和你一样.flac', 'http://175.178.69.253:81/upload/node5/66c17e7ceae341309d82e63735219d8f.flac', 'audio', '2022-10-26 12:04:17', '2022-11-01 20:28:30', '《和你一样》是李宇春演唱的歌曲，由任淼作词，上海玉米与任淼共同谱曲，发行于2008年4月29日 ，收录于2008年12月16日李宇春发行的专辑《N+1 Evolution》中。\n2008年12月，该曲获得无线音乐最具爱心金曲提名。', '1341620898007281665', '1341620898007281665', '0', '李宇春,和你一样', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1585120717546131457', '房东的猫 - New Boy.flac', 'http://175.178.69.253:81/upload/node5/36438ade79584b2f9e472d3657e0f64c.flac', 'audio', '2022-10-26 12:06:44', '2022-11-01 20:28:31', 'NEW BOY是房东的猫、陈婧霏演唱的歌曲。', '1341620898007281665', '1341620898007281665', '0', 'New Boy,房东的猫', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1585121449896775681', '任贤齐 - 沧海一声笑(现场版).mp4', 'http://175.178.69.253:81/upload/node1/c928e1fcc55f4b65a848a6ce44240029.mp4', 'video', '2022-10-26 12:09:38', '2022-11-01 20:28:31', '《沧海一声笑》是任贤齐演唱的一首歌曲，由黄沾作词、作曲，梁伯君编曲，收录在任贤齐2000年1月27日发行的专辑《为爱走天涯》中。该曲是2000年中视版电视剧《笑傲江湖》的插曲', '1341620898007281665', '1341620898007281665', '0', '笑傲江湖,任贤齐', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1585126683264094209', '任贤齐 - 还有我.mp4', 'http://175.178.69.253:81/upload/node5/49eb851e06af49939ae5b93287ea22dc.mp4', 'video', '2022-10-26 12:30:26', '2022-11-01 20:28:32', '《还有我》是任贤齐演唱的一首歌曲，由任贤齐作词、作曲，葛子毅编曲，收录在任贤齐2007年4月26日发行的专辑《如果没有你》中 。\n该歌曲是电影《合约情人》的插曲。', '1341620898007281665', '1341620898007281665', '0', '任贤齐,还有我', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1585127225684070402', '任贤齐 - 任逍遥.mp4', 'http://175.178.69.253:81/upload/node5/9ea81ace95d84d6d8fc505d165e47515.mp4', 'video', '2022-10-26 12:32:36', '2022-11-01 20:28:33', '《任逍遥 》是任贤齐演唱的一首歌曲，由小虫作词、作曲，梁伯君编曲，收录于任贤齐1998年8月28日由滚石唱片发行的录音室专辑《爱像太平洋》中。该歌曲是1998年台视电视剧《神雕侠侣》片头曲。', '1341620898007281665', '1341620898007281665', '0', '任贤齐,任逍遥', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1585127922618011650', '任贤齐 - 天涯.mp4', 'http://175.178.69.253:81/upload/node1/bfeb8d47dc754fa884e1678bc3a980f9.mp4', 'video', '2022-10-26 12:35:22', '2022-11-01 20:28:34', '《天涯》是任贤齐翻唱中岛美雪竹の歌，由陈没填词，蔡朝华编曲，收录在任贤齐2000年1月27日由滚石唱片发行的专辑《为爱走天涯》中。该歌曲是2000年台湾中视电视剧《笑傲江湖》的片尾曲。', '1341620898007281665', '1341620898007281665', '0', '天涯,任贤齐', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1585128375955165186', '任贤齐 - 死不了.mp4', 'http://175.178.69.253:81/upload/node5/3195026cd259454e90bd88b2ab9038b3.mp4', 'video', '2022-10-26 12:37:10', '2022-11-01 20:28:35', '《死不了》是任贤齐演唱的一首歌曲，由刘思铭作词，刘志宏作曲，洪敬尧编曲，收录在任贤齐2000年1月27日由滚石唱片发行的专辑《为爱走天涯》中。该曲是2000年中视版电视剧《笑傲江湖》的主题曲。', '1341620898007281665', '1341620898007281665', '0', '死不了,任贤齐', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1585128815811825666', '任贤齐 - 心太软.mp4', 'http://175.178.69.253:81/upload/node1/44fba7e03c9c4f6da79a7152e56f5e64.mp4', 'video', '2022-10-26 12:38:55', '2022-11-01 20:28:35', '《心太软》是任贤齐1996年12月24日发行的一张专辑，由小虫担任制作人，滚石唱片发行，共收录10首歌曲。\n该专辑的同名主打歌《心太软》荣获香港电台十大劲爆国语金曲铜奖、香港新城精选104电台国语金奖、1997ChannelV华语榜中榜TOP20第二名。', '1341620898007281665', '1341620898007281665', '0', '任贤齐,心太软', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1585129637417259009', '杨千嬅_任贤齐 - 花好月圆夜 (国语版).mp4', 'http://175.178.69.253:81/upload/node1/d41be2c462a84cbdb6bb40182c4e7196.mp4', 'video', '2022-10-26 12:42:11', '2022-11-01 20:28:36', '《花好月圆夜》是由任贤齐、杨千嬅演唱的一首歌曲，由任贤齐作曲，伍乐城编曲，分普通话、粤语两个版本，普通话版由任贤齐作词，粤语版由林夕作词，两版皆收录在杨千嬅2004年1月21日发行的EP《2004开大》中 [2-3]  。该曲是电影《花好月圆》的插曲。', '1341620898007281665', '1341620898007281665', '0', '花好月圆,杨千嬅,任贤齐', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1585130300620607489', '范倪Liu - 南半球与北海道.mp3', 'http://175.178.69.253:81/upload/node5/7931e662df164b0281752a26be9a74e3.mp3', 'audio', '2022-10-26 12:44:49', '2022-11-01 20:28:37', '“我告别南半球奔向北海道，愿化作那昼夜的飞鸟将你拥抱”\n    尘埃力量携手旗下女歌手范倪Liu带来全新单曲《南半球与北海道》。范倪Liu治愈演绎，你的笑盛放于花海，那是我见过最美的画面。我告别南半球与北海道，与零度经线的距离只差分毫，只能目送你随日落消失于眼角。我多想能穿梭到平行时空，乘着风，奔向你...', '1341620898007281665', '1341620898007281665', '0', '范倪Liu,南半球与北海道', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1585130571937550338', '凤凰传奇 - 海底.mp3', 'http://175.178.69.253:81/upload/node1/f98cb30cf0944015b082cc640f4a8a68.mp3', 'audio', '2022-10-26 12:45:53', '2022-11-01 20:28:38', '《海底》，由一支榴莲作词，一支榴莲/寿延作曲，凤凰传奇在《为歌而赞》第七期演唱的歌曲，发行于2021年4月24日。', '1341620898007281665', '1341620898007281665', '0', '凤凰传奇,海底', '0');
INSERT INTO `boot_sys_resource` (`id`, `title`, `url`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `version`) VALUES ('1587737315629010946', '千百顺 - 很任性.flac', 'http://175.178.69.253:81/upload/node1/d218ea8dc46e437a884778f53e27a590.flac', 'audio', '2022-11-02 17:24:09', '2023-01-27 22:09:57', '《很任性》是由高进作词、作曲，千百顺演唱的歌曲，发行于2014年12月24日。收录于同名专辑《很任性》中。', '1341620898007281665', '1341620898007281665', '0', '千百顺,很任性,任性姐', '0');
CREATE TABLE `boot_sys_resource_audit` (
                                           `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                           `title` varchar(200) NOT NULL COMMENT '名称',
                                           `url` varchar(500) NOT NULL COMMENT '地址',
                                           `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '审核状态(0待审核 1审核中 2审批驳回 3审批通过 )',
                                           `code` varchar(10) NOT NULL COMMENT '类型 audio音频 video视频  image图片 text文本 other其他',
                                           `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                           `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                                           `remark` longtext COMMENT '备注',
                                           `creator` bigint(20) DEFAULT NULL COMMENT '创建人',
                                           `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                           `del_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1已删除 0未删除',
                                           `tags` longtext COMMENT '标签',
                                           `process_instance_id` varchar(50) DEFAULT NULL COMMENT '实例id',
                                           `resource_id` bigint(20) DEFAULT NULL COMMENT '资源id',
                                           `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
                                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('2', 'k↑.jpg', 'http://175.178.69.253:81/upload/node3/1d73029a377241e1903cba6c45060bf1.jpg', '3', 'image', '2023-01-19 13:56:24', '2023-01-19 14:27:35', '老寇的CSDN个人头像', '1341620898007281665', NULL, '0', 'CSDN', '000f8170-97be-11ed-874c-005056c00001', '1564806594321100801', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('3', 'k↑.jpg', 'http://175.178.69.253:81/upload/node3/1d73029a377241e1903cba6c45060bf1.jpg', '3', 'image', '2023-01-19 14:28:10', '2023-01-19 14:33:53', 'CSDN个人头像', '1341620898007281665', NULL, '0', 'CSDN', '6fcb7df5-97c2-11ed-874c-005056c00001', '1564806594321100801', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('4', 'k↑.jpg', 'http://175.178.69.253:81/upload/node3/1d73029a377241e1903cba6c45060bf1.jpg', '3', 'image', '2023-01-19 15:06:48', '2023-01-19 15:09:50', '老寇的CSDN个人头像', '1341620898007281665', NULL, '0', 'CSDN,老寇', 'd4e5cf31-97c7-11ed-874c-005056c00001', '1564806594321100801', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('5', 'k↑.jpg', 'http://175.178.69.253:81/upload/node3/1d73029a377241e1903cba6c45060bf1.jpg', '3', 'image', '2023-01-19 18:01:30', '2023-01-19 18:23:21', '老寇的CSDN个人头像', '1341620898007281665', NULL, '0', 'CSDN,老寇,头像', '3bef24d5-97e0-11ed-a111-005056c00001', '1564806594321100801', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('7', '令狐冲 - 一曲肝肠断.jpg', 'http://175.178.69.253:81/upload/node3/bacb44ff9a5f4ba9bb7eefd7adc45a47.jpg', '3', 'image', '2023-01-19 18:29:55', '2023-01-19 18:41:45', '老寇的QQ个人头像', '1341620898007281665', NULL, '0', '令狐冲,老寇', '35cbf59a-97e4-11ed-a111-005056c00001', '1441610450502848515', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('8', '令狐冲 - 一曲肝肠断.jpg', 'http://175.178.69.253:81/upload/node3/bacb44ff9a5f4ba9bb7eefd7adc45a47.jpg', '2', 'image', '2023-01-19 18:45:00', '2023-01-19 18:47:18', '老寇的QQ个人头像', '1341620898007281665', NULL, '0', '令狐冲,老寇,头像', '514bd656-97e6-11ed-a111-005056c00001', '1441610450502848515', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('9', '令狐冲 - 一曲肝肠断.jpg', 'http://175.178.69.253:81/upload/node3/bacb44ff9a5f4ba9bb7eefd7adc45a47.jpg', '2', 'image', '2023-01-19 18:48:32', '2023-01-19 18:50:15', '老寇的QQ个人头像', '1341620898007281665', NULL, '0', '令狐冲,老寇,头像', 'bfe8f214-97e6-11ed-a111-005056c00001', '1441610450502848515', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('10', '令狐冲 - 一曲肝肠断.jpg', 'http://175.178.69.253:81/upload/node3/bacb44ff9a5f4ba9bb7eefd7adc45a47.jpg', '2', 'image', '2023-01-19 18:51:17', '2023-01-19 18:52:14', '老寇的QQ个人头像', '1341620898007281665', NULL, '0', '令狐冲,老寇,头像', '18e035e2-97e7-11ed-a111-005056c00001', '1441610450502848515', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('11', '令狐冲 - 一曲肝肠断.jpg', 'http://175.178.69.253:81/upload/node3/bacb44ff9a5f4ba9bb7eefd7adc45a47.jpg', '2', 'image', '2023-01-19 18:52:34', '2023-01-19 18:54:56', '老寇的QQ个人头像', '1341620898007281665', NULL, '0', '令狐冲,老寇,头像', '5ba2d140-97e7-11ed-a111-005056c00001', '1441610450502848515', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('12', '令狐冲 - 一曲肝肠断.jpg', 'http://175.178.69.253:81/upload/node3/bacb44ff9a5f4ba9bb7eefd7adc45a47.jpg', '2', 'image', '2023-01-19 18:55:19', '2023-01-19 18:55:45', '老寇的QQ个人头像', '1341620898007281665', NULL, '0', '令狐冲,老寇,头像', 'bc4c9b2e-97e7-11ed-a111-005056c00001', '1441610450502848515', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('13', '令狐冲 - 一曲肝肠断.jpg', 'http://175.178.69.253:81/upload/node3/bacb44ff9a5f4ba9bb7eefd7adc45a47.jpg', '3', 'image', '2023-01-19 18:57:34', '2023-01-19 19:01:20', '老寇的QQ个人头像', '1341620898007281665', NULL, '0', '令狐冲,老寇,头像', '118ea02c-97e8-11ed-a111-005056c00001', '1441610450502848515', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('15', '大籽 - 白月光与朱砂痣.mp3', 'http://175.178.69.253:81/upload/node4/f906b6a282564c559632a1beeb449f5f.mp3', '3', 'audio', '2023-01-19 19:41:07', '2023-01-19 19:42:57', '《白月光与朱砂痣》是由大籽、嘿人李逵演唱的歌曲，收录于2021年1月1日发行的《白月光与朱砂痣》专辑。', '1341620898007281665', NULL, '0', '大籽', '27056938-97ee-11ed-a111-005056c00001', '1429355654328815617', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('17', '杨千嬅_任贤齐 - 花好月圆夜 (国语版).mp4', 'http://175.178.69.253:81/upload/node1/d41be2c462a84cbdb6bb40182c4e7196.mp4', '3', 'video', '2023-01-19 19:52:04', '2023-01-19 19:53:29', '《花好月圆夜》是由任贤齐、杨千嬅演唱的一首歌曲，由任贤齐作曲，伍乐城编曲，分普通话、粤语两个版本，普通话版由任贤齐作词，粤语版由林夕作词，两版皆收录在杨千嬅2004年1月21日发行的EP《2004开大》中 [2-3]  。该曲是电影《花好月圆》的插曲。', '1341620898007281665', NULL, '0', '花好月圆,杨千嬅,任贤齐', 'b006b1e4-97ef-11ed-a111-005056c00001', '1585129637417259009', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('19', '任贤齐 - 心太软.mp4', 'http://175.178.69.253:81/upload/node1/44fba7e03c9c4f6da79a7152e56f5e64.mp4', '3', 'video', '2023-01-19 19:55:04', '2023-01-19 19:56:12', '《心太软》是任贤齐1996年12月24日发行的一张专辑，由小虫担任制作人，滚石唱片发行，共收录10首歌曲。\n该专辑的同名主打歌《心太软》荣获香港电台十大劲爆国语金曲铜奖、香港新城精选104电台国语金奖、1997ChannelV华语榜中榜TOP20第二名。', '1341620898007281665', NULL, '0', '任贤齐,心太软', '1b6592a0-97f0-11ed-a111-005056c00001', '1585128815811825666', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('21', '任贤齐 - 死不了.mp4', 'http://175.178.69.253:81/upload/node5/3195026cd259454e90bd88b2ab9038b3.mp4', '3', 'video', '2023-01-19 19:57:23', '2023-01-19 19:58:20', '《死不了》是任贤齐演唱的一首歌曲，由刘思铭作词，刘志宏作曲，洪敬尧编曲，收录在任贤齐2000年1月27日由滚石唱片发行的专辑《为爱走天涯》中。该曲是2000年中视版电视剧《笑傲江湖》的主题曲。', '1341620898007281665', NULL, '0', '死不了,任贤齐', '6df5be1c-97f0-11ed-a111-005056c00001', '1585128375955165186', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('23', '任贤齐 - 天涯.mp4', 'http://175.178.69.253:81/upload/node1/bfeb8d47dc754fa884e1678bc3a980f9.mp4', '3', 'video', '2023-01-19 20:00:45', '2023-01-19 20:01:41', '《天涯》是任贤齐翻唱中岛美雪竹の歌，由陈没填词，蔡朝华编曲，收录在任贤齐2000年1月27日由滚石唱片发行的专辑《为爱走天涯》中。该歌曲是2000年台湾中视电视剧《笑傲江湖》的片尾曲。', '1341620898007281665', NULL, '0', '天涯,任贤齐', 'e6ad1038-97f0-11ed-a111-005056c00001', '1585127922618011650', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('25', '任贤齐 - 任逍遥.mp4', 'http://175.178.69.253:81/upload/node5/9ea81ace95d84d6d8fc505d165e47515.mp4', '3', 'video', '2023-01-19 20:06:41', '2023-01-19 20:07:33', '《任逍遥 》是任贤齐演唱的一首歌曲，由小虫作词、作曲，梁伯君编曲，收录于任贤齐1998年8月28日由滚石唱片发行的录音室专辑《爱像太平洋》中。该歌曲是1998年台视电视剧《神雕侠侣》片头曲。', '1341620898007281665', NULL, '0', '任贤齐,任逍遥', 'ba7c8b44-97f1-11ed-a111-005056c00001', '1585127225684070402', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('27', '任贤齐 - 还有我.mp4', 'http://175.178.69.253:81/upload/node5/49eb851e06af49939ae5b93287ea22dc.mp4', '3', 'video', '2023-01-19 20:10:54', '2023-01-19 20:11:34', '《还有我》是任贤齐演唱的一首歌曲，由任贤齐作词、作曲，葛子毅编曲，收录在任贤齐2007年4月26日发行的专辑《如果没有你》中 。\n该歌曲是电影《合约情人》的插曲。', '1341620898007281665', NULL, '0', '任贤齐,还有我', '5181e410-97f2-11ed-a111-005056c00001', '1585126683264094209', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('29', '任贤齐 - 沧海一声笑(现场版).mp4', 'http://175.178.69.253:81/upload/node1/c928e1fcc55f4b65a848a6ce44240029.mp4', '3', 'video', '2023-01-19 20:12:38', '2023-01-19 20:13:18', '《沧海一声笑》是任贤齐演唱的一首歌曲，由黄沾作词、作曲，梁伯君编曲，收录在任贤齐2000年1月27日发行的专辑《为爱走天涯》中。该曲是2000年中视版电视剧《笑傲江湖》的插曲', '1341620898007281665', NULL, '0', '笑傲江湖,任贤齐', '8f36656c-97f2-11ed-a111-005056c00001', '1585121449896775681', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('31', 'Yanni - With An Orchid (心兰相随).mp4', 'http://175.178.69.253:81/upload/node5/02a6554e954142c09c77702e5197762a.mp4', '3', 'video', '2023-01-19 20:14:43', '2023-01-19 20:15:20', 'With An Orchid 《心兰相随》是一首非常有名的New Age(新世纪)曲子。由希腊演奏家、作曲家Yanni创作，收录于其专辑 If I Could Tell You 。香港凤凰卫视的凤凰气象站，大连电视台晚间气象预报和福州电视台的福州三天未来天气采用它为背景音乐，受到许多人的喜爱。', '1341620898007281665', NULL, '0', '雅尼,心兰相随', 'da49c1c8-97f2-11ed-a111-005056c00001', '1585117840203255810', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('33', '刘德华 - 17岁.mp4', 'http://175.178.69.253:81/upload/node3/fecc0b2a83dd4c94b0398f6187ebc04c.mp4', '3', 'video', '2023-01-19 20:17:14', '2023-01-19 20:17:58', '《17岁》是刘德华演唱的一首歌曲，由刘德华和徐继宗作词，徐继宗作曲的一首歌，编曲为Billy Chan，收录在专辑《如果有一天》中。', '1341620898007281665', NULL, '0', '刘德华', '33c551d4-97f3-11ed-a111-005056c00001', '1441610450502848525', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('35', '胡歌 - 指纹.mp4', 'http://175.178.69.253:81/upload/node5/69142f1e30d04175bbe2825688efbe25.mp4', '3', 'video', '2023-01-19 20:18:52', '2023-01-19 20:19:43', '《指纹》是电视剧《轩辕剑之天之痕》的插曲，由周剑光作词，郑宇界作曲，胡歌演唱，谢嘉荣制作MV。', '1341620898007281665', NULL, '0', '胡歌', '6eaa3970-97f3-11ed-a111-005056c00001', '1441610450502848524', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('37', '黄霑_罗大佑_徐克 - 沧海一声笑.mp4', 'http://175.178.69.253:81/upload/node4/108f3fe556a54faea00c0af69ff7a832.mp4', '3', 'video', '2023-01-19 20:20:49', '2023-01-19 20:21:57', '《沧海一声笑》是1990年上映的电影《笑傲江湖》的主题曲，由黄霑作词、作曲，顾嘉辉编曲。\n歌曲分粤语、普通话两个版本，但歌词几乎相同；粤语版由许冠杰演唱，收录于许冠杰1990年4月1日由宝丽金唱片发行的专辑《90电影金曲精选》中；普通话版由罗大佑、黄霑、徐克共同演唱，收录于黄沾1990年由滚石唱片发行的专辑《笑傲江湖-百无禁忌黄沾作品集》中。\n1991年，该曲获第10届香港电影金像奖最佳原创电影歌曲奖。', '1341620898007281665', NULL, '0', '黄霑,罗大佑,徐克', 'b3dd389c-97f3-11ed-a111-005056c00001', '1441610450502848514', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('39', '千百顺 - 很任性.flac', 'http://175.178.69.253:81/upload/node1/d218ea8dc46e437a884778f53e27a590.flac', '3', 'audio', '2023-01-19 20:41:15', '2023-01-19 20:42:09', '《很任性》是由高进作词、作曲，千百顺演唱的歌曲，发行于2014年12月24日。收录于同名专辑《很任性》中。', '1341620898007281665', NULL, '0', '千百顺,很任性', '8dcffb58-97f6-11ed-a111-005056c00001', '1587737315629010946', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('41', '凤凰传奇 - 海底.mp3', 'http://175.178.69.253:81/upload/node1/f98cb30cf0944015b082cc640f4a8a68.mp3', '3', 'audio', '2023-01-19 22:05:00', '2023-01-19 22:06:03', '《海底》，由一支榴莲作词，一支榴莲/寿延作曲，凤凰传奇在《为歌而赞》第七期演唱的歌曲，发行于2021年4月24日。', '1341620898007281665', NULL, '0', '凤凰传奇,海底', '41044a64-9802-11ed-a111-005056c00001', '1585130571937550338', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('43', '范倪Liu - 南半球与北海道.mp3', 'http://175.178.69.253:81/upload/node5/7931e662df164b0281752a26be9a74e3.mp3', '3', 'audio', '2023-01-19 22:07:13', '2023-01-19 22:08:22', '“我告别南半球奔向北海道，愿化作那昼夜的飞鸟将你拥抱”\n    尘埃力量携手旗下女歌手范倪Liu带来全新单曲《南半球与北海道》。范倪Liu治愈演绎，你的笑盛放于花海，那是我见过最美的画面。我告别南半球与北海道，与零度经线的距离只差分毫，只能目送你随日落消失于眼角。我多想能穿梭到平行时空，乘着风，奔向你...', '1341620898007281665', NULL, '0', '范倪Liu,南半球与北海道', '919634e0-9802-11ed-a111-005056c00001', '1585130300620607489', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('45', '房东的猫 - New Boy.flac', 'http://175.178.69.253:81/upload/node5/36438ade79584b2f9e472d3657e0f64c.flac', '3', 'audio', '2023-01-19 22:10:52', '2023-01-19 22:11:37', 'NEW BOY是房东的猫、陈婧霏演唱的歌曲。', '1341620898007281665', NULL, '0', 'New Boy,房东的猫', '1426959c-9803-11ed-a111-005056c00001', '1585120717546131457', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('47', '李宇春 - 和你一样.flac', 'http://175.178.69.253:81/upload/node5/66c17e7ceae341309d82e63735219d8f.flac', '3', 'audio', '2023-01-19 22:13:15', '2023-01-19 22:14:33', '《和你一样》是李宇春演唱的歌曲，由任淼作词，上海玉米与任淼共同谱曲，发行于2008年4月29日 ，收录于2008年12月16日李宇春发行的专辑《N+1 Evolution》中。\n2008年12月，该曲获得无线音乐最具爱心金曲提名。', '1341620898007281665', NULL, '0', '李宇春,和你一样', '69134db8-9803-11ed-a111-005056c00001', '1585120102459838465', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('49', '周杰伦 - 七里香.flac', 'http://175.178.69.253:81/upload/node1/31dbe74b6a184f94b3e690ddb23b173d.flac', '3', 'audio', '2023-01-19 22:15:25', '2023-01-19 22:16:18', '七里香歌曲《七里香》，由周杰伦演唱，方文山作词，周杰伦谱曲，钟兴民编曲，收录在周杰伦2004年8月3日发行的同名专辑《七里香》中。\n2004年，该曲获得香港TVB8十大金曲最佳作曲、监制、编曲3项大奖。2005年，该曲获得第27届十大中文金曲十大金曲奖、优秀流行华语歌曲奖以及第11届全球华语音乐榜中榜年度最佳歌曲等多个奖项。', '1341620898007281665', NULL, '0', '周杰伦', 'b6c4ad84-9803-11ed-a111-005056c00001', '1441610450502848541', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('51', '周杰伦 - 牛仔很忙.flac', 'http://175.178.69.253:81/upload/node1/d97ae6efe4a841f3a119d96e32f3994b.flac', '3', 'audio', '2023-01-19 22:17:08', '2023-01-19 22:18:09', '《牛仔很忙》是周杰伦演唱的一首歌曲，由周杰伦作曲，黄俊郎填词，钟兴民编曲，收录在周杰伦2007年11月2日发行的专辑《我很忙》中。', '1341620898007281665', NULL, '0', '周杰伦', 'f4187240-9803-11ed-a111-005056c00001', '1441610450502848540', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('53', '周杰伦 - 发如雪.flac', 'http://175.178.69.253:81/upload/node1/b83abed50bf64d5490afed2762ccea05.flac', '3', 'audio', '2023-01-19 22:19:06', '2023-01-19 22:21:43', '《发如雪》是由周杰伦作曲，方文山填词，周杰伦演唱。《发如雪》是首古筝伴奏的中国古典风格的作品，相比《夜曲》的欧洲古典风格，这首《十一月的萧邦》专辑中的第二主打歌曲毫不逊色。另外歌词“本来无一物，何处惹尘埃”道出了这生生世世，缘起缘落，一切只因心尘未脱的世间痴男怨女的心境。《发如雪》是一首在唱腔上颇具难度技巧的歌曲，周杰伦飙到高音的地方令人印象深刻。', '1341620898007281665', NULL, '0', '周杰伦', '3a74af2c-9804-11ed-a111-005056c00001', '1441610450502848536', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('55', '周杰伦 - 夜的第七章.mp3', 'http://175.178.69.253:81/upload/node2/23d90162fde44dd58b7e7147e196adb9.mp3', '3', 'audio', '2023-01-19 22:22:38', '2023-01-19 22:25:01', '《夜的第七章》讲的是伦敦近郊的公园里的发生了一起凶杀案，现场唯一留下的线索是死者口里的一朵蓝色玫瑰的故事。\n《夜的第七章》是周杰伦、潘儿演唱的一首歌曲，由黄俊郎作词，周杰伦作曲，钟兴民、林迈可编曲。收录在周杰伦于2006年9月5日发行的专辑《依然范特西》中。', '1341620898007281665', NULL, '0', '周杰伦', 'b8df8218-9804-11ed-a111-005056c00001', '1441610450502848544', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('57', '周杰伦 - 稻香.flac', 'http://175.178.69.253:81/upload/node4/76340fdb43be499ea3a540ea6f934267.flac', '3', 'audio', '2023-01-19 22:33:02', '2023-01-19 22:35:24', '《稻香》是周杰伦演唱的一首歌曲，由周杰伦作词、作曲，黄雨勋编曲，收录在周杰伦2008年10月15日发行的专辑《魔杰座》中；周杰伦在接受媒体采访时表示，《稻香》是因5·12汶川地震创作的。\n2009年这首歌曲获得第20届台湾金曲奖最佳年度歌曲奖、雪碧榜中国原创音乐流行榜港台地区歌曲奖等奖项。', '1341620898007281665', NULL, '0', '周杰伦', '2c95be04-9806-11ed-a111-005056c00001', '1441610450502848533', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('59', '周杰伦 - 烟花易冷.flac', 'http://175.178.69.253:81/upload/node4/4c6655d7d5dc42b1a491f8a0c4138413.flac', '3', 'audio', '2023-01-19 22:36:15', '2023-01-19 22:41:00', '《烟花易冷》是方文山作词，黄雨勋编曲，周杰伦作曲并演唱的一首歌曲，收录在周杰伦2010年5月18日发行的专辑《跨时代》中。\n2011年，该曲获得2010年度北京流行音乐典礼“年度金曲奖”。', '1341620898007281665', NULL, '0', '周杰伦', '9f68e260-9806-11ed-a111-005056c00001', '1441610450502848543', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('61', '周杰伦 - 夜曲.flac', 'http://175.178.69.253:81/upload/node1/eefa051169454bf9ab1ccaa313febf8e.flac', '3', 'audio', '2023-01-19 22:42:07', '2023-01-19 22:43:23', '《夜曲》是周杰伦演唱的一首歌曲，由方文山作词，周杰伦作曲，林迈可编曲，收录在周杰伦2005年11月1日发行的专辑《11月的萧邦》中。\n2005年，该曲获得雪碧榜港台金曲、9+2音乐先锋榜年度先锋金曲。2006年，该曲获得全球华语音乐榜中榜年度最佳歌曲等多个奖项。', '1341620898007281665', NULL, '0', '周杰伦', '71763b0c-9807-11ed-a111-005056c00001', '1441610450502848545', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('63', '周杰伦 - 龙卷风.flac', 'http://175.178.69.253:81/upload/node4/f74da90133ed48638193cc072773a217.flac', '3', 'audio', '2023-01-19 22:44:17', '2023-01-19 22:45:25', '《龙卷风》是周杰伦演唱的一首歌曲，由徐若瑄作词，周杰伦作曲，钟兴民编曲，收录于周杰伦2000年11月7日发行的首张个人专辑《Jay》中。\n2001年，该歌曲获得新城劲爆卡拉OK歌曲奖。', '1341620898007281665', NULL, '0', '周杰伦', 'bf261438-9807-11ed-a111-005056c00001', '1441610450502848539', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('65', '周杰伦 - 霍元甲.flac', 'http://175.178.69.253:81/upload/node3/e632ad8073b24f76a8ca17e6d9a812ae.flac', '3', 'audio', '2023-01-19 23:01:16', '2023-01-19 23:06:51', '《霍元甲》是周杰伦演唱的一首歌曲，由方文山作词，周杰伦作曲，洪敬尧编曲，收录于2006年1月20日发行的同名EP《霍元甲》中。该曲是电影《霍元甲》的同名主题曲。\n2007年，该曲获得第26届香港电影金像奖最佳原创电影歌曲提名，周杰伦凭借该曲获得第18届台湾金曲奖最佳单曲制作人奖。', '1341620898007281665', NULL, '0', '周杰伦', '1cfdbf84-980a-11ed-a111-005056c00001', '1441610450502848537', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('67', '周杰伦 - 断了的弦.flac', 'http://175.178.69.253:81/upload/node5/b5c8a23a9aeb4fb7963a93b5a46d034c.flac', '3', 'audio', '2023-01-19 23:13:45', '2023-01-19 23:14:28', '《断了的弦》是周杰伦演唱的一首歌曲，由方文山作词，周杰伦作曲，钟兴民编曲，收录于周杰伦于2003年11月13日发行的EP《寻找周杰伦》中 。该曲是电影《寻找周杰伦》的插曲。', '1341620898007281665', NULL, '0', '周杰伦', 'dbf9d960-980b-11ed-a111-005056c00001', '1441610450502848535', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('69', '周杰伦 - 东风破.flac', 'http://175.178.69.253:81/upload/node3/a56c134452cc466e8596c39d9c4fb0bc.flac', '3', 'audio', '2023-01-19 23:15:54', '2023-01-19 23:16:39', '《东风破》是周杰伦演唱的一首歌曲，由周杰伦谱曲，方文山填词，林迈可编曲，收录在周杰伦2003年7月31日发行的个人第四张专辑《叶惠美》中。\n2004年，该歌曲获得第四届华语流行乐传媒大奖十大单曲奖、第11届中国歌曲排行榜港台地区最受欢迎歌曲奖、MusicRadio中国TOP排行榜台港地区年度歌曲和第七届中央电视台音乐电视大赛港台及海外华语最佳MV作品奖等奖项，方文山凭借该歌曲获得第四届百事音乐风云榜年度港台及海外华人最佳作词奖。', '1341620898007281665', NULL, '0', '周杰伦', '295ca3fc-980c-11ed-a111-005056c00001', '1441610450502848534', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('71', '蔡依林_周杰伦 - 布拉格广场.flac', 'http://175.178.69.253:81/upload/node5/a607608ec20b46e2abbeaf3e704db6d6.flac', '3', 'audio', '2023-01-19 23:19:12', '2023-01-19 23:20:20', '《布拉格广场》是蔡依林、周杰伦演唱的歌曲，由方文山作词、周杰伦作曲、钟兴民编曲，收录于蔡依林2003年3月7日发行的专辑《看我72变》中。\n2004年5月，钟兴民在第15届台湾金曲奖颁奖典礼上凭借该曲获得“最佳编曲人奖” 。', '1341623527018004481', NULL, '0', '蔡依林,周杰伦', '9fd8ac18-980c-11ed-a111-005056c00001', '1441610450502848530', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('73', '周杰伦_费玉清 - 千里之外.flac', 'http://175.178.69.253:81/upload/node4/7c51289e75fd427484871b63aeee0545.flac', '3', 'audio', '2023-01-19 23:20:59', '2023-01-19 23:21:34', '《千里之外》是周杰伦、费玉清演唱的一首歌曲，由方文山作词，周杰伦作曲，林迈可编曲，收录在周杰伦2006年9月5日发行的专辑《依然范特西》中，是周杰伦的代表作品之一。该歌曲另有费玉清的独唱版本，收录于费玉清2007年4月20日发行的专辑《回想曲青青校树》中。\n2007年，该歌曲获得了第十三届全球华语音乐榜中榜年度最佳歌曲奖、第29届十大中文金曲全国最受欢迎中文歌曲奖、第7届蒙牛酸酸乳音乐风云榜年度最佳歌曲奖。', '1341620898007281665', NULL, '0', '费玉清,周杰伦', 'df6597f4-980c-11ed-a111-005056c00001', '1441610450502848542', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('75', '周杰伦 - 超人不会飞.flac', 'http://175.178.69.253:81/upload/node3/98f52b4365df44efb76e4c8e046f006d.flac', '3', 'audio', '2023-01-19 23:22:15', '2023-01-19 23:22:52', '《超人不会飞》是周杰伦演唱的一首歌曲，由周杰伦填词、谱曲，林迈可编曲，收录在周杰伦2010年5月18日发行的专辑《跨时代》中。', '1341620898007281665', NULL, '0', '周杰伦', '0ccd4820-980d-11ed-a111-005056c00001', '1441610450502848532', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('77', '周杰伦 - 本草纲目.flac', 'http://175.178.69.253:81/upload/node5/1cabe4eabef547688090a4c58ad2c82e.flac', '3', 'audio', '2023-01-19 23:24:16', '2023-01-19 23:24:54', '《本草纲目》是周杰伦演唱的一首歌曲，由方文山作词，周杰伦作曲，林迈可编曲，收录在周杰伦2006年9月5日发行的专辑《依然范特西》中。 \n周杰伦在2009年春节联欢晚会上与宋祖英以“英伦组合”合唱该歌曲。', '1341620898007281665', NULL, '0', '周杰伦', '548e934c-980d-11ed-a111-005056c00001', '1441610450502848531', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('79', '周杰伦 - 兰亭序.mp3', 'http://175.178.69.253:81/upload/node1/d8ed3d9659b843ceb776d603cc068bef.mp3', '3', 'audio', '2023-01-19 23:26:02', '2023-01-19 23:26:46', '《兰亭序》是周杰伦演唱的一首歌曲，由周杰伦作曲，方文山填词，钟兴民编曲，收录在周杰伦2008年10月15日发行的专辑《魔杰座》中。\n2011年，周杰伦在央视春晚上演唱了这首歌曲，并获得了2011年CCTV春晚我最喜爱的春节联欢晚会评选歌舞类节目三等奖。\n', '1341623527018004481', NULL, '0', '周杰伦', '93d6d508-980d-11ed-a111-005056c00001', '1441610450502848538', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('81', '黄安 - 新鸳鸯蝴蝶梦.mp3', 'http://175.178.69.253:81/upload/node3/73c11e1aac3c4b3db893ca711bb78ab5.mp3', '3', 'audio', '2023-01-19 23:27:37', '2023-01-19 23:29:16', '《新鸳鸯蝴蝶梦》是1993年台湾电视剧《包青天》的主题曲，由黄安演唱、填词并作曲，詹宏达编曲，最早收录于1993年2月1日发行的同名专辑《新鸳鸯蝴蝶梦》中。', '1537114827246292994', NULL, '0', '黄安', 'ccd71e24-980d-11ed-a111-005056c00001', '1441610450502848527', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('83', '李昕融_樊桐舟_李凯稠 - 你笑起来真好看.mp3', 'http://175.178.69.253:81/upload/node1/6f159e4ade6340cfa877508f28457289.mp3', '3', 'audio', '2023-01-19 23:30:01', '2023-01-19 23:30:37', '《你笑起来真好看》是由周兵作词，李凯稠作曲，李昕融、樊桐舟、李凯稠共同演唱的歌曲，于2020年10月26日以单曲形式发行。\n2020年，该曲获得中国当代歌曲创作精品工程“听见中国听见你”年度优秀歌曲奖。', '1341620898007281665', NULL, '0', '李昕融,樊桐舟,李凯稠', '228be130-980e-11ed-a111-005056c00001', '1441610450502848520', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('85', '郑中基 - 无赖.mp3', 'http://175.178.69.253:81/upload/node2/0cacaed1d0e24dd8bf783d6126981cd3.mp3', '3', 'audio', '2023-01-19 23:31:47', '2023-01-19 23:32:27', '《无赖》是郑中基演唱的一首粤语歌曲，由李峻一填词、作曲，收录在郑中基2005年6月由金牌大风唱片发行的粤语专辑《Before After》中。该歌曲是电影《龙咁威2之皇母娘娘呢》的主题曲。\n2005年12月该歌曲获得新城劲爆歌曲、劲爆卡拉OK歌曲两个奖项；2006年获得第28届香港十大中文金曲、2005年度十大劲歌金曲金曲奖。', '1341620898007281665', NULL, '0', '郑中基', '60f338cc-980e-11ed-a111-005056c00001', '1441610450502848516', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('87', '许嵩 - 如果当时.mp3', 'http://175.178.69.253:81/upload/node5/40ca5064ce1e4df594ab7bbfe53b7b8d.mp3', '3', 'audio', '2023-01-19 23:33:30', '2023-01-19 23:34:11', '《如果当时》是许嵩首张个人专辑《自定义》的一首主打歌曲，创作工作均由许嵩独自完成。发行于2009年1月10日。\n这首歌是一首构思独特的养耳之作，具有浓厚的中国风味道。', '1341623527018004481', NULL, '0', '许嵩', '9f059298-980e-11ed-a111-005056c00001', '1431054811305213953', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('89', '周杰伦 - 告白气球.mp3', 'http://175.178.69.253:81/upload/node4/33e764e16a3f43dfa720967f8a95b9d8.mp3', '3', 'audio', '2023-01-19 23:34:58', '2023-01-19 23:35:44', '《告白气球》是周杰伦演唱的一首歌曲，由方文山作词，周杰伦作曲，林迈可编曲，收录于周杰伦2016年6月24日发行的录音室专辑《周杰伦的床边故事》中。\n2017年1月，这首歌曲获得Billboard Radio China 2016年度十大金曲奖；同年，该歌曲入围了第28届金曲奖最佳年度歌曲奖。', '1341620898007281665', NULL, '0', '周杰伦', 'd3b03d34-980e-11ed-a111-005056c00001', '1429356225781764097', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('91', '丸子呦 - 广寒宫.mp3', 'http://175.178.69.253:81/upload/node4/c62266fb46004a96954f1c88e57999ea.mp3', '3', 'audio', '2023-01-19 23:36:41', '2023-01-19 23:37:17', '《广寒宫》是2019年4月30日丸子哟发布演唱的古风歌曲。作曲 : 刘凤瑶作词 : 蒋柽，编曲：侯贻强 / EZ-Mitchell。', '1341620898007281665', NULL, '0', '丸子呦', '10b76890-980f-11ed-a111-005056c00001', '1429356501397868545', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('93', '艾辰 - 错位时空.mp3', 'http://175.178.69.253:81/upload/node2/a673b6697e4142e5b24e5347b2b32fe8.mp3', '3', 'audio', '2023-01-19 23:38:15', '2023-01-19 23:39:12', '《错位时空》是周仁作词，张博文作曲，艾辰演唱的歌曲，由网易云音乐飓风工作室出品，于2021年1月1日发行。', '1341620898007281665', NULL, '0', '艾辰', '48b3881c-980f-11ed-a111-005056c00001', '1429355987293638657', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('95', '银临 - 棠梨煎雪.mp3', 'http://175.178.69.253:81/upload/node5/3db5f8ab95cc45debbac3238b2178336.mp3', '3', 'audio', '2023-01-19 23:39:53', '2023-01-19 23:40:24', '《棠梨煎雪》是一首银临演唱的古风歌曲，收录于2013年12月15日发行的专辑《腐草为萤》', '1341620898007281665', NULL, '0', '银临', '83890668-980f-11ed-a111-005056c00001', '1429356956618264577', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('97', '蔡依林 - 日不落.mp3', 'http://175.178.69.253:81/upload/node3/bea227b2276e4ff08ba80c78bb135c28.mp3', '3', 'audio', '2023-01-19 23:41:58', '2023-01-19 23:42:48', '《日不落》是中国台湾流行音乐女歌手蔡依林演唱的一首歌曲，翻唱自BWO的《Sunshine in the Rain》，由崔惟楷重新填词，Bodies Without Organs作曲，收录于蔡依林2007年09月21日发行的专辑《特务J》中，亦是音乐电影《记忆的裂痕》中的背景音乐。\n该歌曲发行后获得第六届HITO流行音乐奖年度听众最爱歌曲、第十五届北京流行音乐典礼年度金曲和第八届全球华语歌曲排行榜最受欢迎二十大金曲等奖项。2008年1月《日不落》获得中国台湾Hit Fm百首单曲冠军。', '1341620898007281665', NULL, '0', '蔡依林', 'cdac8484-980f-11ed-a111-005056c00001', '1429358833586081793', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('99', '要不要买菜 - 下山.mp3', 'http://175.178.69.253:81/upload/node3/b66ce02154434655b43cd82eb20354f5.mp3', '3', 'audio', '2023-01-19 23:44:04', '2023-01-19 23:44:41', '《下山》是由朱斌语作词作曲，要不要买菜演唱的歌曲，发行于2019年11月22日。\n2021年1月23日，该曲获得第二届腾讯音乐娱乐盛典年度十大热歌奖。', '1341620898007281665', NULL, '0', '要不要买菜', '18e62d90-9810-11ed-a111-005056c00001', '1429356593961963521', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('101', '胡歌 - 逍遥叹.mp3', 'http://175.178.69.253:81/upload/node4/9e18868a6555416aa6b8c50eb24f25d4.mp3', '3', 'audio', '2023-01-19 23:45:34', '2023-01-19 23:46:10', '《逍遥叹》是电视剧《仙剑奇侠传》的插曲，由陈宇任（Funck）作词、作曲，屠颖编曲，郭文宗制作，胡歌演唱，收录在华研国际音乐2005年1月25日发行的电视剧《仙剑奇侠传》原声带中 。', '1341620898007281665', NULL, '0', '胡歌', '4e98ab3c-9810-11ed-a111-005056c00001', '1429356560529166337', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('103', '黎林添娇 - 星月糖.mp3', 'http://175.178.69.253:81/upload/node4/bed7739d71414a95a43694a20ec69e9a.mp3', '3', 'audio', '2023-01-19 23:47:15', '2023-01-19 23:47:51', '《星月糖》是漠飞作词，王鹏作曲，黎林添娇演唱的一首歌。', '1341620898007281665', NULL, '0', '黎林添娇', '89f69268-9810-11ed-a111-005056c00001', '1441610165923516417', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('105', 'yihuik苡慧 - 银河与星斗.mp3', 'http://175.178.69.253:81/upload/node5/f96ff9b14ce94f8e8746ef8738614fcd.mp3', '3', 'audio', '2023-01-19 23:48:33', '2023-01-19 23:49:07', '《银河与星斗》是由李昀格和刘思情作词，轮子作曲，yihuik苡慧演唱的歌曲，发行于2021年5月30日。收录于同名专辑《银河与星斗》中。', '1341620898007281665', NULL, '0', 'yihuik苡慧', 'b9689184-9810-11ed-a111-005056c00001', '1441610450502848513', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('107', '汪睿 - 桃花笑.mp3', 'http://175.178.69.253:81/upload/node4/424ca662e7d84e8486eb5bac29f858f0.mp3', '3', 'audio', '2023-01-19 23:50:01', '2023-01-19 23:51:12', '《桃花笑》为林依晨、张彬彬领衔主演的电视剧《小女花不弃》中的插曲，由汪睿演唱，由青萝子作词，西门振作曲。该歌曲温馨喜庆，旋律轻快欢乐，歌词郎朗上口，配上汪睿独特可爱的嗓音，好听又为剧情发展烘托气氛。', '1341620898007281665', NULL, '0', '汪睿', 'ed9dbe00-9810-11ed-a111-005056c00001', '1429356715475144706', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('109', '陈一发儿 - 童话镇.mp3', 'http://175.178.69.253:81/upload/node5/99e4a13f475144c7b0a984dc50f67a84.mp3', '3', 'audio', '2023-01-19 23:51:54', '2023-01-19 23:58:06', '《童话镇》是由竹君作词，暗杠作曲，陈一发儿翻唱的流行歌曲。该曲女声版本在云音乐热歌榜连续两周榜首，并最终入选2016年度云音乐最热歌曲第五名，成为陈一发儿的代表作之一。', '1341620898007281665', NULL, '0', '陈一发儿', '3100b81c-9811-11ed-a111-005056c00001', '1429356687457193986', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('111', '王胜男_花粥 - 出山.mp3', 'http://175.178.69.253:81/upload/node1/ebd577c32a8d448c8349af779d36110a.mp3', '3', 'audio', '2023-01-19 23:52:41', '2023-01-19 23:58:14', '《出山》是由花粥作词、作曲，王胜男和花粥演唱的歌曲，正式发行于2018年9月28日。背景伴奏原曲是Bachbeats创作的《Super Love》。', '1341620898007281665', NULL, '0', '王胜男,花粥', '4d41b0c4-9811-11ed-a111-005056c00001', '1429355954762616834', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('113', '花僮 - 笑纳.mp3', 'http://175.178.69.253:81/upload/node4/1ea804cfdda948ae8901b7d7cd670cb8.mp3', '3', 'audio', '2023-01-19 23:53:18', '2023-01-19 23:58:22', '《笑纳》是周仁作词，古月作曲，韩珂编曲，花僮演唱的歌曲，发行于2020年8月26日。收录于同名专辑《笑纳》中。', '1341620898007281665', NULL, '0', '花僮', '63045e8c-9811-11ed-a111-005056c00001', '1429360419737636866', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('115', '深海鱼子酱 - 千千万万.mp3', 'http://175.178.69.253:81/upload/node1/e74d47b36a3b47f99da3bc1ca23320ff.mp3', '3', 'audio', '2023-01-19 23:53:55', '2023-01-19 23:57:57', '《千千万万》是深海鱼子酱演唱的歌曲，发行于2022年1月13日，收录于专辑《千千万万(粤语版)》中。', '1341620898007281665', NULL, '0', '深海鱼子酱', '78f4d314-9811-11ed-a111-005056c00001', '1429358893971476482', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('117', '流芒菌 - 红昭愿.mp3', 'http://175.178.69.253:81/upload/node4/fa9aa526d024481b9c1c5cbdc5ae2ab0.mp3', '3', 'audio', '2023-01-19 23:54:29', '2023-01-19 23:57:44', '《红昭愿》是来自音阙诗听音乐社的一首原创作品，由荒唐客作词，殇小瑾作曲，流茫菌演唱的一首歌。正式发行于2017年1月11日。大量的不重复处理让歌曲呈现更高的耐听感，时时刻刻都是新鲜的元素！据社长也亦是《红昭愿》这首歌的制作人殇小谨介绍：“魔性的开场loop人声采样，是我们的第七版创意。和声的配唱模式，是我们的第三版创意。编曲的整体搭配，包括中国风古筝元素的加入，是我们的第三版创意。”', '1341620898007281665', NULL, '0', '流芒菌', '8d62c64c-9811-11ed-a111-005056c00001', '1429358962762256386', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('119', '张韶涵 - 淋雨一直走.mp3', 'http://175.178.69.253:81/upload/node2/fc4f4b3713174e57a9e88cc55e9d009f.mp3', '3', 'audio', '2023-01-19 23:55:08', '2023-01-19 23:57:32', '《淋雨一直走》是张韶涵演唱的一首歌曲，收录在张韶涵发行的专辑《有形的翅膀》中。\n2012年12月这首歌曲获得第20届中国歌曲排行榜年度金曲奖和最佳编曲奖，2013年4月获得Music Radio中国TOP排行榜年度金曲奖。', '1341620898007281665', NULL, '0', '张韶涵', 'a4fa8234-9811-11ed-a111-005056c00001', '1429359285337788418', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('120', '千百顺 - 很任性.flac', 'http://175.178.69.253:81/upload/node1/d218ea8dc46e437a884778f53e27a590.flac', '3', 'audio', '2023-01-27 22:08:25', '2023-01-27 22:09:57', '《很任性》是由高进作词、作曲，千百顺演唱的歌曲，发行于2014年12月24日。收录于同名专辑《很任性》中。', '1341620898007281665', NULL, '0', '千百顺,很任性,任性姐', '0e32170a-9e4c-11ed-903f-005056c00001', '1587737315629010946', '0');
INSERT INTO `boot_sys_resource_audit` (`id`, `title`, `url`, `status`, `code`, `create_date`, `update_date`, `remark`, `creator`, `editor`, `del_flag`, `tags`, `process_instance_id`, `resource_id`, `version`) VALUES ('122', '测试', 'https://koushenhai.oss-cn-shenzhen.aliyuncs.com/d5540d99f3324e528f48a68b87a5b62f.jpg', '3', 'image', '2023-01-30 21:53:04', '2023-01-30 21:55:49', '测试', '1341620898007281665', NULL, '0', '测试', '68d8f3de-a0a5-11ed-996a-005056c00001', '1587737315629010957', '3');
-- ------------------------------------资源------------------------------------

-- ------------------------------------角色------------------------------------
CREATE TABLE `boot_sys_role` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                 `name` varchar(50) NOT NULL COMMENT '角色名称',
                                 `creator` bigint(20) NOT NULL COMMENT '创建人',
                                 `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                 `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                 `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                 `del_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1已删除 0未删除',
                                 `sort` int(11) DEFAULT '1' COMMENT '排序',
                                 `dept_id` bigint(20) DEFAULT NULL COMMENT '部门id',
                                 `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';
INSERT INTO `boot_sys_role` (`id`, `name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `dept_id`, `version`) VALUES ('139167754288778856', '游客', '1341620898007281665', '1341620898007281665', '2021-11-27 17:11:15', '2022-10-09 14:18:30', '0', '10', '1535887940687765505', '0');
INSERT INTO `boot_sys_role` (`id`, `name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `dept_id`, `version`) VALUES ('139167754288778857', '管理员', '1341620898007281665', '1341620898007281665', '2021-11-27 17:11:19', '2023-01-19 17:58:11', '0', '100', '1535887940687765505', '0');
INSERT INTO `boot_sys_role` (`id`, `name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `dept_id`, `version`) VALUES ('1535949666183573505', '测试', '1341620898007281665', '1341620898007281665', '2022-06-12 19:38:32', '2022-11-23 17:05:39', '0', '50', '1535887940687765505', '0');
INSERT INTO `boot_sys_role` (`id`, `name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `sort`, `dept_id`, `version`) VALUES ('1578676133601415170', '备胎', '1341623527018004481', '1341620898007281665', '2022-10-08 17:18:15', '2022-12-11 12:07:37', '0', '1', '1535881356595175426', '0');
-- ------------------------------------角色------------------------------------

-- ------------------------------------用户------------------------------------
CREATE TABLE `boot_sys_user` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                 `username` varchar(20) NOT NULL COMMENT '用户名',
                                 `password` varchar(100) NOT NULL COMMENT '密码',
                                 `super_admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '超级管理员：0否 1是',
                                 `creator` bigint(20) DEFAULT NULL COMMENT '创建人',
                                 `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                 `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                 `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                 `del_flag` tinyint(1) NOT NULL COMMENT '1已删除 0未删除',
                                 `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
                                 `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 0正常 1停用',
                                 `img_url` varchar(400) NOT NULL DEFAULT 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fi.qqkou.com%2Fi%2F1a3626475345x3078425090b26.jpg&refer=http%3A%2F%2Fi.qqkou.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1657902941&t=73f98a243f12f3eabe1dce87d2b6401b' COMMENT '头像url',
                                 `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
                                 `dept_id` bigint(20) DEFAULT NULL COMMENT '部门id',
                                 `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
                                 `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户id',
                                 PRIMARY KEY (`id`),
                                 UNIQUE KEY `idx_username` (`username`) USING BTREE,
                                 UNIQUE KEY `idx_email` (`email`) USING BTREE,
                                 UNIQUE KEY `idx_mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';
INSERT INTO `boot_sys_user` (`id`, `username`, `password`, `super_admin`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `email`, `status`, `img_url`, `mobile`, `dept_id`, `version`, `tenant_id`) VALUES ('1341620898007281665', 'admin', '$2a$10$xuvqs7rNKn9KeRwdRdgq3.v.p/AFhFDDo97H9dSEaTpLM5DLtLGZS', '1', '1341620898007281665', '1341620898007281665', '2021-11-29 20:13:11', '2022-10-26 19:24:55', '0', '2413176044@qq.com', '0', 'http://175.178.69.253:81/upload/node3/7904fff1c08a4883b40f1ee0336017dc.webp', '18974432576', '1535887940687765505', '0', '0');
INSERT INTO `boot_sys_user` (`id`, `username`, `password`, `super_admin`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `email`, `status`, `img_url`, `mobile`, `dept_id`, `version`, `tenant_id`) VALUES ('1341623527018004481', 'test', '$2a$10$cdEXE9uaSqkqoKa.73.XBuhHFPiOLomStfzUlmkuVqfA2wldqEfIG', '0', '1341620898007281665', '1341620898007281665', '2020-12-23 13:55:50', '2022-11-01 13:09:55', '0', '2314176044@qq.com', '0', 'http://175.178.69.253:81/upload/node2/b4e5bb3944a046a6bb54f8bfd2c830c1.webp', '18888888888', '1535881356595175426', '0', '0');
INSERT INTO `boot_sys_user` (`id`, `username`, `password`, `super_admin`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `email`, `status`, `img_url`, `mobile`, `dept_id`, `version`, `tenant_id`) VALUES ('1421312053736804354', 'koush5', '$2a$10$ysAmruc249SiAUpIqQzrpeM8wcdpgIJ6nEdtsXQnDrBgvLZkt7tJ6', '0', '1341620898007281665', '1341620898007281665', '2021-07-31 11:29:35', '2022-11-04 00:13:05', '0', 'YY@qq.com', '0', 'https://ruoyi.setworld.net/img/profile.473f5971.jpg', 'xxxxx', '1535881356595175426', '0', '0');
INSERT INTO `boot_sys_user` (`id`, `username`, `password`, `super_admin`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `email`, `status`, `img_url`, `mobile`, `dept_id`, `version`, `tenant_id`) VALUES ('1537111101311844353', 'wumh5', '$2a$10$KZHkKBF2jUGaOJDp4YcgeuVt1gBhteJC990OQWuOoRmyYQILBzQlG', '0', '1341620898007281665', '1341620898007281665', '2022-06-16 00:33:39', '2022-10-24 18:40:20', '0', NULL, '1', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fi.qqkou.com%2Fi%2F1a3626475345x3078425090b26.jpg&amp;refer=http%3A%2F%2Fi.qqkou.com&amp;app=2002&amp;size=f9999,10000&amp;q=a80&amp;n=0&amp;g=0n&amp;fmt=auto?sec=1657902941&amp;t=73f98a243f12f3eabe1dce87d2b6401b', NULL, '1535858679453085698', '0', '0');
INSERT INTO `boot_sys_user` (`id`, `username`, `password`, `super_admin`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`, `email`, `status`, `img_url`, `mobile`, `dept_id`, `version`, `tenant_id`) VALUES ('1537114827246292994', 'laok5', '$2a$10$b.40TGb7W19z5Jryo3FBuOEDaX2c0OAqZHnRnCkXCPI67ru5G7Nha', '0', '1341620898007281665', '1341620898007281665', '2022-06-16 00:48:28', '2022-10-26 19:40:13', '0', NULL, '0', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fi.qqkou.com%2Fi%2F1a3626475345x3078425090b26.jpg&amp;refer=http%3A%2F%2Fi.qqkou.com&amp;app=2002&amp;size=f9999,10000&amp;q=a80&amp;n=0&amp;g=0n&amp;fmt=auto?sec=1657902941&amp;t=73f98a243f12f3eabe1dce87d2b6401b', NULL, '1535881356595175426', '0', '0');
-- ------------------------------------用户------------------------------------

-- ------------------------------------低代码------------------------------------
CREATE TABLE `gen_field_type` (
                                  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                  `column_type` varchar(200) DEFAULT NULL COMMENT '字段类型',
                                  `attr_type` varchar(200) DEFAULT NULL COMMENT '属性类型',
                                  `package_name` varchar(200) DEFAULT NULL COMMENT '属性包名',
                                  `creator` bigint(20) DEFAULT NULL COMMENT '创建人',
                                  `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                  `del_flag` tinyint(1) NOT NULL COMMENT '1已删除 0未删除',
                                  PRIMARY KEY (`id`),
                                  UNIQUE KEY `column_type` (`column_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='字段类型管理';
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1391677542887788567', 'datetime', 'Date', 'java.util.Date', '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:45', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1535858679453085698', 'date', 'Date', 'java.util.Date', '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:45', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1535859148908949506', 'tinyint', 'Integer', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:45', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1535859326311231489', 'smallint', 'Integer', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:46', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1535859588534923265', 'mediumint', 'Integer', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:47', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1535878154046939137', 'int', 'Integer', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:47', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1535881096963563522', 'integer', 'Integer', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:47', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1535881356595175426', 'bigint', 'Long', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:47', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1535886982654205953', 'float', 'Float', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:47', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1535887129341599746', 'double', 'Double', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:47', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1535887276649750530', 'decimal', 'BigDecimal', 'java.math.BigDecimal', '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:47', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1535887450809835521', 'bit', 'Boolean', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:47', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1535887779873955841', 'char', 'String', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:47', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1535887940687765505', 'varchar', 'String', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:47', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1535888146045083649', 'tinytext', 'String', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:47', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1535888341252186114', 'text', 'String', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:47', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1537444981390794754', 'mediumtext', 'String', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:48', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1537447512825225218', 'longtext', 'String', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:48', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1538469199368712193', 'timestamp', 'Date', 'java.util.Date', '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:48', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1539250224424394753', 'NUMBER', 'Integer', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:48', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1539251440843857922', 'BINARY_INTEGER', 'Integer', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:48', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1539265093588545538', 'BINARY_FLOAT', 'Float', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:48', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1539396453854629890', 'BINARY_DOUBLE', 'Double', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:48', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1539402478934646785', 'VARCHAR2', 'String', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:48', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1539615028590673921', 'NVARCHAR', 'String', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:48', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1539989085181972481', 'NVARCHAR2', 'String', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:48', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1540000886082768897', 'CLOB', 'String', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:48', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1540001496240754689', 'int8', 'Long', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:48', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1540001809446211586', 'int4', 'Integer', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:48', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1540001992288505857', 'int2', 'Integer', NULL, '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:48', '0');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `creator`, `editor`, `create_date`, `update_date`, `del_flag`) VALUES ('1545035717690912769', 'numeric', 'BigDecimal', 'java.math.BigDecimal', '1341620898007281665', '1341620898007281665', '2022-07-25 10:16:54', '2022-07-25 10:21:48', '0');
-- ------------------------------------低代码------------------------------------

-- ------------------------------------认证------------------------------------
CREATE TABLE `oauth2_authorization` (
                                        `id` varchar(100) NOT NULL,
                                        `registered_client_id` varchar(100) NOT NULL,
                                        `principal_name` varchar(200) NOT NULL,
                                        `authorization_grant_type` varchar(100) NOT NULL,
                                        `authorized_scopes` varchar(1000) DEFAULT NULL,
                                        `attributes` blob,
                                        `state` varchar(500) DEFAULT NULL,
                                        `authorization_code_value` blob,
                                        `authorization_code_issued_at` timestamp NULL DEFAULT NULL,
                                        `authorization_code_expires_at` timestamp NULL DEFAULT NULL,
                                        `authorization_code_metadata` blob,
                                        `access_token_value` blob,
                                        `access_token_issued_at` timestamp NULL DEFAULT NULL,
                                        `access_token_expires_at` timestamp NULL DEFAULT NULL,
                                        `access_token_metadata` blob,
                                        `access_token_type` varchar(100) DEFAULT NULL,
                                        `access_token_scopes` varchar(1000) DEFAULT NULL,
                                        `oidc_id_token_value` blob,
                                        `oidc_id_token_issued_at` timestamp NULL DEFAULT NULL,
                                        `oidc_id_token_expires_at` timestamp NULL DEFAULT NULL,
                                        `oidc_id_token_metadata` blob,
                                        `refresh_token_value` blob,
                                        `refresh_token_issued_at` timestamp NULL DEFAULT NULL,
                                        `refresh_token_expires_at` timestamp NULL DEFAULT NULL,
                                        `refresh_token_metadata` blob,
                                        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `oauth2_authorization_consent` (
                                                `registered_client_id` varchar(100) NOT NULL,
                                                `principal_name` varchar(200) NOT NULL,
                                                `authorities` varchar(1000) NOT NULL,
                                                PRIMARY KEY (`registered_client_id`,`principal_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `oauth2_registered_client` (
                                            `id` varchar(100) NOT NULL,
                                            `client_id` varchar(100) NOT NULL,
                                            `client_id_issued_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                            `client_secret` varchar(200) DEFAULT NULL,
                                            `client_secret_expires_at` timestamp NULL DEFAULT NULL,
                                            `client_name` varchar(200) NOT NULL,
                                            `client_authentication_methods` varchar(1000) NOT NULL,
                                            `authorization_grant_types` varchar(1000) NOT NULL,
                                            `redirect_uris` text,
                                            `scopes` varchar(1000) NOT NULL,
                                            `client_settings` varchar(2000) NOT NULL,
                                            `token_settings` varchar(2000) NOT NULL,
                                            PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- ------------------------------------认证------------------------------------

-- ------------------------------------存储过程------------------------------------
-- 存储过程1 开始
# 删除存储过程
DROP PROCEDURE
    IF EXISTS deptIds;

# 创建存储过程
CREATE PROCEDURE deptIds (IN userId BIGINT(20))
BEGIN
# 定义变量值
DECLARE dept_id BIGINT (20);

# 定义变量值
DECLARE s INT DEFAULT 0;

# 接收数据集
DECLARE consume CURSOR FOR SELECT
                                                     boot_sys_dept.id
                           FROM
                               boot_sys_dept,
                               boot_sys_role,
                               boot_sys_role_dept,
                               boot_sys_user,
                               boot_sys_user_role
                           WHERE
                                                         boot_sys_dept.id = boot_sys_role_dept.dept_id
                             AND boot_sys_role_dept.role_id = boot_sys_role.id
                             AND boot_sys_user.id = boot_sys_user_role.user_id
                             AND boot_sys_role.id = boot_sys_user_role.role_id
                             AND boot_sys_user.id = userId
                             AND boot_sys_dept.del_flag = 0
                           GROUP BY
                                                     boot_sys_dept.id;

# 没有数据返回,将变量设置为1
DECLARE CONTINUE HANDLER FOR NOT FOUND
SET s = 1;

# 创建表
CREATE TABLE
    IF NOT EXISTS `temp_boot_sys_dept` (
    `id` BIGINT (20) DEFAULT NULL,
    `uid` BIGINT (20) DEFAULT NULL,
    KEY `idx_id_uid` (`id`, `uid`)
    ) ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

# 删除数据
DELETE
FROM
    temp_boot_sys_dept
WHERE
        uid = userId;

# 打开cosume游标进行程序调用
OPEN consume;

# 将consume赋值给dept_id
FETCH consume INTO dept_id;

WHILE s <> 1 DO
INSERT temp_boot_sys_dept SELECT
                                        id,
                                        userId
                          FROM
                                        boot_sys_dept
                          WHERE
                                            del_flag = 0
                            AND path LIKE concat('%', dept_id, '%');

# 将consume赋值给dept_id
FETCH consume INTO dept_id;


END
WHILE;


# 关闭游标
CLOSE consume;

# 查询
SELECT
    id
FROM
    temp_boot_sys_dept
WHERE
        uid = userId
GROUP BY
    id;

# 提交事务
COMMIT;

END;

# 调用
CALL deptIds ('1');
-- 存储过程1 结束

-- 存储过程2 开始
# 删除存储过程
DROP PROCEDURE
    IF EXISTS updatePath2;

# 创建存储过程
CREATE PROCEDURE updatePath2 (
    IN xid BIGINT (20),
    IN pid BIGINT (20)
        )
BEGIN
	# 定义变量
DECLARE s INT DEFAULT 0;

# 定义变量
DECLARE parpath VARCHAR (2000);

# 定义变量
DECLARE nid BIGINT (20);

# 定义变量
DECLARE npath VARCHAR (2000);

# 接收结果集
DECLARE con1 CURSOR FOR SELECT

                                                                          IF (count(path) > 0, path, '0') AS path
                        FROM
                                                                          boot_sys_dept
                        WHERE
                                                                              id = pid;

# 接收结果集
DECLARE con2 CURSOR FOR SELECT
                              id,
                              path
                        FROM
                              boot_sys_dept
                        WHERE
                                  path LIKE concat('%', xid, '%')
                          AND del_flag = 0
                          AND id <> xid;

# 没有数据后返回,将s=1
DECLARE CONTINUE HANDLER FOR NOT FOUND
SET s = 1;

# 开启游标
OPEN con1;

# 开启游标
OPEN con2;

# 赋值
FETCH con1 INTO parpath;

# 赋值
FETCH con2 INTO nid,
 npath;


WHILE s <> 1 DO
UPDATE boot_sys_dept
SET path = concat(parpath, '/', nid)
WHERE
        id = nid;

# 赋值
FETCH con2 INTO nid,
 npath;


END
WHILE;

# 关闭游标
CLOSE con1;

# 关闭游标
CLOSE con2;

# 修改
UPDATE boot_sys_dept
SET path = concat(parpath, '/', xid)
WHERE
        id = xid;
# 提交事务
COMMIT;

END;

# 调用
CALL updatePath2 ('1', '0');
-- 存储过程2 结束

-- 存储过程3 开始
# 创建存储过程
DROP PROCEDURE
    IF EXISTS updatePath1;

CREATE PROCEDURE updatePath1 (
    IN did BIGINT (20),
    IN pid BIGINT (20)
        )
BEGIN
	# 定义变量
DECLARE s INT DEFAULT 0;


DECLARE nid BIGINT (20);


DECLARE npath VARCHAR (2000);

# 接收数据集
DECLARE consume CURSOR FOR SELECT
                                                               id,
                                                               path
                           FROM
                                                               boot_sys_dept
                           WHERE
                                                                   id = pid;

# 打开游标
OPEN consume;

# 赋值
FETCH consume INTO nid,
 npath;


IF pid = '0' THEN
UPDATE boot_sys_dept
SET path = CONCAT('0/', did)
WHERE
        id = did;


ELSE
UPDATE boot_sys_dept
SET path = CONCAT(npath, '/', did)
WHERE
        id = did;


END
IF;

# 关闭游标
CLOSE consume;

# 提交事务
COMMIT;

END;

# 调用
CALL updatePath1 ('1', '0');
-- 存储过程3 结束
-- ------------------------------------存储过程------------------------------------

-- ------------------------------------分布式事务------------------------------------
CREATE TABLE `undo_log` (
                            `id` bigint(20) NOT NULL AUTO_INCREMENT,
                            `branch_id` bigint(20) NOT NULL,
                            `xid` varchar(100) NOT NULL,
                            `context` varchar(128) NOT NULL,
                            `rollback_info` longblob NOT NULL,
                            `log_status` int(11) NOT NULL,
                            `log_created` datetime NOT NULL,
                            `log_modified` datetime NOT NULL,
                            `ext` varchar(100) DEFAULT NULL,
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- ------------------------------------分布式事务------------------------------------

--
CREATE TABLE `boot_sys_mail` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
                                 `creator` bigint(20) DEFAULT NULL COMMENT '创建人',
                                 `editor` bigint(20) DEFAULT NULL COMMENT '编辑人',
                                 `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                 `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
                                 `del_flag` tinyint(1) NOT NULL COMMENT '1已删除 0未删除',
                                 `username` varchar(50) DEFAULT NULL,
                                 `host` varchar(20) DEFAULT NULL,
                                 `password` varchar(20) DEFAULT NULL,
                                 `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--