/*
 Navicat MySQL Data Transfer

 Source Server         : 0-0本地
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : 0-yuanma-live

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 30/05/2024 16:37:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cmf_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_log`;
CREATE TABLE `cmf_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminid` int(11) NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '管理员',
  `action` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作内容',
  `ip` bigint(20) NOT NULL DEFAULT 0 COMMENT 'IP地址',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_menu`;
CREATE TABLE `cmf_admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父菜单id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `controller`(`controller`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 613 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_admin_menu
-- ----------------------------
INSERT INTO `cmf_admin_menu` VALUES (1, 0, 0, 1, 30, 'admin', 'Plugin', 'default', '', '应用中心', 'cloud', '应用中心');
INSERT INTO `cmf_admin_menu` VALUES (2, 1, 1, 0, 10000, 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理');
INSERT INTO `cmf_admin_menu` VALUES (3, 2, 1, 0, 10000, 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理');
INSERT INTO `cmf_admin_menu` VALUES (4, 2, 2, 0, 10000, 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序');
INSERT INTO `cmf_admin_menu` VALUES (5, 2, 1, 0, 10000, 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子');
INSERT INTO `cmf_admin_menu` VALUES (6, 0, 0, 1, 1, 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口');
INSERT INTO `cmf_admin_menu` VALUES (7, 6, 1, 0, 50, 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理');
INSERT INTO `cmf_admin_menu` VALUES (8, 7, 1, 0, 10000, 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接');
INSERT INTO `cmf_admin_menu` VALUES (9, 7, 2, 0, 10000, 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES (10, 7, 1, 0, 10000, 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接');
INSERT INTO `cmf_admin_menu` VALUES (11, 7, 2, 0, 10000, 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES (12, 7, 2, 0, 10000, 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接');
INSERT INTO `cmf_admin_menu` VALUES (13, 7, 2, 0, 10000, 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序');
INSERT INTO `cmf_admin_menu` VALUES (14, 7, 2, 0, 10000, 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏');
INSERT INTO `cmf_admin_menu` VALUES (15, 6, 1, 0, 10, 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置');
INSERT INTO `cmf_admin_menu` VALUES (16, 15, 2, 0, 10000, 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存');
INSERT INTO `cmf_admin_menu` VALUES (17, 15, 1, 0, 10000, 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板');
INSERT INTO `cmf_admin_menu` VALUES (18, 15, 2, 0, 10000, 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交');
INSERT INTO `cmf_admin_menu` VALUES (19, 15, 1, 0, 10000, 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试');
INSERT INTO `cmf_admin_menu` VALUES (20, 6, 1, 0, 10000, 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理');
INSERT INTO `cmf_admin_menu` VALUES (21, 20, 1, 0, 10000, 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表');
INSERT INTO `cmf_admin_menu` VALUES (22, 20, 1, 0, 10000, 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加');
INSERT INTO `cmf_admin_menu` VALUES (23, 20, 2, 0, 10000, 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存');
INSERT INTO `cmf_admin_menu` VALUES (24, 20, 1, 0, 10000, 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑');
INSERT INTO `cmf_admin_menu` VALUES (25, 20, 2, 0, 10000, 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES (26, 20, 2, 0, 10000, 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除');
INSERT INTO `cmf_admin_menu` VALUES (27, 20, 2, 0, 10000, 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序');
INSERT INTO `cmf_admin_menu` VALUES (28, 20, 1, 0, 10000, 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单');
INSERT INTO `cmf_admin_menu` VALUES (29, 6, 1, 0, 30, 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理');
INSERT INTO `cmf_admin_menu` VALUES (30, 29, 1, 0, 10000, 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航');
INSERT INTO `cmf_admin_menu` VALUES (31, 29, 2, 0, 10000, 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES (32, 29, 1, 0, 10000, 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航');
INSERT INTO `cmf_admin_menu` VALUES (33, 29, 2, 0, 10000, 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES (34, 29, 2, 0, 10000, 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航');
INSERT INTO `cmf_admin_menu` VALUES (35, 29, 1, 0, 10000, 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (36, 35, 1, 0, 10000, 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (37, 35, 2, 0, 10000, 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES (38, 35, 1, 0, 10000, 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (39, 35, 2, 0, 10000, 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES (40, 35, 2, 0, 10000, 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (41, 35, 2, 0, 10000, 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序');
INSERT INTO `cmf_admin_menu` VALUES (42, 1, 1, 1, 10000, 'admin', 'Plugin', 'index', '', '插件管理', '', '插件管理');
INSERT INTO `cmf_admin_menu` VALUES (43, 42, 2, 0, 10000, 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用');
INSERT INTO `cmf_admin_menu` VALUES (44, 42, 1, 0, 10000, 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置');
INSERT INTO `cmf_admin_menu` VALUES (45, 42, 2, 0, 10000, 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交');
INSERT INTO `cmf_admin_menu` VALUES (46, 42, 2, 0, 10000, 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装');
INSERT INTO `cmf_admin_menu` VALUES (47, 42, 2, 0, 10000, 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新');
INSERT INTO `cmf_admin_menu` VALUES (48, 42, 2, 0, 10000, 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件');
INSERT INTO `cmf_admin_menu` VALUES (49, 110, 0, 1, 1, 'admin', 'User', 'default', '', '管理组', '', '管理组');
INSERT INTO `cmf_admin_menu` VALUES (50, 49, 1, 1, 10000, 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理');
INSERT INTO `cmf_admin_menu` VALUES (51, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色');
INSERT INTO `cmf_admin_menu` VALUES (52, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交');
INSERT INTO `cmf_admin_menu` VALUES (53, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色');
INSERT INTO `cmf_admin_menu` VALUES (54, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交');
INSERT INTO `cmf_admin_menu` VALUES (55, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色');
INSERT INTO `cmf_admin_menu` VALUES (56, 50, 1, 0, 10000, 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限');
INSERT INTO `cmf_admin_menu` VALUES (57, 50, 2, 0, 10000, 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交');
INSERT INTO `cmf_admin_menu` VALUES (58, 0, 1, 0, 10000, 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站');
INSERT INTO `cmf_admin_menu` VALUES (59, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原');
INSERT INTO `cmf_admin_menu` VALUES (60, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除');
INSERT INTO `cmf_admin_menu` VALUES (61, 6, 1, 0, 10000, 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理');
INSERT INTO `cmf_admin_menu` VALUES (62, 61, 1, 0, 10000, 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则');
INSERT INTO `cmf_admin_menu` VALUES (63, 61, 2, 0, 10000, 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交');
INSERT INTO `cmf_admin_menu` VALUES (64, 61, 1, 0, 10000, 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑');
INSERT INTO `cmf_admin_menu` VALUES (65, 61, 2, 0, 10000, 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交');
INSERT INTO `cmf_admin_menu` VALUES (66, 61, 2, 0, 10000, 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除');
INSERT INTO `cmf_admin_menu` VALUES (67, 61, 2, 0, 10000, 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用');
INSERT INTO `cmf_admin_menu` VALUES (68, 61, 2, 0, 10000, 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用');
INSERT INTO `cmf_admin_menu` VALUES (69, 61, 2, 0, 10000, 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序');
INSERT INTO `cmf_admin_menu` VALUES (70, 61, 1, 0, 10000, 'admin', 'Route', 'select', '', '选择URL', '', '选择URL');
INSERT INTO `cmf_admin_menu` VALUES (71, 6, 1, 1, 1, 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息');
INSERT INTO `cmf_admin_menu` VALUES (72, 71, 2, 0, 10000, 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交');
INSERT INTO `cmf_admin_menu` VALUES (73, 6, 1, 0, 10000, 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改');
INSERT INTO `cmf_admin_menu` VALUES (74, 73, 2, 0, 10000, 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交');
INSERT INTO `cmf_admin_menu` VALUES (75, 6, 1, 1, 10000, 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置');
INSERT INTO `cmf_admin_menu` VALUES (76, 75, 2, 0, 10000, 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交');
INSERT INTO `cmf_admin_menu` VALUES (77, 6, 1, 0, 10000, 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存');
INSERT INTO `cmf_admin_menu` VALUES (78, 6, 1, 1, 40, 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理');
INSERT INTO `cmf_admin_menu` VALUES (79, 78, 1, 0, 10000, 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片');
INSERT INTO `cmf_admin_menu` VALUES (80, 78, 2, 0, 10000, 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES (81, 78, 1, 0, 10000, 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片');
INSERT INTO `cmf_admin_menu` VALUES (82, 78, 2, 0, 10000, 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES (83, 78, 2, 0, 10000, 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片');
INSERT INTO `cmf_admin_menu` VALUES (84, 78, 1, 0, 10000, 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表');
INSERT INTO `cmf_admin_menu` VALUES (85, 84, 1, 0, 10000, 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加');
INSERT INTO `cmf_admin_menu` VALUES (86, 84, 2, 0, 10000, 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交');
INSERT INTO `cmf_admin_menu` VALUES (87, 84, 1, 0, 10000, 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑');
INSERT INTO `cmf_admin_menu` VALUES (88, 84, 2, 0, 10000, 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交');
INSERT INTO `cmf_admin_menu` VALUES (89, 84, 2, 0, 10000, 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除');
INSERT INTO `cmf_admin_menu` VALUES (90, 84, 2, 0, 10000, 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏');
INSERT INTO `cmf_admin_menu` VALUES (91, 84, 2, 0, 10000, 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示');
INSERT INTO `cmf_admin_menu` VALUES (92, 84, 2, 0, 10000, 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序');
INSERT INTO `cmf_admin_menu` VALUES (93, 6, 1, 0, 10000, 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储');
INSERT INTO `cmf_admin_menu` VALUES (94, 93, 2, 0, 10000, 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交');
INSERT INTO `cmf_admin_menu` VALUES (95, 6, 1, 0, 20, 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理');
INSERT INTO `cmf_admin_menu` VALUES (96, 95, 1, 0, 10000, 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板');
INSERT INTO `cmf_admin_menu` VALUES (97, 95, 2, 0, 10000, 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板');
INSERT INTO `cmf_admin_menu` VALUES (98, 95, 2, 0, 10000, 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装');
INSERT INTO `cmf_admin_menu` VALUES (99, 95, 2, 0, 10000, 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新');
INSERT INTO `cmf_admin_menu` VALUES (100, 95, 2, 0, 10000, 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES (101, 95, 1, 0, 10000, 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES (102, 95, 1, 0, 10000, 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置');
INSERT INTO `cmf_admin_menu` VALUES (103, 95, 1, 0, 10000, 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表');
INSERT INTO `cmf_admin_menu` VALUES (104, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑');
INSERT INTO `cmf_admin_menu` VALUES (105, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES (106, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除');
INSERT INTO `cmf_admin_menu` VALUES (107, 95, 2, 0, 10000, 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES (108, 95, 1, 0, 10000, 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源');
INSERT INTO `cmf_admin_menu` VALUES (109, 95, 1, 0, 10000, 'admin', 'Theme', 'design', '', '模板设计', '', '模板设计');
INSERT INTO `cmf_admin_menu` VALUES (110, 0, 0, 1, 2, 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理');
INSERT INTO `cmf_admin_menu` VALUES (111, 49, 1, 1, 10000, 'admin', 'User', 'index', '', '管理员', '', '管理员管理');
INSERT INTO `cmf_admin_menu` VALUES (112, 111, 1, 0, 10000, 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加');
INSERT INTO `cmf_admin_menu` VALUES (113, 111, 2, 0, 10000, 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交');
INSERT INTO `cmf_admin_menu` VALUES (114, 111, 1, 0, 10000, 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑');
INSERT INTO `cmf_admin_menu` VALUES (115, 111, 2, 0, 10000, 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交');
INSERT INTO `cmf_admin_menu` VALUES (116, 111, 1, 0, 10000, 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改');
INSERT INTO `cmf_admin_menu` VALUES (117, 111, 2, 0, 10000, 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交');
INSERT INTO `cmf_admin_menu` VALUES (118, 111, 2, 0, 10000, 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除');
INSERT INTO `cmf_admin_menu` VALUES (119, 111, 2, 0, 10000, 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员');
INSERT INTO `cmf_admin_menu` VALUES (120, 111, 2, 0, 10000, 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员');
INSERT INTO `cmf_admin_menu` VALUES (121, 0, 1, 0, 10000, 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表');
INSERT INTO `cmf_admin_menu` VALUES (122, 121, 2, 0, 10000, 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件');
INSERT INTO `cmf_admin_menu` VALUES (123, 110, 0, 1, 2, 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组');
INSERT INTO `cmf_admin_menu` VALUES (124, 123, 1, 1, 1, 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户');
INSERT INTO `cmf_admin_menu` VALUES (125, 124, 2, 0, 1, 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑');
INSERT INTO `cmf_admin_menu` VALUES (126, 124, 2, 0, 2, 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用');
INSERT INTO `cmf_admin_menu` VALUES (129, 6, 1, 0, 10000, 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理');
INSERT INTO `cmf_admin_menu` VALUES (130, 129, 1, 0, 10000, 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作');
INSERT INTO `cmf_admin_menu` VALUES (131, 129, 2, 0, 10000, 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交');
INSERT INTO `cmf_admin_menu` VALUES (132, 129, 1, 0, 10000, 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作');
INSERT INTO `cmf_admin_menu` VALUES (162, 1, 1, 0, 10000, 'admin', 'App', 'index', '', '应用管理', '', '应用管理');
INSERT INTO `cmf_admin_menu` VALUES (163, 162, 2, 0, 10000, 'admin', 'App', 'install', '', '应用安装', '', '应用安装');
INSERT INTO `cmf_admin_menu` VALUES (164, 162, 2, 0, 10000, 'admin', 'App', 'update', '', '应用更新', '', '应用更新');
INSERT INTO `cmf_admin_menu` VALUES (165, 162, 2, 0, 10000, 'admin', 'App', 'uninstall', '', '卸载应用', '', '卸载应用');
INSERT INTO `cmf_admin_menu` VALUES (166, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'clear', '', '清空回收站', '', '一键清空回收站');
INSERT INTO `cmf_admin_menu` VALUES (167, 1, 1, 0, 10000, 'admin', 'AppStore', 'apps', '', '应用市场', '', '应用市场');
INSERT INTO `cmf_admin_menu` VALUES (168, 1, 1, 0, 10000, 'admin', 'AppStore', 'plugins', '', '插件市场', '', '插件市场');
INSERT INTO `cmf_admin_menu` VALUES (169, 6, 1, 1, 2, 'admin', 'setting', 'configpri', '', '私密设置', '', '');
INSERT INTO `cmf_admin_menu` VALUES (170, 169, 1, 0, 10000, 'admin', 'setting', 'configpriPost', '', '私密设置提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (171, 6, 1, 1, 10000, 'admin', 'guide', 'set', '', '引导页', '', '');
INSERT INTO `cmf_admin_menu` VALUES (172, 171, 1, 0, 10000, 'admin', 'guide', 'setPost', '', '引导页设置保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (173, 171, 1, 0, 10000, 'admin', 'guide', 'index', '', '引导页管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (174, 173, 1, 0, 10000, 'admin', 'guide', 'add', '', '添加引导页', '', '');
INSERT INTO `cmf_admin_menu` VALUES (175, 173, 1, 0, 10000, 'admin', 'guide', 'addPost', '', '引导页添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (176, 173, 1, 0, 10000, 'admin', 'guide', 'edit', '', '引导页编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (177, 173, 1, 0, 10000, 'admin', 'guide', 'editPost', '', '引导页编辑保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (178, 173, 1, 0, 10000, 'admin', 'guide', 'listOrder', '', '引导页排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (179, 173, 1, 0, 10000, 'admin', 'guide', 'del', '', '引导页删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (180, 49, 1, 1, 10000, 'admin', 'adminlog', 'index', '', '操作日志', '', '');
INSERT INTO `cmf_admin_menu` VALUES (181, 180, 1, 0, 10000, 'admin', 'adminlog', 'del', '', '删除操作日志', '', '');
INSERT INTO `cmf_admin_menu` VALUES (182, 180, 1, 0, 10000, 'admin', 'adminlog', 'export', '', '导出操作日志', '', '');
INSERT INTO `cmf_admin_menu` VALUES (183, 124, 1, 0, 3, 'admin', 'AdminIndex', 'add', '', '添加用户', '', '');
INSERT INTO `cmf_admin_menu` VALUES (184, 124, 1, 0, 4, 'admin', 'AdminIndex', 'addPost', '', '用户添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (185, 124, 1, 0, 5, 'admin', 'AdminIndex', 'edit', '', '编辑用户', '', '');
INSERT INTO `cmf_admin_menu` VALUES (186, 124, 1, 0, 6, 'admin', 'AdminIndex', 'editPost', '', '用户编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (187, 124, 1, 0, 7, 'admin', 'AdminIndex', 'del', '', '删除用户', '', '');
INSERT INTO `cmf_admin_menu` VALUES (188, 124, 1, 0, 8, 'admin', 'AdminIndex', 'setBan', '', '设置用户禁用时间', '', '');
INSERT INTO `cmf_admin_menu` VALUES (189, 124, 1, 0, 9, 'admin', 'AdminIndex', 'cancelBan', '', '启用', '', '');
INSERT INTO `cmf_admin_menu` VALUES (190, 124, 1, 0, 10, 'admin', 'AdminIndex', 'ban', '', '拉黑用户', '', '');
INSERT INTO `cmf_admin_menu` VALUES (191, 124, 1, 0, 11, 'admin', 'AdminIndex', 'cancelLiveBan', '', '解封直播间', '', '');
INSERT INTO `cmf_admin_menu` VALUES (192, 124, 1, 0, 12, 'admin', 'AdminIndex', 'setsuper', '', '设置超管', '', '');
INSERT INTO `cmf_admin_menu` VALUES (193, 124, 1, 0, 13, 'admin', 'AdminIndex', 'sethot', '', '设置热门', '', '');
INSERT INTO `cmf_admin_menu` VALUES (194, 124, 1, 0, 14, 'admin', 'AdminIndex', 'setrecommend', '', '推荐用户', '', '');
INSERT INTO `cmf_admin_menu` VALUES (195, 124, 1, 0, 15, 'admin', 'AdminIndex', 'setzombie', '', '开启/关闭僵尸粉', '', '');
INSERT INTO `cmf_admin_menu` VALUES (196, 124, 1, 0, 16, 'admin', 'AdminIndex', 'setzombiep', '', '设置僵尸粉', '', '');
INSERT INTO `cmf_admin_menu` VALUES (197, 124, 1, 0, 17, 'admin', 'AdminIndex', 'setzombieall', '', '一键开启/关闭僵尸粉', '', '');
INSERT INTO `cmf_admin_menu` VALUES (198, 124, 1, 0, 18, 'admin', 'AdminIndex', 'setzombiepall', '', '批量设置/取消僵尸粉', '', '');
INSERT INTO `cmf_admin_menu` VALUES (199, 123, 1, 1, 10000, 'admin', 'Impression', 'index', '', '标签管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (200, 199, 1, 0, 10000, 'admin', 'Impression', 'add', '', '添加标签', '', '');
INSERT INTO `cmf_admin_menu` VALUES (201, 199, 1, 0, 10000, 'admin', 'Impression', 'addPost', '', '标签添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (202, 199, 1, 0, 10000, 'admin', 'Impression', 'edit', '', '编辑标签', '', '');
INSERT INTO `cmf_admin_menu` VALUES (203, 199, 1, 0, 10000, 'admin', 'Impression', 'editPost', '', '标签修改保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (204, 199, 1, 0, 10000, 'admin', 'Impression', 'listOrder', '', '标签排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (205, 199, 1, 0, 10000, 'admin', 'Impression', 'del', '', '删除标签', '', '');
INSERT INTO `cmf_admin_menu` VALUES (206, 0, 1, 1, 3, 'admin', 'jackpot', 'set', '', '奖池管理', 'trophy', '');
INSERT INTO `cmf_admin_menu` VALUES (207, 206, 1, 0, 10000, 'admin', 'Jackpot', 'setPost', '', '奖池设置提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (208, 206, 1, 0, 10000, 'admin', 'Jackpot', 'index', '', '奖池等级', '', '');
INSERT INTO `cmf_admin_menu` VALUES (209, 208, 1, 0, 10000, 'admin', 'Jackpot', 'add', '', '添加奖池等级', '', '');
INSERT INTO `cmf_admin_menu` VALUES (210, 208, 1, 0, 10000, 'admin', 'Jackpot', 'addPost', '', '奖池等级添加提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (211, 208, 1, 0, 10000, 'admin', 'Jackpot', 'edit', '', '编辑奖池等级', '', '');
INSERT INTO `cmf_admin_menu` VALUES (212, 208, 1, 0, 10000, 'admin', 'Jackpot', 'editPost', '', '奖池等级编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (213, 208, 1, 0, 10000, 'admin', 'Jackpot', 'del', '', '删除奖池等级', '', '');
INSERT INTO `cmf_admin_menu` VALUES (214, 0, 1, 1, 4, 'admin', 'Auth', 'index', '', '身份认证', 'address-card-o', '');
INSERT INTO `cmf_admin_menu` VALUES (215, 214, 1, 0, 10000, 'admin', 'Auth', 'edit', '', '编辑身份认证', '', '');
INSERT INTO `cmf_admin_menu` VALUES (216, 214, 1, 0, 10000, 'admin', 'Auth', 'del', '', '删除身份认证', '', '');
INSERT INTO `cmf_admin_menu` VALUES (217, 214, 1, 0, 10000, 'admin', 'Auth', 'editPost', '', '身份认证编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (218, 0, 1, 1, 5, 'admin', 'live', 'default', '', '直播管理', 'eye', '');
INSERT INTO `cmf_admin_menu` VALUES (219, 218, 1, 1, 1, 'admin', 'liveclass', 'index', '', '直播分类列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (220, 219, 1, 0, 1, 'admin', 'Liveclass', 'add', '', '添加直播分类', '', '');
INSERT INTO `cmf_admin_menu` VALUES (221, 219, 1, 0, 2, 'admin', 'Liveclass', 'addPost', '', '直播分类添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (222, 219, 1, 0, 3, 'admin', 'Liveclass', 'edit', '', '编辑直播分类', '', '');
INSERT INTO `cmf_admin_menu` VALUES (223, 219, 1, 0, 4, 'admin', 'Liveclass', 'editPost', '', '直播分类编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (224, 219, 1, 0, 5, 'admin', 'Liveclass', 'del', '', '删除直播分类', '', '');
INSERT INTO `cmf_admin_menu` VALUES (225, 219, 1, 0, 6, 'admin', 'Liveclass', 'listOrder', '', '直播分类排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (226, 218, 1, 1, 2, 'admin', 'liveban', 'index', '', '禁播管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (227, 226, 1, 0, 1, 'admin', 'liveban', 'del', '', '删除禁播记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (228, 218, 1, 1, 3, 'admin', 'liveshut', 'index', '', '禁言管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (229, 218, 1, 1, 4, 'admin', 'livekick', 'index', '', '踢人管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (230, 228, 1, 0, 1, 'admin', 'liveshut', 'del', '', '删除禁言记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (231, 229, 1, 0, 1, 'admin', 'livekick', 'del', '', '删除踢人记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (232, 218, 1, 1, 5, 'admin', 'liveing', 'index', '', '直播列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (233, 232, 1, 0, 1, 'admin', 'liveing', 'add', '', '添加直播列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (234, 232, 1, 0, 2, 'admin', 'liveing', 'addPost', '', '直播列表添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (235, 232, 1, 0, 3, 'admin', 'liveing', 'edit', '', '编辑直播列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (236, 232, 1, 0, 4, 'admin', 'liveing', 'editPost', '', '直播列表编辑保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (237, 232, 1, 0, 5, 'admin', 'liveing', 'del', '', '删除直播列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (238, 218, 1, 1, 6, 'admin', 'monitor', 'index', '', '直播监控', '', '');
INSERT INTO `cmf_admin_menu` VALUES (239, 238, 1, 0, 1, 'admin', 'monitor', 'full', '', '大屏', '', '');
INSERT INTO `cmf_admin_menu` VALUES (240, 238, 1, 0, 2, 'admin', 'monitor', 'stop', '', '强制关播', '', '');
INSERT INTO `cmf_admin_menu` VALUES (241, 218, 1, 1, 7, 'admin', 'Gift', 'index', '', '礼物管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (242, 241, 1, 0, 1, 'admin', 'Gift', 'add', '', '添加礼物', '', '');
INSERT INTO `cmf_admin_menu` VALUES (243, 241, 1, 0, 2, 'admin', 'Gift', 'addPost', '', '添加礼物保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (244, 241, 1, 0, 3, 'admin', 'Gift', 'edit', '', '编辑礼物', '', '');
INSERT INTO `cmf_admin_menu` VALUES (245, 241, 1, 0, 4, 'admin', 'Gift', 'editPost', '', '编辑礼物提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (246, 241, 1, 0, 5, 'admin', 'Gift', 'listOrder', '', '礼物排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (247, 241, 1, 0, 6, 'admin', 'Gift', 'del', '', '删除礼物', '', '');
INSERT INTO `cmf_admin_menu` VALUES (248, 241, 1, 0, 7, 'admin', 'Gift', 'plat', '', '礼物全站飘屏', '', '');
INSERT INTO `cmf_admin_menu` VALUES (249, 241, 1, 0, 8, 'admin', 'Luckrate', 'index', '', '幸运礼物中奖设置', '', '');
INSERT INTO `cmf_admin_menu` VALUES (250, 249, 1, 0, 10000, 'admin', 'Luckrate', 'add', '', '添加礼物中奖', '', '');
INSERT INTO `cmf_admin_menu` VALUES (251, 249, 1, 0, 10000, 'admin', 'Luckrate', 'addPost', '', '礼物中奖添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (252, 249, 1, 0, 10000, 'admin', 'Luckrate', 'edit', '', '编辑礼物中奖设置', '', '');
INSERT INTO `cmf_admin_menu` VALUES (253, 249, 1, 0, 10000, 'admin', 'Luckrate', 'editPost', '', '中奖设置编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (254, 249, 1, 0, 10000, 'admin', 'Luckrate', 'del', '', '删除中奖设置记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (255, 241, 1, 0, 9, 'admin', 'Jackpotrate', 'index', '', '奖池中奖设置', '', '');
INSERT INTO `cmf_admin_menu` VALUES (256, 255, 1, 0, 10000, 'admin', 'Jackpotrate', 'add', '', '添加奖池中奖', '', '');
INSERT INTO `cmf_admin_menu` VALUES (257, 255, 1, 0, 10000, 'admin', 'Jackpotrate', 'addPost', '', '奖池中奖添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (258, 255, 1, 0, 10000, 'admin', 'Jackpotrate', 'edit', '', '编辑奖池中奖', '', '');
INSERT INTO `cmf_admin_menu` VALUES (259, 255, 1, 0, 10000, 'admin', 'Jackpotrate', 'editPost', '', '奖池中奖编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (260, 255, 1, 0, 10000, 'admin', 'Jackpotrate', 'del', '', '删除奖池中奖', '', '');
INSERT INTO `cmf_admin_menu` VALUES (261, 218, 1, 1, 8, 'admin', 'sticker', 'index', '', '贴纸管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (262, 261, 1, 0, 1, 'admin', 'sticker', 'add', '', '添加贴纸', '', '');
INSERT INTO `cmf_admin_menu` VALUES (263, 261, 1, 0, 2, 'admin', 'Sticker', 'addPost', '', '贴纸添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (264, 261, 1, 0, 3, 'admin', 'Sticker', 'edit', '', '编辑贴纸', '', '');
INSERT INTO `cmf_admin_menu` VALUES (265, 261, 1, 0, 4, 'admin', 'Sticker', 'editPost', '', '贴纸编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (266, 261, 1, 0, 5, 'admin', 'Sticker', 'del', '', '删除贴纸', '', '');
INSERT INTO `cmf_admin_menu` VALUES (267, 261, 1, 0, 6, 'admin', 'Sticker', 'listOrder', '', '贴纸排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (268, 218, 1, 1, 9, 'admin', 'report', 'default', '', '用户举报管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (269, 268, 1, 1, 1, 'admin', 'reportcat', 'index', '', '举报分类', '', '');
INSERT INTO `cmf_admin_menu` VALUES (270, 269, 1, 0, 1, 'admin', 'reportcat', 'add', '', '添加举报分类', '', '');
INSERT INTO `cmf_admin_menu` VALUES (271, 269, 1, 0, 2, 'admin', 'reportcat', 'addPost', '', '举报分类添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (272, 269, 1, 0, 3, 'admin', 'reportcat', 'edit', '', '编辑举报分类', '', '');
INSERT INTO `cmf_admin_menu` VALUES (273, 269, 1, 0, 4, 'admin', 'reportcat', 'editPost', '', '举报分类编辑保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (274, 269, 1, 0, 5, 'admin', 'reportcat', 'del', '', '删除举报分类', '', '');
INSERT INTO `cmf_admin_menu` VALUES (275, 269, 1, 0, 6, 'admin', 'reportcat', 'listOrder', '', '举报分类排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (276, 268, 1, 1, 2, 'admin', 'Report', 'index', '', '用户举报列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (277, 276, 1, 0, 1, 'admin', 'Report', 'del', '', '删除用户举报', '', '');
INSERT INTO `cmf_admin_menu` VALUES (278, 276, 1, 0, 2, 'admin', 'Report', 'setstatus', '', '标记处理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (279, 218, 1, 1, 10, 'admin', 'Game', 'index', '', '游戏记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (280, 279, 1, 0, 1, 'admin', 'Game', 'index2', '', '游戏详情', '', '');
INSERT INTO `cmf_admin_menu` VALUES (281, 0, 1, 1, 6, 'admin', 'Dynamic', 'default', '', '动态管理', 'futbol-o', '');
INSERT INTO `cmf_admin_menu` VALUES (282, 281, 1, 1, 1, 'admin', 'Dynamiclabel', 'index', '', '动态话题标签', '', '');
INSERT INTO `cmf_admin_menu` VALUES (283, 282, 1, 0, 1, 'admin', 'Dynamiclabel', 'add', '', '添加话题标签', '', '');
INSERT INTO `cmf_admin_menu` VALUES (284, 282, 1, 0, 2, 'admin', 'Dynamiclabel', 'addPost', '', '动态话题标签添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (285, 282, 1, 0, 3, 'admin', 'Dynamiclabel', 'edit', '', '动态话题标签编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (286, 282, 1, 0, 4, 'admin', 'Dynamiclabel', 'editPost', '', '动态话题标签编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (287, 282, 1, 0, 5, 'admin', 'Dynamiclabel', 'del', '', '删除动态话题标签', '', '');
INSERT INTO `cmf_admin_menu` VALUES (288, 282, 1, 0, 6, 'admin', 'Dynamiclabel', 'listsorders', '', '动态话题标签排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (289, 282, 1, 0, 7, 'admin', 'Dynamiclabel', 'setrecommend', '', '动态话题标签推荐', '', '');
INSERT INTO `cmf_admin_menu` VALUES (290, 281, 1, 1, 2, 'admin', 'Dynamiclabel', 'default', '', '动态列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (291, 290, 1, 1, 1, 'admin', 'Dynamic', 'wait', 'isdel=0&amp;status=0', '等待审核列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (292, 290, 1, 1, 2, 'admin', 'Dynamic', 'index', 'isdel=0&amp;status=1', '审核通过列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (293, 290, 1, 1, 3, 'admin', 'Dynamic', 'nopass', 'isdel=0&amp;status=-1', '未审核通过', '', '');
INSERT INTO `cmf_admin_menu` VALUES (294, 290, 1, 1, 4, 'admin', 'Dynamic', 'lower', 'isdel=1', '下架列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (295, 290, 1, 0, 5, 'admin', 'Dynamic', 'del', '', '删除动态', '', '');
INSERT INTO `cmf_admin_menu` VALUES (296, 290, 1, 0, 6, 'admin', 'Dynamic', 'setDel', '', '上/下架动态', '', '');
INSERT INTO `cmf_admin_menu` VALUES (297, 292, 1, 0, 1, 'admin', 'Dynamic', 'setrecom', '', '设置推荐值', '', '');
INSERT INTO `cmf_admin_menu` VALUES (298, 291, 1, 0, 1, 'admin', 'Dynamic', 'setstatus', '', '通过/拒绝', '', '');
INSERT INTO `cmf_admin_menu` VALUES (299, 290, 1, 0, 7, 'admin', 'Dynamic', 'see', '', '查看动态内容', '', '');
INSERT INTO `cmf_admin_menu` VALUES (300, 281, 1, 0, 3, 'admin', 'Dynamiccom', 'index', '', '动态评论列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (301, 300, 1, 0, 1, 'admin', 'Dynamiccom', 'del', '', '删除动态评论', '', '');
INSERT INTO `cmf_admin_menu` VALUES (302, 281, 1, 1, 4, 'admin', 'Dynamicrepotcat', 'index', '', '动态举报类型', '', '');
INSERT INTO `cmf_admin_menu` VALUES (303, 302, 1, 0, 1, 'admin', 'Dynamicrepotcat', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (304, 302, 1, 0, 2, 'admin', 'Dynamicrepotcat', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (305, 302, 1, 0, 3, 'admin', 'Dynamicrepotcat', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (306, 302, 1, 0, 4, 'admin', 'Dynamicrepotcat', 'editPost', '', '编辑保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (307, 302, 1, 0, 5, 'admin', 'Dynamicrepotcat', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (308, 302, 1, 0, 6, 'admin', 'Dynamicrepotcat', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (309, 281, 1, 1, 5, 'admin', 'Dynamicrepot', 'index', '', '动态举报列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (310, 309, 1, 0, 1, 'admin', 'Dynamicrepot', 'setstatus', '', '标记处理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (311, 309, 1, 0, 2, 'admin', 'Dynamicrepot', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (312, 0, 1, 1, 7, 'admin', 'Videoclass', 'default', '', '视频管理', 'video-camera', '');
INSERT INTO `cmf_admin_menu` VALUES (313, 312, 1, 1, 1, 'admin', 'musiccat', 'index', '', '音乐分类', '', '');
INSERT INTO `cmf_admin_menu` VALUES (314, 313, 1, 0, 1, 'admin', 'musiccat', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (315, 313, 1, 0, 2, 'admin', 'musiccat', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (316, 313, 1, 0, 3, 'admin', 'musiccat', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (317, 313, 1, 0, 4, 'admin', 'musiccat', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (318, 313, 1, 0, 5, 'admin', 'musiccat', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (319, 313, 1, 0, 6, 'admin', 'musiccat', 'canceldel', '', '取消删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (320, 313, 1, 0, 7, 'admin', 'musiccat', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (321, 312, 1, 1, 2, 'admin', 'music', 'index', '', '音乐管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (322, 321, 1, 0, 1, 'admin', 'music', 'add', '', '添加音乐', '', '');
INSERT INTO `cmf_admin_menu` VALUES (323, 321, 1, 0, 2, 'admin', 'music', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (324, 321, 1, 0, 3, 'admin', 'music', 'edit', '', '修改音乐', '', '');
INSERT INTO `cmf_admin_menu` VALUES (325, 321, 1, 0, 4, 'admin', 'music', 'editPost', '', '修改提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (326, 321, 1, 0, 5, 'admin', 'music', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (327, 321, 1, 0, 6, 'admin', 'music', 'canceldel', '', '取消删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (328, 321, 1, 0, 7, 'admin', 'music', 'listen', '', '聆听', '', '');
INSERT INTO `cmf_admin_menu` VALUES (329, 312, 1, 0, 3, 'admin', 'videoclass', 'index', '', '视频分类', '', '');
INSERT INTO `cmf_admin_menu` VALUES (330, 329, 1, 0, 1, 'admin', 'videoclass', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (331, 329, 1, 0, 2, 'admin', 'Videoclass', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (332, 329, 1, 0, 3, 'admin', 'Videoclass', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (333, 329, 1, 0, 4, 'admin', 'Videoclass', 'editPost', '', '编辑保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (334, 329, 1, 0, 5, 'admin', 'Videoclass', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (335, 329, 1, 0, 6, 'admin', 'Videoclass', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (336, 312, 1, 1, 4, 'admin', 'Video', 'default', '', '视频列表管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (337, 336, 1, 1, 1, 'admin', 'Video', 'index', 'isdel=0&amp;status=1', '审核通过列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (338, 336, 1, 1, 2, 'admin', 'video', 'wait', 'isdel=0&amp;status=0&amp;is_draft=0', '待审核列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (339, 336, 1, 1, 3, 'admin', 'Video', 'nopass', 'isdel=0&amp;status=2', '未通过列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (340, 336, 1, 1, 4, 'admin', 'Video', 'lower', 'isdel=1', '下架视频列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (341, 336, 1, 0, 5, 'admin', 'Video', 'add', '', '添加视频', '', '');
INSERT INTO `cmf_admin_menu` VALUES (342, 341, 1, 0, 1, 'admin', 'Video', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (343, 336, 1, 0, 6, 'admin', 'Video', 'edit', '', '编辑视频', '', '');
INSERT INTO `cmf_admin_menu` VALUES (344, 343, 1, 0, 1, 'admin', 'Video', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (345, 338, 1, 0, 1, 'admin', 'Video', 'setstatus', '', '审核', '', '');
INSERT INTO `cmf_admin_menu` VALUES (346, 336, 1, 0, 7, 'admin', 'Video', 'setDel', '', '上/下架视频', '', '');
INSERT INTO `cmf_admin_menu` VALUES (347, 336, 1, 0, 8, 'admin', 'Video', 'see', '', '查看视频', '', '');
INSERT INTO `cmf_admin_menu` VALUES (348, 338, 1, 0, 2, 'admin', 'Video', 'batchPass', '', '批量通过', '', '');
INSERT INTO `cmf_admin_menu` VALUES (349, 338, 1, 0, 3, 'admin', 'Video', 'batchReject', '', '批量拒绝', '', '');
INSERT INTO `cmf_admin_menu` VALUES (350, 336, 1, 0, 9, 'admin', 'Video', 'del', '', '删除视频', '', '');
INSERT INTO `cmf_admin_menu` VALUES (351, 312, 1, 1, 5, 'admin', 'videorepcat', 'index', '', '视频举报类型', '', '');
INSERT INTO `cmf_admin_menu` VALUES (352, 351, 1, 0, 1, 'admin', 'Videorepcat', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (353, 351, 1, 0, 2, 'admin', 'Videorepcat', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (354, 351, 1, 0, 3, 'admin', 'Videorepcat', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (355, 351, 1, 0, 4, 'admin', 'Videorepcat', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (356, 351, 1, 0, 5, 'admin', 'Videorepcat', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (357, 351, 1, 0, 6, 'admin', 'Videorepcat', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (358, 312, 1, 1, 6, 'admin', 'videorep', 'index', '', '视频举报列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (359, 358, 1, 0, 1, 'admin', 'Videorep', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (360, 312, 1, 1, 7, 'admin', 'Advert', 'default', '', '广告视频管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (361, 360, 1, 0, 1, 'admin', 'Advert', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (362, 360, 1, 0, 2, 'admin', 'Advert', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (363, 360, 1, 0, 3, 'admin', 'Advert', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (364, 360, 1, 0, 4, 'admin', 'Advert', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (365, 360, 1, 1, 5, 'admin', 'Advert', 'index', '', '广告视频列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (366, 360, 1, 1, 6, 'admin', 'Advert', 'lowervideo', '', '下架广告视频列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (367, 360, 1, 0, 7, 'admin', 'Advert', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (368, 360, 1, 0, 8, 'admin', 'Advert', 'listsorders', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (369, 366, 1, 0, 1, 'admin', 'Advert', 'set_shangjia', '', '上架', '', '');
INSERT INTO `cmf_admin_menu` VALUES (370, 365, 1, 0, 1, 'admin', 'Advert', 'setXiajia', '', '下架', '', '');
INSERT INTO `cmf_admin_menu` VALUES (371, 0, 1, 1, 8, 'admin', 'finance', 'default', '', '财务管理', 'cny', '');
INSERT INTO `cmf_admin_menu` VALUES (372, 371, 1, 1, 1, 'admin', 'chargerules', 'default', '', '充值规则管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (373, 372, 1, 1, 1, 'admin', 'chargerules', 'index', '', '普通充值规则列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (374, 372, 1, 1, 2, 'admin', 'chargerules', 'firstcharge', '', '首充规则列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (375, 372, 1, 0, 3, 'admin', 'Chargerules', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (376, 372, 1, 0, 4, 'admin', 'Chargerules', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (377, 372, 1, 0, 5, 'admin', 'Chargerules', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (378, 372, 1, 0, 6, 'admin', 'Chargerules', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (379, 372, 1, 0, 7, 'admin', 'Chargerules', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (380, 372, 1, 0, 8, 'admin', 'Chargerules', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (381, 371, 1, 1, 2, 'admin', 'charge', 'index', '', '钻石充值记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (382, 381, 1, 0, 1, 'admin', 'Charge', 'setPay', '', '确认支付', '', '');
INSERT INTO `cmf_admin_menu` VALUES (383, 381, 1, 0, 2, 'admin', 'Charge', 'export', '', '导出', '', '');
INSERT INTO `cmf_admin_menu` VALUES (384, 371, 1, 1, 3, 'admin', 'manual', 'index', '', '手动充值钻石', '', '');
INSERT INTO `cmf_admin_menu` VALUES (385, 384, 1, 0, 1, 'admin', 'Manual', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (386, 384, 1, 0, 2, 'admin', 'Manual', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (387, 384, 1, 0, 3, 'admin', 'Manual', 'export', '', '导出', '', '');
INSERT INTO `cmf_admin_menu` VALUES (388, 371, 1, 1, 4, 'admin', 'Coinrecord', 'index', '', '钻石消费记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (389, 388, 1, 0, 1, 'admin', 'Coinrecord', 'export', '', '导出', '', '');
INSERT INTO `cmf_admin_menu` VALUES (390, 371, 1, 1, 5, 'admin', 'Cash', 'index', '', '云票提现记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (391, 390, 1, 0, 1, 'admin', 'Cash', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (392, 390, 1, 0, 2, 'admin', 'Cash', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (393, 390, 1, 0, 3, 'admin', 'Cash', 'export', '', '导出', '', '');
INSERT INTO `cmf_admin_menu` VALUES (394, 371, 1, 1, 6, 'admin', 'Scorerecord', 'index', '', '积分记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (395, 0, 1, 1, 9, 'admin', 'Family', 'default', '', '家族管理', 'user-secret', '');
INSERT INTO `cmf_admin_menu` VALUES (396, 395, 1, 1, 1, 'admin', 'Family', 'index', '', '家族列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (397, 396, 1, 0, 1, 'admin', 'Family', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (398, 396, 1, 0, 2, 'admin', 'Family', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (399, 396, 1, 0, 3, 'admin', 'Family', 'disable', '', '禁用', '', '');
INSERT INTO `cmf_admin_menu` VALUES (400, 396, 1, 0, 4, 'admin', 'Family', 'enable', '', '启用', '', '');
INSERT INTO `cmf_admin_menu` VALUES (401, 396, 1, 0, 5, 'admin', 'Family', 'profit', '', '收益', '', '');
INSERT INTO `cmf_admin_menu` VALUES (402, 396, 1, 0, 6, 'admin', 'Family', 'cash', '', '提现记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (403, 396, 1, 0, 7, 'admin', 'Family', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (404, 395, 1, 1, 10000, 'admin', 'Familyuser', 'index', '', '成员列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (405, 404, 1, 0, 10000, 'admin', 'Familyuser', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (406, 404, 1, 0, 10000, 'admin', 'Familyuser', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (407, 404, 1, 0, 10000, 'admin', 'Familyuser', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (408, 404, 1, 0, 10000, 'admin', 'Familyuser', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (409, 404, 1, 0, 10000, 'admin', 'Familyuser', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (410, 395, 1, 1, 10000, 'admin', 'Familyuser', 'divideapply', '', '成员分成申请', '', '');
INSERT INTO `cmf_admin_menu` VALUES (411, 410, 1, 0, 10000, 'admin', 'Familyuser', 'applyedit', '', '审核', '', '');
INSERT INTO `cmf_admin_menu` VALUES (412, 410, 1, 0, 10000, 'admin', 'Familyuser', 'applyeditPost', '', '审核提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (413, 410, 1, 0, 10000, 'admin', 'Familyuser', 'delapply', '', '删除申请', '', '');
INSERT INTO `cmf_admin_menu` VALUES (414, 0, 1, 1, 10, 'admin', 'Car', 'default', '', '道具管理', 'motorcycle', '');
INSERT INTO `cmf_admin_menu` VALUES (415, 414, 1, 1, 1, 'admin', 'Car', 'index', '', '坐骑列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (416, 415, 1, 0, 1, 'admin', 'Car', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (417, 415, 1, 0, 2, 'admin', 'Car', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (418, 415, 1, 0, 3, 'admin', 'Car', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (419, 415, 1, 0, 4, 'admin', 'Car', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (420, 415, 1, 0, 5, 'admin', 'Car', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (421, 415, 1, 0, 6, 'admin', 'Car', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (422, 414, 1, 1, 2, 'admin', 'Liang', 'index', '', '靓号列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (423, 422, 1, 0, 1, 'admin', 'Liang', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (424, 422, 1, 0, 2, 'admin', 'Liang', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (425, 422, 1, 0, 3, 'admin', 'Liang', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (426, 422, 1, 0, 4, 'admin', 'Liang', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (427, 422, 1, 0, 5, 'admin', 'Liang', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (428, 422, 1, 0, 6, 'admin', 'Liang', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (429, 422, 1, 0, 7, 'admin', 'Liang', 'setStatus', '', '修改状态', '', '');
INSERT INTO `cmf_admin_menu` VALUES (430, 414, 1, 1, 3, 'admin', 'vip', 'default', '', 'VIP管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (431, 591, 1, 0, 1, 'admin', 'Vip', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (432, 591, 1, 0, 2, 'admin', 'Vip', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (433, 591, 1, 0, 3, 'admin', 'Vip', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (434, 591, 1, 0, 4, 'admin', 'Vip', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (435, 591, 1, 0, 5, 'admin', 'Vip', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (436, 591, 1, 0, 6, 'admin', 'Vip', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (437, 0, 1, 1, 11, 'admin', 'Red', 'index', '', '红包管理', 'envelope', '');
INSERT INTO `cmf_admin_menu` VALUES (438, 437, 1, 0, 10000, 'admin', 'Red', 'index2', '', '领取详情', '', '');
INSERT INTO `cmf_admin_menu` VALUES (439, 0, 1, 1, 12, 'admin', 'Guard', 'index', '', '守护管理', 'shield', '');
INSERT INTO `cmf_admin_menu` VALUES (440, 439, 1, 0, 1, 'admin', 'Guard', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (441, 439, 1, 0, 2, 'admin', 'Guard', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (442, 439, 1, 0, 3, 'admin', 'Guard', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (443, 439, 1, 0, 4, 'admin', 'Guard', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (444, 439, 1, 0, 5, 'admin', 'Guard', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (445, 439, 1, 0, 6, 'admin', 'Guard', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (446, 0, 1, 1, 13, 'admin', 'Level', 'default', '', '等级管理', 'line-chart', '');
INSERT INTO `cmf_admin_menu` VALUES (447, 446, 1, 1, 10000, 'admin', 'Level', 'index', '', '用户等级列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (448, 446, 1, 1, 10000, 'admin', 'Levelanchor', 'index', '', '主播等级列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (449, 447, 1, 0, 10000, 'admin', 'Level', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (450, 447, 1, 0, 10000, 'admin', 'Level', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (451, 447, 1, 0, 10000, 'admin', 'Level', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (452, 447, 1, 0, 10000, 'admin', 'Level', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (453, 447, 1, 0, 10000, 'admin', 'Level', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (454, 448, 1, 0, 10000, 'admin', 'Levelanchor', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (455, 448, 1, 0, 10000, 'admin', 'Levelanchor', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (456, 448, 1, 0, 10000, 'admin', 'Levelanchor', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (457, 448, 1, 0, 10000, 'admin', 'Levelanchor', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (458, 448, 1, 0, 10000, 'admin', 'Levelanchor', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (459, 0, 1, 1, 14, 'admin', 'Agent', 'default', '', '邀请奖励', 'sitemap', '');
INSERT INTO `cmf_admin_menu` VALUES (460, 459, 1, 1, 1, 'admin', 'Agent', 'index', '', '邀请关系', '', '');
INSERT INTO `cmf_admin_menu` VALUES (461, 459, 1, 1, 2, 'admin', 'Agent', 'index2', '', '邀请收益', '', '');
INSERT INTO `cmf_admin_menu` VALUES (462, 0, 1, 1, 15, 'admin', 'Shop', 'default', '', '商城管理', 'shopping-cart', '');
INSERT INTO `cmf_admin_menu` VALUES (463, 462, 1, 1, 1, 'admin', 'Shopapply', 'index', '', '店铺申请', '', '');
INSERT INTO `cmf_admin_menu` VALUES (464, 463, 1, 0, 1, 'admin', 'Shopapply', 'edit', '', '编辑店铺申请', '', '');
INSERT INTO `cmf_admin_menu` VALUES (465, 463, 1, 0, 2, 'admin', 'Shopapply', 'editPost', '', '店铺申请编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (466, 463, 1, 0, 3, 'admin', 'Shopapply', 'platformedit', '', '平台自营店铺', '', '');
INSERT INTO `cmf_admin_menu` VALUES (467, 463, 1, 0, 4, 'admin', 'Shopapply', 'platformeditPost', '', '平台自营店铺编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (468, 463, 1, 0, 5, 'admin', 'Shopapply', 'del', '', '删除店铺申请', '', '');
INSERT INTO `cmf_admin_menu` VALUES (469, 462, 1, 1, 2, 'admin', 'shopbond', 'index', '', '店铺保证金', '', '');
INSERT INTO `cmf_admin_menu` VALUES (470, 469, 1, 0, 1, 'admin', 'shopbond', 'setstatus', '', '处理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (471, 462, 1, 1, 3, 'admin', 'shopgoods', 'index', '', '商品列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (472, 471, 1, 0, 1, 'admin', 'Shopgoods', 'setStatus', '', '上下架', '', '');
INSERT INTO `cmf_admin_menu` VALUES (473, 471, 1, 0, 2, 'admin', 'Shopgoods', 'edit', '', '商品审核/详情', '', '');
INSERT INTO `cmf_admin_menu` VALUES (474, 471, 1, 0, 3, 'admin', 'Shopgoods', 'editPost', '', '商品审核提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (475, 471, 1, 0, 4, 'admin', 'Shopgoods', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (476, 471, 1, 0, 5, 'admin', 'Shopgoods', 'setRecom', '', '推荐/取消推荐', '', '');
INSERT INTO `cmf_admin_menu` VALUES (477, 471, 1, 0, 6, 'admin', 'Shopgoods', 'commentlist', '', '商品评论列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (478, 471, 1, 0, 7, 'admin', 'Shopgoods', 'delComment', '', '删除商品评论', '', '');
INSERT INTO `cmf_admin_menu` VALUES (479, 471, 1, 0, 8, 'admin', 'Shopgoods', 'add', '', '添加平台自营商品', '', '');
INSERT INTO `cmf_admin_menu` VALUES (480, 471, 1, 0, 9, 'admin', 'Shopgoods', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (481, 471, 1, 0, 10, 'admin', 'Shopgoods', 'platformedit', '', '自营商品编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (482, 471, 1, 0, 11, 'admin', 'Shopgoods', 'platformeditPost', '', '自营商品编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (483, 471, 1, 0, 12, 'admin', 'Shopgoods', 'setLiveisShow', '', '设置/取消直播间展示', '', '');
INSERT INTO `cmf_admin_menu` VALUES (484, 462, 1, 1, 4, 'admin', 'Goodsclass', 'index', '', '商品分类管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (485, 462, 1, 1, 5, 'admin', 'Buyeraddress', 'index', '', '收货地址管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (486, 485, 1, 0, 1, 'admin', 'Buyeraddress', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (487, 462, 1, 1, 6, 'admin', 'Express', 'index', '', '物流公司列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (488, 487, 1, 0, 1, 'admin', 'Express', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (489, 487, 1, 0, 2, 'admin', 'Express', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (490, 487, 1, 0, 3, 'admin', 'Express', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (491, 487, 1, 0, 4, 'admin', 'Express', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (492, 487, 1, 0, 5, 'admin', 'Express', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (493, 487, 1, 0, 6, 'admin', 'Express', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (494, 462, 1, 1, 7, 'admin', 'Refundreason', 'index', '', '买家申请退货原因', '', '');
INSERT INTO `cmf_admin_menu` VALUES (495, 494, 1, 0, 1, 'admin', 'Refundreason', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (496, 494, 1, 0, 2, 'admin', 'Refundreason', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (497, 494, 1, 0, 3, 'admin', 'Refundreason', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (498, 494, 1, 0, 4, 'admin', 'Refundreason', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (499, 494, 1, 0, 5, 'admin', 'Refundreason', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (500, 494, 1, 0, 6, 'admin', 'Refundreason', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (501, 462, 1, 1, 8, 'admin', 'Refusereason', 'index', '', '卖家拒绝退款原因', '', '');
INSERT INTO `cmf_admin_menu` VALUES (502, 501, 1, 0, 1, 'admin', 'Refusereason', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (503, 501, 1, 0, 2, 'admin', 'Refusereason', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (504, 501, 1, 0, 3, 'admin', 'Refusereason', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (505, 501, 1, 0, 4, 'admin', 'Refusereason', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (506, 501, 1, 0, 5, 'admin', 'Refusereason', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (507, 501, 1, 0, 6, 'admin', 'Refusereason', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (508, 462, 1, 1, 9, 'admin', 'Platformreason', 'index', '', '平台介入退款原因', '', '');
INSERT INTO `cmf_admin_menu` VALUES (509, 508, 1, 0, 4, 'admin', 'Platformreason', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (510, 508, 1, 0, 5, 'admin', 'Platformreason', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (511, 508, 1, 0, 6, 'admin', 'Platformreason', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (512, 508, 1, 0, 1, 'admin', 'Platformreason', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (513, 508, 1, 0, 2, 'admin', 'Platformreason', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (514, 508, 1, 0, 3, 'admin', 'Platformreason', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (515, 462, 1, 1, 10, 'admin', 'Goodsorder', 'index', '', '商品订单列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (516, 515, 1, 0, 1, 'admin', 'Goodsorder', 'info', '', '订单详情', '', '');
INSERT INTO `cmf_admin_menu` VALUES (517, 515, 1, 0, 2, 'admin', 'Goodsorder', 'setexpress', '', '填写物流信息', '', '');
INSERT INTO `cmf_admin_menu` VALUES (518, 515, 1, 0, 3, 'admin', 'Goodsorder', 'setexpressPost', '', '填写物流信息提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (519, 462, 1, 1, 11, 'admin', 'Refundlist', 'index', '', '退款列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (520, 519, 1, 0, 1, 'admin', 'Refundlist', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (521, 519, 1, 0, 2, 'admin', 'Refundlist', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (522, 519, 1, 0, 3, 'admin', 'Refundlist', 'platformedit', '', '平台自营处理退款', '', '');
INSERT INTO `cmf_admin_menu` VALUES (523, 519, 1, 0, 4, 'admin', 'Refundlist', 'platformeditPost', '', '平台自营退款处理提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (524, 462, 1, 1, 12, 'admin', 'Shopcash', 'index', '', '提现记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (525, 462, 1, 1, 13, 'admin', 'Balance', 'index', '', '余额手动充值', '', '');
INSERT INTO `cmf_admin_menu` VALUES (526, 524, 1, 0, 1, 'admin', 'Shopcash', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (527, 524, 1, 0, 2, 'admin', 'Shopcash', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (528, 524, 1, 0, 3, 'admin', 'Shopcash', 'export', '', '导出', '', '');
INSERT INTO `cmf_admin_menu` VALUES (529, 525, 1, 0, 1, 'admin', 'Balance', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (530, 525, 1, 0, 2, 'admin', 'Balance', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (531, 525, 1, 0, 3, 'admin', 'Balance', 'export', '', '导出', '', '');
INSERT INTO `cmf_admin_menu` VALUES (532, 462, 1, 1, 14, 'admin', 'Shopcategory', 'index', '', '经营类目申请', '', '');
INSERT INTO `cmf_admin_menu` VALUES (533, 532, 1, 0, 1, 'admin', 'Shopcategory', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (534, 532, 1, 0, 2, 'admin', 'Shopcategory', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (535, 532, 1, 0, 3, 'admin', 'Shopcategory', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (536, 0, 1, 1, 16, 'admin', 'turntable', 'default', '', '大转盘', 'tachometer', '');
INSERT INTO `cmf_admin_menu` VALUES (537, 536, 1, 1, 1, 'admin', 'turntablecon', 'index', '', '价格管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (538, 537, 1, 0, 1, 'admin', 'Turntablecon', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (539, 537, 1, 0, 2, 'admin', 'Turntablecon', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (540, 537, 1, 0, 3, 'admin', 'Turntablecon', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (541, 536, 1, 1, 2, 'admin', 'turntable', 'index', '', '奖品管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (542, 536, 1, 1, 3, 'admin', 'turntable', 'index2', '', '转盘记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (543, 536, 1, 1, 4, 'admin', 'turntable', 'index3', '', '线下奖品', '', '');
INSERT INTO `cmf_admin_menu` VALUES (544, 541, 1, 0, 1, 'admin', 'turntable', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (545, 541, 1, 0, 2, 'admin', 'turntable', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (546, 543, 1, 0, 1, 'admin', 'turntable', 'setstatus', '', '处理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (547, 0, 1, 1, 17, 'admin', 'Loginbonus', 'index', '', '登录奖励', 'child', '');
INSERT INTO `cmf_admin_menu` VALUES (548, 547, 1, 0, 1, 'admin', 'Loginbonus', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (549, 547, 1, 0, 2, 'admin', 'Loginbonus', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (550, 547, 1, 0, 3, 'admin', 'Loginbonus', 'index2', '', '奖励记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (551, 0, 1, 1, 18, 'admin', 'note', 'default', '', '消息管理', 'bell', '');
INSERT INTO `cmf_admin_menu` VALUES (552, 551, 1, 1, 1, 'admin', 'sendcode', 'index', '', '验证码列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (553, 551, 1, 1, 2, 'admin', 'push', 'index', '', '推送管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (554, 551, 1, 1, 3, 'admin', 'system', 'index', '', '直播间消息', '', '');
INSERT INTO `cmf_admin_menu` VALUES (555, 552, 1, 0, 1, 'admin', 'sendcode', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (556, 552, 1, 0, 2, 'admin', 'sendcode', 'export', '', '导出', '', '');
INSERT INTO `cmf_admin_menu` VALUES (557, 553, 1, 0, 1, 'admin', 'Push', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (558, 553, 1, 0, 2, 'admin', 'Push', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (559, 553, 1, 0, 3, 'admin', 'Push', 'export', '', '导出', '', '');
INSERT INTO `cmf_admin_menu` VALUES (560, 554, 1, 0, 1, 'admin', 'System', 'send', '', '发送', '', '');
INSERT INTO `cmf_admin_menu` VALUES (561, 0, 1, 1, 20, 'admin', 'portal', 'default', '', '内容管理', 'connectdevelop', '');
INSERT INTO `cmf_admin_menu` VALUES (562, 561, 1, 1, 1, 'admin', 'feedback', 'index', '', '用户反馈', '', '');
INSERT INTO `cmf_admin_menu` VALUES (563, 562, 1, 0, 1, 'admin', 'feedback', 'setstatus', '', '标记处理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (564, 562, 1, 0, 2, 'admin', 'feedback', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (565, 561, 1, 1, 2, 'portal', 'AdminPage', 'index', '', '页面管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES (566, 565, 1, 0, 1, 'portal', 'AdminPage', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (567, 565, 1, 0, 2, 'portal', 'AdminPage', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (568, 565, 1, 0, 3, 'portal', 'AdminPage', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (569, 565, 1, 0, 4, 'portal', 'AdminPage', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (570, 565, 1, 0, 5, 'portal', 'AdminPage', 'delete', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (571, 565, 1, 0, 6, 'portal', 'AdminPage', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (572, 0, 1, 1, 19, 'admin', 'paidprogram', 'default', '', '付费内容管理', 'ship', '');
INSERT INTO `cmf_admin_menu` VALUES (573, 572, 1, 0, 1, 'admin', 'Paidprogramclass', 'index', '', '付费内容分类', '', '');
INSERT INTO `cmf_admin_menu` VALUES (574, 573, 1, 0, 1, 'admin', 'Paidprogramclass', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (575, 573, 1, 0, 2, 'admin', 'Paidprogramclass', 'addPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (576, 573, 1, 0, 3, 'admin', 'Paidprogramclass', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (577, 573, 1, 0, 4, 'admin', 'Paidprogramclass', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (578, 573, 1, 0, 5, 'admin', 'Paidprogramclass', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES (579, 573, 1, 0, 6, 'admin', 'Paidprogramclass', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (580, 572, 1, 1, 2, 'admin', 'Paidprogram', 'index', '', '付费内容列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (581, 580, 1, 0, 1, 'admin', 'Paidprogram', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (582, 580, 1, 0, 2, 'admin', 'Paidprogram', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (583, 580, 1, 0, 3, 'admin', 'Paidprogram', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (584, 572, 1, 1, 3, 'admin', 'Paidprogram', 'applylist', '', '申请列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (585, 584, 1, 0, 1, 'admin', 'Paidprogram', 'applyedit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (586, 584, 1, 0, 2, 'admin', 'Paidprogram', 'applyeditPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (587, 584, 1, 0, 3, 'admin', 'Paidprogram', 'applydel', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (588, 572, 1, 1, 4, 'admin', 'Paidprogram', 'orderlist', '', '订单列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (589, 588, 1, 0, 1, 'admin', 'Paidprogram', 'setPay', '', '确认支付', '', '');
INSERT INTO `cmf_admin_menu` VALUES (590, 588, 1, 0, 2, 'admin', 'Paidprogram', 'export', '', '导出', '', '');
INSERT INTO `cmf_admin_menu` VALUES (591, 430, 1, 1, 10000, 'admin', 'vip', 'index', '', 'VIP列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (592, 430, 1, 1, 10000, 'admin', 'vipuser', 'index', '', 'VIP用户', '', '');
INSERT INTO `cmf_admin_menu` VALUES (593, 592, 1, 0, 10000, 'admin', 'vipuser', 'add', '', '添加vip用户', '', '');
INSERT INTO `cmf_admin_menu` VALUES (594, 592, 1, 0, 10000, 'admin', 'vipuser', 'addPost', '', 'vip用户添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (595, 592, 1, 0, 10000, 'admin', 'vipuser', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (596, 592, 1, 0, 10000, 'admin', 'vipuser', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (597, 592, 1, 0, 10000, 'admin', 'vipuser', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (598, 218, 1, 1, 10000, 'admin', 'Liverecord', 'index', '', '直播记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (599, 598, 1, 0, 10000, 'admin', 'Liverecord', 'del', '', '删除直播记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (600, 0, 1, 1, 21, 'admin', 'Index', 'default', '', '游戏管理', 'gamepad', '');
INSERT INTO `cmf_admin_menu` VALUES (601, 600, 1, 1, 10000, 'admin', 'Game', 'default', '', '星球探宝', '', '');
INSERT INTO `cmf_admin_menu` VALUES (602, 600, 1, 1, 10000, 'admin', 'Game', 'default1', '', '幸运大转盘', '', '');
INSERT INTO `cmf_admin_menu` VALUES (603, 601, 1, 1, 10000, 'admin', 'Game', 'xqtbgift', '', '奖品列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (604, 601, 1, 1, 10000, 'admin', 'Game', 'xqtbwinlist', '', '中奖记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (605, 602, 1, 1, 10000, 'admin', 'Game', 'xydzpgift', '', '奖品列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (606, 602, 1, 1, 10000, 'admin', 'Game', 'xydzpwinlist', '', '中奖记录', '', '');
INSERT INTO `cmf_admin_menu` VALUES (607, 603, 1, 0, 10000, 'admin', 'Game', 'xqtbadd', '', '添加奖品', '', '');
INSERT INTO `cmf_admin_menu` VALUES (608, 603, 1, 0, 10000, 'admin', 'Game', 'xqtbaddPost', '', '添加保存', '', '');
INSERT INTO `cmf_admin_menu` VALUES (609, 603, 1, 0, 10000, 'admin', 'Game', 'xqtbedit', '', '编辑奖品', '', '');
INSERT INTO `cmf_admin_menu` VALUES (610, 603, 1, 0, 10000, 'admin', 'Game', 'xqtbeditPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES (611, 603, 1, 0, 10000, 'admin', 'Game', 'xqtbdel', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (612, 603, 1, 0, 10000, 'admin', 'Game', 'xqtblistOrder', '', '排序', '', '');

-- ----------------------------
-- Table structure for cmf_agent
-- ----------------------------
DROP TABLE IF EXISTS `cmf_agent`;
CREATE TABLE `cmf_agent`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户id',
  `one_uid` int(11) NOT NULL DEFAULT 0 COMMENT '上级用户id',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_agent_code
-- ----------------------------
DROP TABLE IF EXISTS `cmf_agent_code`;
CREATE TABLE `cmf_agent_code`  (
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '邀请码',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_agent_profit
-- ----------------------------
DROP TABLE IF EXISTS `cmf_agent_profit`;
CREATE TABLE `cmf_agent_profit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT 0 COMMENT '用户ID',
  `one_profit` decimal(65, 2) NULL DEFAULT 0.00 COMMENT '一级收益',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_agent_profit_recode
-- ----------------------------
DROP TABLE IF EXISTS `cmf_agent_profit_recode`;
CREATE TABLE `cmf_agent_profit_recode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT 0 COMMENT '用户ID',
  `total` int(11) NULL DEFAULT 0 COMMENT '消费总数',
  `one_uid` int(11) NULL DEFAULT 0 COMMENT '一级ID',
  `one_profit` decimal(65, 2) NULL DEFAULT 0.00 COMMENT '一级收益',
  `addtime` int(11) NULL DEFAULT 0 COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_apply_goods_class
-- ----------------------------
DROP TABLE IF EXISTS `cmf_apply_goods_class`;
CREATE TABLE `cmf_apply_goods_class`  (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `uid` int(12) NOT NULL DEFAULT 0 COMMENT '用户id',
  `goods_classid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品一级分类ID',
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '审核说明',
  `addtime` int(12) NOT NULL DEFAULT 0 COMMENT '提交时间',
  `uptime` int(12) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态 0 处理中 1 成功 2 失败',
  `reason_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '英文说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_asset
-- ----------------------------
DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `file_size` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小,单位B',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上传时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `suffix` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_auth_access
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL COMMENT '角色',
  `rule_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `rule_name`(`rule_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限授权表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则所属app',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `module`(`app`, `status`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 613 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_auth_rule
-- ----------------------------
INSERT INTO `cmf_auth_rule` VALUES (1, 1, 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', '');
INSERT INTO `cmf_auth_rule` VALUES (2, 1, 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES (3, 1, 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', '');
INSERT INTO `cmf_auth_rule` VALUES (4, 1, 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', '');
INSERT INTO `cmf_auth_rule` VALUES (5, 1, 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (6, 1, 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (7, 1, 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (8, 1, 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (9, 1, 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (10, 1, 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (11, 1, 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', '');
INSERT INTO `cmf_auth_rule` VALUES (12, 1, 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES (13, 1, 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', '');
INSERT INTO `cmf_auth_rule` VALUES (14, 1, 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (15, 1, 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', '');
INSERT INTO `cmf_auth_rule` VALUES (16, 1, 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', '');
INSERT INTO `cmf_auth_rule` VALUES (17, 1, 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', '');
INSERT INTO `cmf_auth_rule` VALUES (18, 1, 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (19, 1, 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (20, 1, 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', '');
INSERT INTO `cmf_auth_rule` VALUES (21, 1, 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (22, 1, 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (23, 1, 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (24, 1, 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', '');
INSERT INTO `cmf_auth_rule` VALUES (25, 1, 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES (26, 1, 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (27, 1, 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', '');
INSERT INTO `cmf_auth_rule` VALUES (28, 1, 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', '');
INSERT INTO `cmf_auth_rule` VALUES (29, 1, 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (30, 1, 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', '');
INSERT INTO `cmf_auth_rule` VALUES (31, 1, 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (32, 1, 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', '');
INSERT INTO `cmf_auth_rule` VALUES (33, 1, 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (34, 1, 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (35, 1, 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (36, 1, 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (37, 1, 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (38, 1, 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (39, 1, 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES (40, 1, 'admin', 'admin_url', 'admin/Plugin/default', '', '应用中心', '');
INSERT INTO `cmf_auth_rule` VALUES (41, 1, 'admin', 'admin_url', 'admin/Plugin/index', '', '插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES (42, 1, 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', '');
INSERT INTO `cmf_auth_rule` VALUES (43, 1, 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', '');
INSERT INTO `cmf_auth_rule` VALUES (44, 1, 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (45, 1, 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', '');
INSERT INTO `cmf_auth_rule` VALUES (46, 1, 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', '');
INSERT INTO `cmf_auth_rule` VALUES (47, 1, 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', '');
INSERT INTO `cmf_auth_rule` VALUES (48, 1, 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', '');
INSERT INTO `cmf_auth_rule` VALUES (49, 1, 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', '');
INSERT INTO `cmf_auth_rule` VALUES (50, 1, 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES (51, 1, 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', '');
INSERT INTO `cmf_auth_rule` VALUES (52, 1, 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES (53, 1, 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', '');
INSERT INTO `cmf_auth_rule` VALUES (54, 1, 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', '');
INSERT INTO `cmf_auth_rule` VALUES (55, 1, 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', '');
INSERT INTO `cmf_auth_rule` VALUES (56, 1, 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', '');
INSERT INTO `cmf_auth_rule` VALUES (57, 1, 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', '');
INSERT INTO `cmf_auth_rule` VALUES (58, 1, 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', '');
INSERT INTO `cmf_auth_rule` VALUES (59, 1, 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', '');
INSERT INTO `cmf_auth_rule` VALUES (60, 1, 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', '');
INSERT INTO `cmf_auth_rule` VALUES (61, 1, 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', '');
INSERT INTO `cmf_auth_rule` VALUES (62, 1, 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (63, 1, 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (64, 1, 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', '');
INSERT INTO `cmf_auth_rule` VALUES (65, 1, 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', '');
INSERT INTO `cmf_auth_rule` VALUES (66, 1, 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', '');
INSERT INTO `cmf_auth_rule` VALUES (67, 1, 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', '');
INSERT INTO `cmf_auth_rule` VALUES (68, 1, 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', '');
INSERT INTO `cmf_auth_rule` VALUES (69, 1, 'admin', 'admin_url', 'admin/Setting/default', '', '设置', '');
INSERT INTO `cmf_auth_rule` VALUES (70, 1, 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', '');
INSERT INTO `cmf_auth_rule` VALUES (71, 1, 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (72, 1, 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', '');
INSERT INTO `cmf_auth_rule` VALUES (73, 1, 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES (74, 1, 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', '');
INSERT INTO `cmf_auth_rule` VALUES (75, 1, 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (76, 1, 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', '');
INSERT INTO `cmf_auth_rule` VALUES (77, 1, 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', '');
INSERT INTO `cmf_auth_rule` VALUES (78, 1, 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES (79, 1, 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES (80, 1, 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES (81, 1, 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES (82, 1, 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES (83, 1, 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', '');
INSERT INTO `cmf_auth_rule` VALUES (84, 1, 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', '');
INSERT INTO `cmf_auth_rule` VALUES (85, 1, 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES (86, 1, 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (87, 1, 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (88, 1, 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', '');
INSERT INTO `cmf_auth_rule` VALUES (89, 1, 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES (90, 1, 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', '');
INSERT INTO `cmf_auth_rule` VALUES (91, 1, 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', '');
INSERT INTO `cmf_auth_rule` VALUES (92, 1, 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', '');
INSERT INTO `cmf_auth_rule` VALUES (93, 1, 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (94, 1, 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', '');
INSERT INTO `cmf_auth_rule` VALUES (95, 1, 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', '');
INSERT INTO `cmf_auth_rule` VALUES (96, 1, 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', '');
INSERT INTO `cmf_auth_rule` VALUES (97, 1, 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', '');
INSERT INTO `cmf_auth_rule` VALUES (98, 1, 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', '');
INSERT INTO `cmf_auth_rule` VALUES (99, 1, 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', '');
INSERT INTO `cmf_auth_rule` VALUES (100, 1, 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', '');
INSERT INTO `cmf_auth_rule` VALUES (101, 1, 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', '');
INSERT INTO `cmf_auth_rule` VALUES (102, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', '');
INSERT INTO `cmf_auth_rule` VALUES (103, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (104, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (105, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', '');
INSERT INTO `cmf_auth_rule` VALUES (106, 1, 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (107, 1, 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', '');
INSERT INTO `cmf_auth_rule` VALUES (108, 1, 'admin', 'admin_url', 'admin/Theme/design', '', '模板设计', '');
INSERT INTO `cmf_auth_rule` VALUES (109, 1, 'admin', 'admin_url', 'admin/User/default', '', '管理组', '');
INSERT INTO `cmf_auth_rule` VALUES (110, 1, 'admin', 'admin_url', 'admin/User/index', '', '管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (111, 1, 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', '');
INSERT INTO `cmf_auth_rule` VALUES (112, 1, 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES (113, 1, 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (114, 1, 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (115, 1, 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', '');
INSERT INTO `cmf_auth_rule` VALUES (116, 1, 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES (117, 1, 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', '');
INSERT INTO `cmf_auth_rule` VALUES (118, 1, 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (119, 1, 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (120, 1, 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', '');
INSERT INTO `cmf_auth_rule` VALUES (121, 1, 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', '');
INSERT INTO `cmf_auth_rule` VALUES (122, 1, 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', '');
INSERT INTO `cmf_auth_rule` VALUES (123, 1, 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', '');
INSERT INTO `cmf_auth_rule` VALUES (124, 1, 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', '');
INSERT INTO `cmf_auth_rule` VALUES (125, 1, 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', '');
INSERT INTO `cmf_auth_rule` VALUES (126, 1, 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', '');
INSERT INTO `cmf_auth_rule` VALUES (127, 1, 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', '');
INSERT INTO `cmf_auth_rule` VALUES (128, 1, 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
INSERT INTO `cmf_auth_rule` VALUES (129, 1, 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');
INSERT INTO `cmf_auth_rule` VALUES (130, 1, 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES (131, 1, 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', '');
INSERT INTO `cmf_auth_rule` VALUES (132, 1, 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES (162, 1, 'admin', 'admin_url', 'admin/App/index', '', '应用管理', '');
INSERT INTO `cmf_auth_rule` VALUES (163, 1, 'admin', 'admin_url', 'admin/App/install', '', '应用安装', '');
INSERT INTO `cmf_auth_rule` VALUES (164, 1, 'admin', 'admin_url', 'admin/App/update', '', '应用更新', '');
INSERT INTO `cmf_auth_rule` VALUES (165, 1, 'admin', 'admin_url', 'admin/App/uninstall', '', '卸载应用', '');
INSERT INTO `cmf_auth_rule` VALUES (166, 1, 'admin', 'admin_url', 'admin/RecycleBin/clear', '', '清空回收站', '');
INSERT INTO `cmf_auth_rule` VALUES (167, 1, 'admin', 'admin_url', 'admin/AppStore/apps', '', '应用市场', '');
INSERT INTO `cmf_auth_rule` VALUES (168, 1, 'admin', 'admin_url', 'admin/AppStore/plugins', '', '插件市场', '');
INSERT INTO `cmf_auth_rule` VALUES (169, 1, 'Admin', 'admin_url', 'Admin/setting/configpri', '', '私密设置', '');
INSERT INTO `cmf_auth_rule` VALUES (170, 1, 'Admin', 'admin_url', 'Admin/setting/configpriPost', '', '私密设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (171, 1, 'Admin', 'admin_url', 'Admin/guide/set', '', '引导页', '');
INSERT INTO `cmf_auth_rule` VALUES (172, 1, 'Admin', 'admin_url', 'Admin/guide/setPost', '', '引导页设置保存', '');
INSERT INTO `cmf_auth_rule` VALUES (173, 1, 'Admin', 'admin_url', 'Admin/guide/index', '', '引导页管理', '');
INSERT INTO `cmf_auth_rule` VALUES (174, 1, 'Admin', 'admin_url', 'Admin/guide/add', '', '添加引导页', '');
INSERT INTO `cmf_auth_rule` VALUES (175, 1, 'Admin', 'admin_url', 'Admin/guide/addPost', '', '引导页添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (176, 1, 'Admin', 'admin_url', 'Admin/guide/edit', '', '引导页编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (177, 1, 'Admin', 'admin_url', 'Admin/guide/editPost', '', '引导页编辑保存', '');
INSERT INTO `cmf_auth_rule` VALUES (178, 1, 'Admin', 'admin_url', 'Admin/guide/listOrder', '', '引导页排序', '');
INSERT INTO `cmf_auth_rule` VALUES (179, 1, 'Admin', 'admin_url', 'Admin/guide/del', '', '引导页删除', '');
INSERT INTO `cmf_auth_rule` VALUES (180, 1, 'Admin', 'admin_url', 'Admin/adminlog/index', '', '操作日志', '');
INSERT INTO `cmf_auth_rule` VALUES (181, 1, 'Admin', 'admin_url', 'Admin/adminlog/del', '', '删除操作日志', '');
INSERT INTO `cmf_auth_rule` VALUES (182, 1, 'Admin', 'admin_url', 'Admin/adminlog/export', '', '导出操作日志', '');
INSERT INTO `cmf_auth_rule` VALUES (183, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/add', '', '添加用户', '');
INSERT INTO `cmf_auth_rule` VALUES (184, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/addPost', '', '用户添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (185, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/edit', '', '编辑用户', '');
INSERT INTO `cmf_auth_rule` VALUES (186, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/editPost', '', '用户编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (187, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/del', '', '删除用户', '');
INSERT INTO `cmf_auth_rule` VALUES (188, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/setBan', '', '设置用户禁用时间', '');
INSERT INTO `cmf_auth_rule` VALUES (189, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/cancelBan', '', '启用', '');
INSERT INTO `cmf_auth_rule` VALUES (190, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/ban', '', '拉黑用户', '');
INSERT INTO `cmf_auth_rule` VALUES (191, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/cancelLiveBan', '', '解封直播间', '');
INSERT INTO `cmf_auth_rule` VALUES (192, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/setsuper', '', '设置超管', '');
INSERT INTO `cmf_auth_rule` VALUES (193, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/sethot', '', '设置热门', '');
INSERT INTO `cmf_auth_rule` VALUES (194, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/setrecommend', '', '推荐用户', '');
INSERT INTO `cmf_auth_rule` VALUES (195, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/setzombie', '', '开启/关闭僵尸粉', '');
INSERT INTO `cmf_auth_rule` VALUES (196, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/setzombiep', '', '设置僵尸粉', '');
INSERT INTO `cmf_auth_rule` VALUES (197, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/setzombieall', '', '一键开启/关闭僵尸粉', '');
INSERT INTO `cmf_auth_rule` VALUES (198, 1, 'Admin', 'admin_url', 'Admin/AdminIndex/setzombiepall', '', '批量设置/取消僵尸粉', '');
INSERT INTO `cmf_auth_rule` VALUES (199, 1, 'Admin', 'admin_url', 'Admin/Impression/index', '', '标签管理', '');
INSERT INTO `cmf_auth_rule` VALUES (200, 1, 'Admin', 'admin_url', 'Admin/Impression/add', '', '添加标签', '');
INSERT INTO `cmf_auth_rule` VALUES (201, 1, 'Admin', 'admin_url', 'Admin/Impression/addPost', '', '标签添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (202, 1, 'Admin', 'admin_url', 'Admin/Impression/edit', '', '编辑标签', '');
INSERT INTO `cmf_auth_rule` VALUES (203, 1, 'Admin', 'admin_url', 'Admin/Impression/editPost', '', '标签修改保存', '');
INSERT INTO `cmf_auth_rule` VALUES (204, 1, 'Admin', 'admin_url', 'Admin/Impression/listOrder', '', '标签排序', '');
INSERT INTO `cmf_auth_rule` VALUES (205, 1, 'Admin', 'admin_url', 'Admin/Impression/del', '', '删除标签', '');
INSERT INTO `cmf_auth_rule` VALUES (206, 1, 'Admin', 'admin_url', 'Admin/jackpot/set', '', '奖池管理', '');
INSERT INTO `cmf_auth_rule` VALUES (207, 1, 'Admin', 'admin_url', 'Admin/Jackpot/setPost', '', '奖池设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (208, 1, 'Admin', 'admin_url', 'Admin/Jackpot/index', '', '奖池等级', '');
INSERT INTO `cmf_auth_rule` VALUES (209, 1, 'Admin', 'admin_url', 'Admin/Jackpot/add', '', '添加奖池等级', '');
INSERT INTO `cmf_auth_rule` VALUES (210, 1, 'Admin', 'admin_url', 'Admin/Jackpot/addPost', '', '奖池等级添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES (211, 1, 'Admin', 'admin_url', 'Admin/Jackpot/edit', '', '编辑奖池等级', '');
INSERT INTO `cmf_auth_rule` VALUES (212, 1, 'Admin', 'admin_url', 'Admin/Jackpot/editPost', '', '奖池等级编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (213, 1, 'Admin', 'admin_url', 'Admin/Jackpot/del', '', '删除奖池等级', '');
INSERT INTO `cmf_auth_rule` VALUES (214, 1, 'Admin', 'admin_url', 'Admin/Auth/index', '', '身份认证', '');
INSERT INTO `cmf_auth_rule` VALUES (215, 1, 'Admin', 'admin_url', 'Admin/Auth/edit', '', '编辑身份认证', '');
INSERT INTO `cmf_auth_rule` VALUES (216, 1, 'Admin', 'admin_url', 'Admin/Auth/del', '', '删除身份认证', '');
INSERT INTO `cmf_auth_rule` VALUES (217, 1, 'Admin', 'admin_url', 'Admin/Auth/editPost', '', '身份认证编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (218, 1, 'Admin', 'admin_url', 'Admin/live/default', '', '直播管理', '');
INSERT INTO `cmf_auth_rule` VALUES (219, 1, 'Admin', 'admin_url', 'Admin/liveclass/index', '', '直播分类列表', '');
INSERT INTO `cmf_auth_rule` VALUES (220, 1, 'Admin', 'admin_url', 'Admin/Liveclass/add', '', '添加直播分类', '');
INSERT INTO `cmf_auth_rule` VALUES (221, 1, 'Admin', 'admin_url', 'Admin/Liveclass/addPost', '', '直播分类添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (222, 1, 'Admin', 'admin_url', 'Admin/Liveclass/edit', '', '编辑直播分类', '');
INSERT INTO `cmf_auth_rule` VALUES (223, 1, 'Admin', 'admin_url', 'Admin/Liveclass/editPost', '', '直播分类编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (224, 1, 'Admin', 'admin_url', 'Admin/Liveclass/del', '', '删除直播分类', '');
INSERT INTO `cmf_auth_rule` VALUES (225, 1, 'Admin', 'admin_url', 'Admin/Liveclass/listOrder', '', '直播分类排序', '');
INSERT INTO `cmf_auth_rule` VALUES (226, 1, 'Admin', 'admin_url', 'Admin/liveban/index', '', '禁播管理', '');
INSERT INTO `cmf_auth_rule` VALUES (227, 1, 'Admin', 'admin_url', 'Admin/liveban/del', '', '删除禁播记录', '');
INSERT INTO `cmf_auth_rule` VALUES (228, 1, 'Admin', 'admin_url', 'Admin/liveshut/index', '', '禁言管理', '');
INSERT INTO `cmf_auth_rule` VALUES (229, 1, 'Admin', 'admin_url', 'Admin/livekick/index', '', '踢人管理', '');
INSERT INTO `cmf_auth_rule` VALUES (230, 1, 'Admin', 'admin_url', 'Admin/liveshut/del', '', '删除禁言记录', '');
INSERT INTO `cmf_auth_rule` VALUES (231, 1, 'Admin', 'admin_url', 'Admin/livekick/del', '', '删除踢人记录', '');
INSERT INTO `cmf_auth_rule` VALUES (232, 1, 'Admin', 'admin_url', 'Admin/liveing/index', '', '直播列表', '');
INSERT INTO `cmf_auth_rule` VALUES (233, 1, 'Admin', 'admin_url', 'Admin/liveing/add', '', '添加直播列表', '');
INSERT INTO `cmf_auth_rule` VALUES (234, 1, 'Admin', 'admin_url', 'Admin/liveing/addPost', '', '直播列表添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (235, 1, 'Admin', 'admin_url', 'Admin/liveing/edit', '', '编辑直播列表', '');
INSERT INTO `cmf_auth_rule` VALUES (236, 1, 'Admin', 'admin_url', 'Admin/liveing/editPost', '', '直播列表编辑保存', '');
INSERT INTO `cmf_auth_rule` VALUES (237, 1, 'Admin', 'admin_url', 'Admin/liveing/del', '', '删除直播列表', '');
INSERT INTO `cmf_auth_rule` VALUES (238, 1, 'Admin', 'admin_url', 'Admin/monitor/index', '', '直播监控', '');
INSERT INTO `cmf_auth_rule` VALUES (239, 1, 'Admin', 'admin_url', 'Admin/monitor/full', '', '大屏', '');
INSERT INTO `cmf_auth_rule` VALUES (240, 1, 'Admin', 'admin_url', 'Admin/monitor/stop', '', '强制关播', '');
INSERT INTO `cmf_auth_rule` VALUES (241, 1, 'Admin', 'admin_url', 'Admin/Gift/index', '', '礼物管理', '');
INSERT INTO `cmf_auth_rule` VALUES (242, 1, 'Admin', 'admin_url', 'Admin/Gift/add', '', '添加礼物', '');
INSERT INTO `cmf_auth_rule` VALUES (243, 1, 'Admin', 'admin_url', 'Admin/Gift/addPost', '', '添加礼物保存', '');
INSERT INTO `cmf_auth_rule` VALUES (244, 1, 'Admin', 'admin_url', 'Admin/Gift/edit', '', '编辑礼物', '');
INSERT INTO `cmf_auth_rule` VALUES (245, 1, 'Admin', 'admin_url', 'Admin/Gift/editPost', '', '编辑礼物提交', '');
INSERT INTO `cmf_auth_rule` VALUES (246, 1, 'Admin', 'admin_url', 'Admin/Gift/listOrder', '', '礼物排序', '');
INSERT INTO `cmf_auth_rule` VALUES (247, 1, 'Admin', 'admin_url', 'Admin/Gift/del', '', '删除礼物', '');
INSERT INTO `cmf_auth_rule` VALUES (248, 1, 'Admin', 'admin_url', 'Admin/Gift/plat', '', '礼物全站飘屏', '');
INSERT INTO `cmf_auth_rule` VALUES (249, 1, 'Admin', 'admin_url', 'Admin/Luckrate/index', '', '幸运礼物中奖设置', '');
INSERT INTO `cmf_auth_rule` VALUES (250, 1, 'Admin', 'admin_url', 'Admin/Luckrate/add', '', '添加礼物中奖', '');
INSERT INTO `cmf_auth_rule` VALUES (251, 1, 'Admin', 'admin_url', 'Admin/Luckrate/addPost', '', '礼物中奖添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (252, 1, 'Admin', 'admin_url', 'Admin/Luckrate/edit', '', '编辑礼物中奖设置', '');
INSERT INTO `cmf_auth_rule` VALUES (253, 1, 'Admin', 'admin_url', 'Admin/Luckrate/editPost', '', '中奖设置编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (254, 1, 'Admin', 'admin_url', 'Admin/Luckrate/del', '', '删除中奖设置记录', '');
INSERT INTO `cmf_auth_rule` VALUES (255, 1, 'Admin', 'admin_url', 'Admin/Jackpotrate/index', '', '奖池中奖设置', '');
INSERT INTO `cmf_auth_rule` VALUES (256, 1, 'Admin', 'admin_url', 'Admin/Jackpotrate/add', '', '添加奖池中奖', '');
INSERT INTO `cmf_auth_rule` VALUES (257, 1, 'Admin', 'admin_url', 'Admin/Jackpotrate/addPost', '', '奖池中奖添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (258, 1, 'Admin', 'admin_url', 'Admin/Jackpotrate/edit', '', '编辑奖池中奖', '');
INSERT INTO `cmf_auth_rule` VALUES (259, 1, 'Admin', 'admin_url', 'Admin/Jackpotrate/editPost', '', '奖池中奖编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (260, 1, 'Admin', 'admin_url', 'Admin/Jackpotrate/del', '', '删除奖池中奖', '');
INSERT INTO `cmf_auth_rule` VALUES (261, 1, 'Admin', 'admin_url', 'Admin/sticker/index', '', '贴纸管理', '');
INSERT INTO `cmf_auth_rule` VALUES (262, 1, 'Admin', 'admin_url', 'Admin/sticker/add', '', '添加贴纸', '');
INSERT INTO `cmf_auth_rule` VALUES (263, 1, 'Admin', 'admin_url', 'Admin/Sticker/addPost', '', '贴纸添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (264, 1, 'Admin', 'admin_url', 'Admin/Sticker/edit', '', '编辑贴纸', '');
INSERT INTO `cmf_auth_rule` VALUES (265, 1, 'Admin', 'admin_url', 'Admin/Sticker/editPost', '', '贴纸编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (266, 1, 'Admin', 'admin_url', 'Admin/Sticker/del', '', '删除贴纸', '');
INSERT INTO `cmf_auth_rule` VALUES (267, 1, 'Admin', 'admin_url', 'Admin/Sticker/listOrder', '', '贴纸排序', '');
INSERT INTO `cmf_auth_rule` VALUES (268, 1, 'Admin', 'admin_url', 'Admin/report/default', '', '用户举报管理', '');
INSERT INTO `cmf_auth_rule` VALUES (269, 1, 'Admin', 'admin_url', 'Admin/reportcat/index', '', '举报分类', '');
INSERT INTO `cmf_auth_rule` VALUES (270, 1, 'Admin', 'admin_url', 'Admin/reportcat/add', '', '添加举报分类', '');
INSERT INTO `cmf_auth_rule` VALUES (271, 1, 'Admin', 'admin_url', 'Admin/reportcat/addPost', '', '举报分类添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (272, 1, 'Admin', 'admin_url', 'Admin/reportcat/edit', '', '编辑举报分类', '');
INSERT INTO `cmf_auth_rule` VALUES (273, 1, 'Admin', 'admin_url', 'Admin/reportcat/editPost', '', '举报分类编辑保存', '');
INSERT INTO `cmf_auth_rule` VALUES (274, 1, 'Admin', 'admin_url', 'Admin/reportcat/del', '', '删除举报分类', '');
INSERT INTO `cmf_auth_rule` VALUES (275, 1, 'Admin', 'admin_url', 'Admin/reportcat/listOrder', '', '举报分类排序', '');
INSERT INTO `cmf_auth_rule` VALUES (276, 1, 'Admin', 'admin_url', 'Admin/Report/index', '', '用户举报列表', '');
INSERT INTO `cmf_auth_rule` VALUES (277, 1, 'Admin', 'admin_url', 'Admin/Report/del', '', '删除用户举报', '');
INSERT INTO `cmf_auth_rule` VALUES (278, 1, 'Admin', 'admin_url', 'Admin/Report/setstatus', '', '标记处理', '');
INSERT INTO `cmf_auth_rule` VALUES (279, 1, 'Admin', 'admin_url', 'Admin/Game/index', '', '游戏记录', '');
INSERT INTO `cmf_auth_rule` VALUES (280, 1, 'Admin', 'admin_url', 'Admin/Game/index2', '', '游戏详情', '');
INSERT INTO `cmf_auth_rule` VALUES (281, 1, 'Admin', 'admin_url', 'Admin/Dynamic/default', '', '动态管理', '');
INSERT INTO `cmf_auth_rule` VALUES (282, 1, 'Admin', 'admin_url', 'Admin/Dynamiclabel/index', '', '动态话题标签', '');
INSERT INTO `cmf_auth_rule` VALUES (283, 1, 'Admin', 'admin_url', 'Admin/Dynamiclabel/add', '', '添加话题标签', '');
INSERT INTO `cmf_auth_rule` VALUES (284, 1, 'Admin', 'admin_url', 'Admin/Dynamiclabel/addPost', '', '动态话题标签添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (285, 1, 'Admin', 'admin_url', 'Admin/Dynamiclabel/edit', '', '动态话题标签编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (286, 1, 'Admin', 'admin_url', 'Admin/Dynamiclabel/editPost', '', '动态话题标签编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (287, 1, 'Admin', 'admin_url', 'Admin/Dynamiclabel/del', '', '删除动态话题标签', '');
INSERT INTO `cmf_auth_rule` VALUES (288, 1, 'Admin', 'admin_url', 'Admin/Dynamiclabel/listsorders', '', '动态话题标签排序', '');
INSERT INTO `cmf_auth_rule` VALUES (289, 1, 'Admin', 'admin_url', 'Admin/Dynamiclabel/setrecommend', '', '动态话题标签推荐', '');
INSERT INTO `cmf_auth_rule` VALUES (290, 1, 'Admin', 'admin_url', 'Admin/Dynamiclabel/default', '', '动态列表', '');
INSERT INTO `cmf_auth_rule` VALUES (291, 1, 'Admin', 'admin_url', 'Admin/Dynamic/wait', 'isdel=0&amp;status=0', '等待审核列表', '');
INSERT INTO `cmf_auth_rule` VALUES (292, 1, 'Admin', 'admin_url', 'Admin/Dynamic/index', 'isdel=0&amp;status=1', '审核通过列表', '');
INSERT INTO `cmf_auth_rule` VALUES (293, 1, 'Admin', 'admin_url', 'Admin/Dynamic/nopass', 'isdel=0&amp;status=-1', '未审核通过', '');
INSERT INTO `cmf_auth_rule` VALUES (294, 1, 'Admin', 'admin_url', 'Admin/Dynamic/lower', 'isdel=1', '下架列表', '');
INSERT INTO `cmf_auth_rule` VALUES (295, 1, 'Admin', 'admin_url', 'Admin/Dynamic/del', '', '删除动态', '');
INSERT INTO `cmf_auth_rule` VALUES (296, 1, 'Admin', 'admin_url', 'Admin/Dynamic/setDel', '', '上/下架动态', '');
INSERT INTO `cmf_auth_rule` VALUES (297, 1, 'Admin', 'admin_url', 'Admin/Dynamic/setrecom', '', '设置推荐值', '');
INSERT INTO `cmf_auth_rule` VALUES (298, 1, 'Admin', 'admin_url', 'Admin/Dynamic/setstatus', '', '通过/拒绝', '');
INSERT INTO `cmf_auth_rule` VALUES (299, 1, 'Admin', 'admin_url', 'Admin/Dynamic/see', '', '查看动态内容', '');
INSERT INTO `cmf_auth_rule` VALUES (300, 1, 'Admin', 'admin_url', 'Admin/Dynamiccom/index', '', '动态评论列表', '');
INSERT INTO `cmf_auth_rule` VALUES (301, 1, 'Admin', 'admin_url', 'Admin/Dynamiccom/del', '', '删除动态评论', '');
INSERT INTO `cmf_auth_rule` VALUES (302, 1, 'Admin', 'admin_url', 'Admin/Dynamicrepotcat/index', '', '动态举报类型', '');
INSERT INTO `cmf_auth_rule` VALUES (303, 1, 'Admin', 'admin_url', 'Admin/Dynamicrepotcat/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (304, 1, 'Admin', 'admin_url', 'Admin/Dynamicrepotcat/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (305, 1, 'Admin', 'admin_url', 'Admin/Dynamicrepotcat/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (306, 1, 'Admin', 'admin_url', 'Admin/Dynamicrepotcat/editPost', '', '编辑保存', '');
INSERT INTO `cmf_auth_rule` VALUES (307, 1, 'Admin', 'admin_url', 'Admin/Dynamicrepotcat/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (308, 1, 'Admin', 'admin_url', 'Admin/Dynamicrepotcat/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (309, 1, 'Admin', 'admin_url', 'Admin/Dynamicrepot/index', '', '动态举报列表', '');
INSERT INTO `cmf_auth_rule` VALUES (310, 1, 'Admin', 'admin_url', 'Admin/Dynamicrepot/setstatus', '', '标记处理', '');
INSERT INTO `cmf_auth_rule` VALUES (311, 1, 'Admin', 'admin_url', 'Admin/Dynamicrepot/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (312, 1, 'Admin', 'admin_url', 'Admin/Videoclass/default', '', '视频管理', '');
INSERT INTO `cmf_auth_rule` VALUES (313, 1, 'Admin', 'admin_url', 'Admin/musiccat/index', '', '音乐分类', '');
INSERT INTO `cmf_auth_rule` VALUES (314, 1, 'Admin', 'admin_url', 'Admin/musiccat/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (315, 1, 'Admin', 'admin_url', 'Admin/musiccat/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (316, 1, 'Admin', 'admin_url', 'Admin/musiccat/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (317, 1, 'Admin', 'admin_url', 'Admin/musiccat/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (318, 1, 'Admin', 'admin_url', 'Admin/musiccat/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (319, 1, 'Admin', 'admin_url', 'Admin/musiccat/canceldel', '', '取消删除', '');
INSERT INTO `cmf_auth_rule` VALUES (320, 1, 'Admin', 'admin_url', 'Admin/musiccat/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (321, 1, 'Admin', 'admin_url', 'Admin/music/index', '', '音乐管理', '');
INSERT INTO `cmf_auth_rule` VALUES (322, 1, 'Admin', 'admin_url', 'Admin/music/add', '', '添加音乐', '');
INSERT INTO `cmf_auth_rule` VALUES (323, 1, 'Admin', 'admin_url', 'Admin/music/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (324, 1, 'Admin', 'admin_url', 'Admin/music/edit', '', '修改音乐', '');
INSERT INTO `cmf_auth_rule` VALUES (325, 1, 'Admin', 'admin_url', 'Admin/music/editPost', '', '修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES (326, 1, 'Admin', 'admin_url', 'Admin/music/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (327, 1, 'Admin', 'admin_url', 'Admin/music/canceldel', '', '取消删除', '');
INSERT INTO `cmf_auth_rule` VALUES (328, 1, 'Admin', 'admin_url', 'Admin/music/listen', '', '聆听', '');
INSERT INTO `cmf_auth_rule` VALUES (329, 1, 'Admin', 'admin_url', 'Admin/videoclass/index', '', '视频分类', '');
INSERT INTO `cmf_auth_rule` VALUES (330, 1, 'Admin', 'admin_url', 'Admin/videoclass/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (331, 1, 'Admin', 'admin_url', 'Admin/Videoclass/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (332, 1, 'Admin', 'admin_url', 'Admin/Videoclass/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (333, 1, 'Admin', 'admin_url', 'Admin/Videoclass/editPost', '', '编辑保存', '');
INSERT INTO `cmf_auth_rule` VALUES (334, 1, 'Admin', 'admin_url', 'Admin/Videoclass/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (335, 1, 'Admin', 'admin_url', 'Admin/Videoclass/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (336, 1, 'Admin', 'admin_url', 'Admin/Video/default', '', '视频列表管理', '');
INSERT INTO `cmf_auth_rule` VALUES (337, 1, 'Admin', 'admin_url', 'Admin/Video/index', 'isdel=0&amp;status=1', '审核通过列表', '');
INSERT INTO `cmf_auth_rule` VALUES (338, 1, 'Admin', 'admin_url', 'Admin/video/wait', 'isdel=0&amp;status=0&amp;is_draft=0', '待审核列表', '');
INSERT INTO `cmf_auth_rule` VALUES (339, 1, 'Admin', 'admin_url', 'Admin/Video/nopass', 'isdel=0&amp;status=2', '未通过列表', '');
INSERT INTO `cmf_auth_rule` VALUES (340, 1, 'Admin', 'admin_url', 'Admin/Video/lower', 'isdel=1', '下架视频列表', '');
INSERT INTO `cmf_auth_rule` VALUES (341, 1, 'Admin', 'admin_url', 'Admin/Video/add', '', '添加视频', '');
INSERT INTO `cmf_auth_rule` VALUES (342, 1, 'Admin', 'admin_url', 'Admin/Video/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (343, 1, 'Admin', 'admin_url', 'Admin/Video/edit', '', '编辑视频', '');
INSERT INTO `cmf_auth_rule` VALUES (344, 1, 'Admin', 'admin_url', 'Admin/Video/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (345, 1, 'Admin', 'admin_url', 'Admin/Video/setstatus', '', '审核', '');
INSERT INTO `cmf_auth_rule` VALUES (346, 1, 'Admin', 'admin_url', 'Admin/Video/setDel', '', '上/下架视频', '');
INSERT INTO `cmf_auth_rule` VALUES (347, 1, 'Admin', 'admin_url', 'Admin/Video/see', '', '查看视频', '');
INSERT INTO `cmf_auth_rule` VALUES (348, 1, 'Admin', 'admin_url', 'Admin/Video/batchPass', '', '批量通过', '');
INSERT INTO `cmf_auth_rule` VALUES (349, 1, 'Admin', 'admin_url', 'Admin/Video/batchReject', '', '批量拒绝', '');
INSERT INTO `cmf_auth_rule` VALUES (350, 1, 'Admin', 'admin_url', 'Admin/Video/del', '', '删除视频', '');
INSERT INTO `cmf_auth_rule` VALUES (351, 1, 'Admin', 'admin_url', 'Admin/videorepcat/index', '', '视频举报类型', '');
INSERT INTO `cmf_auth_rule` VALUES (352, 1, 'Admin', 'admin_url', 'Admin/Videorepcat/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (353, 1, 'Admin', 'admin_url', 'Admin/Videorepcat/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (354, 1, 'Admin', 'admin_url', 'Admin/Videorepcat/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (355, 1, 'Admin', 'admin_url', 'Admin/Videorepcat/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (356, 1, 'Admin', 'admin_url', 'Admin/Videorepcat/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (357, 1, 'Admin', 'admin_url', 'Admin/Videorepcat/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (358, 1, 'Admin', 'admin_url', 'Admin/videorep/index', '', '视频举报列表', '');
INSERT INTO `cmf_auth_rule` VALUES (359, 1, 'Admin', 'admin_url', 'Admin/Videorep/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (360, 1, 'Admin', 'admin_url', 'Admin/Advert/default', '', '广告视频管理', '');
INSERT INTO `cmf_auth_rule` VALUES (361, 1, 'Admin', 'admin_url', 'Admin/Advert/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (362, 1, 'Admin', 'admin_url', 'Admin/Advert/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (363, 1, 'Admin', 'admin_url', 'Admin/Advert/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (364, 1, 'Admin', 'admin_url', 'Admin/Advert/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (365, 1, 'Admin', 'admin_url', 'Admin/Advert/index', '', '广告视频列表', '');
INSERT INTO `cmf_auth_rule` VALUES (366, 1, 'Admin', 'admin_url', 'Admin/Advert/lowervideo', '', '下架广告视频列表', '');
INSERT INTO `cmf_auth_rule` VALUES (367, 1, 'Admin', 'admin_url', 'Admin/Advert/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (368, 1, 'Admin', 'admin_url', 'Admin/Advert/listsorders', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (369, 1, 'Admin', 'admin_url', 'Admin/Advert/set_shangjia', '', '上架', '');
INSERT INTO `cmf_auth_rule` VALUES (370, 1, 'Admin', 'admin_url', 'Admin/Advert/setXiajia', '', '下架', '');
INSERT INTO `cmf_auth_rule` VALUES (371, 1, 'Admin', 'admin_url', 'Admin/finance/default', '', '财务管理', '');
INSERT INTO `cmf_auth_rule` VALUES (372, 1, 'Admin', 'admin_url', 'Admin/chargerules/default', '', '充值规则管理', '');
INSERT INTO `cmf_auth_rule` VALUES (373, 1, 'Admin', 'admin_url', 'Admin/chargerules/index', '', '普通充值规则列表', '');
INSERT INTO `cmf_auth_rule` VALUES (374, 1, 'Admin', 'admin_url', 'Admin/chargerules/firstcharge', '', '首充规则列表', '');
INSERT INTO `cmf_auth_rule` VALUES (375, 1, 'Admin', 'admin_url', 'Admin/Chargerules/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (376, 1, 'Admin', 'admin_url', 'Admin/Chargerules/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (377, 1, 'Admin', 'admin_url', 'Admin/Chargerules/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (378, 1, 'Admin', 'admin_url', 'Admin/Chargerules/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (379, 1, 'Admin', 'admin_url', 'Admin/Chargerules/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (380, 1, 'Admin', 'admin_url', 'Admin/Chargerules/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (381, 1, 'Admin', 'admin_url', 'Admin/charge/index', '', '钻石充值记录', '');
INSERT INTO `cmf_auth_rule` VALUES (382, 1, 'Admin', 'admin_url', 'Admin/Charge/setPay', '', '确认支付', '');
INSERT INTO `cmf_auth_rule` VALUES (383, 1, 'Admin', 'admin_url', 'Admin/Charge/export', '', '导出', '');
INSERT INTO `cmf_auth_rule` VALUES (384, 1, 'Admin', 'admin_url', 'Admin/manual/index', '', '手动充值钻石', '');
INSERT INTO `cmf_auth_rule` VALUES (385, 1, 'Admin', 'admin_url', 'Admin/Manual/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (386, 1, 'Admin', 'admin_url', 'Admin/Manual/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (387, 1, 'Admin', 'admin_url', 'Admin/Manual/export', '', '导出', '');
INSERT INTO `cmf_auth_rule` VALUES (388, 1, 'Admin', 'admin_url', 'Admin/Coinrecord/index', '', '钻石消费记录', '');
INSERT INTO `cmf_auth_rule` VALUES (389, 1, 'Admin', 'admin_url', 'Admin/Coinrecord/export', '', '导出', '');
INSERT INTO `cmf_auth_rule` VALUES (390, 1, 'Admin', 'admin_url', 'Admin/Cash/index', '', '云票提现记录', '');
INSERT INTO `cmf_auth_rule` VALUES (391, 1, 'Admin', 'admin_url', 'Admin/Cash/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (392, 1, 'Admin', 'admin_url', 'Admin/Cash/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (393, 1, 'Admin', 'admin_url', 'Admin/Cash/export', '', '导出', '');
INSERT INTO `cmf_auth_rule` VALUES (394, 1, 'Admin', 'admin_url', 'Admin/Scorerecord/index', '', '积分记录', '');
INSERT INTO `cmf_auth_rule` VALUES (395, 1, 'Admin', 'admin_url', 'Admin/Family/default', '', '家族管理', '');
INSERT INTO `cmf_auth_rule` VALUES (396, 1, 'Admin', 'admin_url', 'Admin/Family/index', '', '家族列表', '');
INSERT INTO `cmf_auth_rule` VALUES (397, 1, 'Admin', 'admin_url', 'Admin/Family/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (398, 1, 'Admin', 'admin_url', 'Admin/Family/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (399, 1, 'Admin', 'admin_url', 'Admin/Family/disable', '', '禁用', '');
INSERT INTO `cmf_auth_rule` VALUES (400, 1, 'Admin', 'admin_url', 'Admin/Family/enable', '', '启用', '');
INSERT INTO `cmf_auth_rule` VALUES (401, 1, 'Admin', 'admin_url', 'Admin/Family/profit', '', '收益', '');
INSERT INTO `cmf_auth_rule` VALUES (402, 1, 'Admin', 'admin_url', 'Admin/Family/cash', '', '提现记录', '');
INSERT INTO `cmf_auth_rule` VALUES (403, 1, 'Admin', 'admin_url', 'Admin/Family/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (404, 1, 'Admin', 'admin_url', 'Admin/Familyuser/index', '', '成员列表', '');
INSERT INTO `cmf_auth_rule` VALUES (405, 1, 'Admin', 'admin_url', 'Admin/Familyuser/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (406, 1, 'Admin', 'admin_url', 'Admin/Familyuser/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (407, 1, 'Admin', 'admin_url', 'Admin/Familyuser/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (408, 1, 'Admin', 'admin_url', 'Admin/Familyuser/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (409, 1, 'Admin', 'admin_url', 'Admin/Familyuser/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (410, 1, 'Admin', 'admin_url', 'Admin/Familyuser/divideapply', '', '成员分成申请', '');
INSERT INTO `cmf_auth_rule` VALUES (411, 1, 'Admin', 'admin_url', 'Admin/Familyuser/applyedit', '', '审核', '');
INSERT INTO `cmf_auth_rule` VALUES (412, 1, 'Admin', 'admin_url', 'Admin/Familyuser/applyeditPost', '', '审核提交', '');
INSERT INTO `cmf_auth_rule` VALUES (413, 1, 'Admin', 'admin_url', 'Admin/Familyuser/delapply', '', '删除申请', '');
INSERT INTO `cmf_auth_rule` VALUES (414, 1, 'Admin', 'admin_url', 'Admin/Car/default', '', '道具管理', '');
INSERT INTO `cmf_auth_rule` VALUES (415, 1, 'Admin', 'admin_url', 'Admin/Car/index', '', '坐骑列表', '');
INSERT INTO `cmf_auth_rule` VALUES (416, 1, 'Admin', 'admin_url', 'Admin/Car/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (417, 1, 'Admin', 'admin_url', 'Admin/Car/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (418, 1, 'Admin', 'admin_url', 'Admin/Car/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (419, 1, 'Admin', 'admin_url', 'Admin/Car/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (420, 1, 'Admin', 'admin_url', 'Admin/Car/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (421, 1, 'Admin', 'admin_url', 'Admin/Car/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (422, 1, 'Admin', 'admin_url', 'Admin/Liang/index', '', '靓号列表', '');
INSERT INTO `cmf_auth_rule` VALUES (423, 1, 'Admin', 'admin_url', 'Admin/Liang/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (424, 1, 'Admin', 'admin_url', 'Admin/Liang/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (425, 1, 'Admin', 'admin_url', 'Admin/Liang/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (426, 1, 'Admin', 'admin_url', 'Admin/Liang/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (427, 1, 'Admin', 'admin_url', 'Admin/Liang/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (428, 1, 'Admin', 'admin_url', 'Admin/Liang/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (429, 1, 'Admin', 'admin_url', 'Admin/Liang/setStatus', '', '修改状态', '');
INSERT INTO `cmf_auth_rule` VALUES (430, 1, 'admin', 'admin_url', 'admin/vip/default', '', 'VIP管理', '');
INSERT INTO `cmf_auth_rule` VALUES (431, 1, 'Admin', 'admin_url', 'Admin/Vip/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (432, 1, 'Admin', 'admin_url', 'Admin/Vip/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (433, 1, 'Admin', 'admin_url', 'Admin/Vip/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (434, 1, 'Admin', 'admin_url', 'Admin/Vip/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (435, 1, 'Admin', 'admin_url', 'Admin/Vip/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (436, 1, 'Admin', 'admin_url', 'Admin/Vip/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (437, 1, 'Admin', 'admin_url', 'Admin/Red/index', '', '红包管理', '');
INSERT INTO `cmf_auth_rule` VALUES (438, 1, 'Admin', 'admin_url', 'Admin/Red/index2', '', '领取详情', '');
INSERT INTO `cmf_auth_rule` VALUES (439, 1, 'Admin', 'admin_url', 'Admin/Guard/index', '', '守护管理', '');
INSERT INTO `cmf_auth_rule` VALUES (440, 1, 'Admin', 'admin_url', 'Admin/Guard/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (441, 1, 'Admin', 'admin_url', 'Admin/Guard/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (442, 1, 'Admin', 'admin_url', 'Admin/Guard/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (443, 1, 'Admin', 'admin_url', 'Admin/Guard/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (444, 1, 'Admin', 'admin_url', 'Admin/Guard/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (445, 1, 'Admin', 'admin_url', 'Admin/Guard/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (446, 1, 'Admin', 'admin_url', 'Admin/Level/default', '', '等级管理', '');
INSERT INTO `cmf_auth_rule` VALUES (447, 1, 'Admin', 'admin_url', 'Admin/Level/index', '', '用户等级列表', '');
INSERT INTO `cmf_auth_rule` VALUES (448, 1, 'Admin', 'admin_url', 'Admin/Levelanchor/index', '', '主播等级列表', '');
INSERT INTO `cmf_auth_rule` VALUES (449, 1, 'Admin', 'admin_url', 'Admin/Level/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (450, 1, 'Admin', 'admin_url', 'Admin/Level/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (451, 1, 'Admin', 'admin_url', 'Admin/Level/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (452, 1, 'Admin', 'admin_url', 'Admin/Level/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (453, 1, 'Admin', 'admin_url', 'Admin/Level/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (454, 1, 'Admin', 'admin_url', 'Admin/Levelanchor/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (455, 1, 'Admin', 'admin_url', 'Admin/Levelanchor/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (456, 1, 'Admin', 'admin_url', 'Admin/Levelanchor/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (457, 1, 'Admin', 'admin_url', 'Admin/Levelanchor/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (458, 1, 'Admin', 'admin_url', 'Admin/Levelanchor/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (459, 1, 'Admin', 'admin_url', 'Admin/Agent/default', '', '邀请奖励', '');
INSERT INTO `cmf_auth_rule` VALUES (460, 1, 'Admin', 'admin_url', 'Admin/Agent/index', '', '邀请关系', '');
INSERT INTO `cmf_auth_rule` VALUES (461, 1, 'Admin', 'admin_url', 'Admin/Agent/index2', '', '邀请收益', '');
INSERT INTO `cmf_auth_rule` VALUES (462, 1, 'Admin', 'admin_url', 'Admin/Shop/default', '', '商城管理', '');
INSERT INTO `cmf_auth_rule` VALUES (463, 1, 'Admin', 'admin_url', 'Admin/Shopapply/index', '', '店铺申请', '');
INSERT INTO `cmf_auth_rule` VALUES (464, 1, 'Admin', 'admin_url', 'Admin/Shopapply/edit', '', '编辑店铺申请', '');
INSERT INTO `cmf_auth_rule` VALUES (465, 1, 'Admin', 'admin_url', 'Admin/Shopapply/editPost', '', '店铺申请编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (466, 1, 'Admin', 'admin_url', 'Admin/Shopapply/platformedit', '', '平台自营店铺', '');
INSERT INTO `cmf_auth_rule` VALUES (467, 1, 'Admin', 'admin_url', 'Admin/Shopapply/platformeditPost', '', '平台自营店铺编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (468, 1, 'Admin', 'admin_url', 'Admin/Shopapply/del', '', '删除店铺申请', '');
INSERT INTO `cmf_auth_rule` VALUES (469, 1, 'Admin', 'admin_url', 'Admin/shopbond/index', '', '店铺保证金', '');
INSERT INTO `cmf_auth_rule` VALUES (470, 1, 'Admin', 'admin_url', 'Admin/shopbond/setstatus', '', '处理', '');
INSERT INTO `cmf_auth_rule` VALUES (471, 1, 'Admin', 'admin_url', 'Admin/shopgoods/index', '', '商品列表', '');
INSERT INTO `cmf_auth_rule` VALUES (472, 1, 'Admin', 'admin_url', 'Admin/Shopgoods/setStatus', '', '上下架', '');
INSERT INTO `cmf_auth_rule` VALUES (473, 1, 'Admin', 'admin_url', 'Admin/Shopgoods/edit', '', '商品审核/详情', '');
INSERT INTO `cmf_auth_rule` VALUES (474, 1, 'Admin', 'admin_url', 'Admin/Shopgoods/editPost', '', '商品审核提交', '');
INSERT INTO `cmf_auth_rule` VALUES (475, 1, 'Admin', 'admin_url', 'Admin/Shopgoods/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (476, 1, 'Admin', 'admin_url', 'Admin/Shopgoods/setRecom', '', '推荐/取消推荐', '');
INSERT INTO `cmf_auth_rule` VALUES (477, 1, 'Admin', 'admin_url', 'Admin/Shopgoods/commentlist', '', '商品评论列表', '');
INSERT INTO `cmf_auth_rule` VALUES (478, 1, 'Admin', 'admin_url', 'Admin/Shopgoods/delComment', '', '删除商品评论', '');
INSERT INTO `cmf_auth_rule` VALUES (479, 1, 'Admin', 'admin_url', 'Admin/Shopgoods/add', '', '添加平台自营商品', '');
INSERT INTO `cmf_auth_rule` VALUES (480, 1, 'Admin', 'admin_url', 'Admin/Shopgoods/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (481, 1, 'Admin', 'admin_url', 'Admin/Shopgoods/platformedit', '', '自营商品编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (482, 1, 'Admin', 'admin_url', 'Admin/Shopgoods/platformeditPost', '', '自营商品编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (483, 1, 'Admin', 'admin_url', 'Admin/Shopgoods/setLiveisShow', '', '设置/取消直播间展示', '');
INSERT INTO `cmf_auth_rule` VALUES (484, 1, 'Admin', 'admin_url', 'Admin/Goodsclass/index', '', '商品分类管理', '');
INSERT INTO `cmf_auth_rule` VALUES (485, 1, 'Admin', 'admin_url', 'Admin/Buyeraddress/index', '', '收货地址管理', '');
INSERT INTO `cmf_auth_rule` VALUES (486, 1, 'Admin', 'admin_url', 'Admin/Buyeraddress/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (487, 1, 'Admin', 'admin_url', 'Admin/Express/index', '', '物流公司列表', '');
INSERT INTO `cmf_auth_rule` VALUES (488, 1, 'Admin', 'admin_url', 'Admin/Express/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (489, 1, 'Admin', 'admin_url', 'Admin/Express/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (490, 1, 'Admin', 'admin_url', 'Admin/Express/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (491, 1, 'Admin', 'admin_url', 'Admin/Express/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (492, 1, 'Admin', 'admin_url', 'Admin/Express/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (493, 1, 'Admin', 'admin_url', 'Admin/Express/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (494, 1, 'Admin', 'admin_url', 'Admin/Refundreason/index', '', '买家申请退货原因', '');
INSERT INTO `cmf_auth_rule` VALUES (495, 1, 'Admin', 'admin_url', 'Admin/Refundreason/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (496, 1, 'Admin', 'admin_url', 'Admin/Refundreason/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (497, 1, 'Admin', 'admin_url', 'Admin/Refundreason/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (498, 1, 'Admin', 'admin_url', 'Admin/Refundreason/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (499, 1, 'Admin', 'admin_url', 'Admin/Refundreason/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (500, 1, 'Admin', 'admin_url', 'Admin/Refundreason/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (501, 1, 'Admin', 'admin_url', 'Admin/Refusereason/index', '', '卖家拒绝退款原因', '');
INSERT INTO `cmf_auth_rule` VALUES (502, 1, 'Admin', 'admin_url', 'Admin/Refusereason/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (503, 1, 'Admin', 'admin_url', 'Admin/Refusereason/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (504, 1, 'Admin', 'admin_url', 'Admin/Refusereason/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (505, 1, 'Admin', 'admin_url', 'Admin/Refusereason/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (506, 1, 'Admin', 'admin_url', 'Admin/Refusereason/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (507, 1, 'Admin', 'admin_url', 'Admin/Refusereason/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (508, 1, 'Admin', 'admin_url', 'Admin/Platformreason/index', '', '平台介入退款原因', '');
INSERT INTO `cmf_auth_rule` VALUES (509, 1, 'Admin', 'admin_url', 'Admin/Platformreason/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (510, 1, 'Admin', 'admin_url', 'Admin/Platformreason/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (511, 1, 'Admin', 'admin_url', 'Admin/Platformreason/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (512, 1, 'Admin', 'admin_url', 'Admin/Platformreason/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (513, 1, 'Admin', 'admin_url', 'Admin/Platformreason/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (514, 1, 'Admin', 'admin_url', 'Admin/Platformreason/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (515, 1, 'Admin', 'admin_url', 'Admin/Goodsorder/index', '', '商品订单列表', '');
INSERT INTO `cmf_auth_rule` VALUES (516, 1, 'Admin', 'admin_url', 'Admin/Goodsorder/info', '', '订单详情', '');
INSERT INTO `cmf_auth_rule` VALUES (517, 1, 'Admin', 'admin_url', 'Admin/Goodsorder/setexpress', '', '填写物流信息', '');
INSERT INTO `cmf_auth_rule` VALUES (518, 1, 'Admin', 'admin_url', 'Admin/Goodsorder/setexpressPost', '', '填写物流信息提交', '');
INSERT INTO `cmf_auth_rule` VALUES (519, 1, 'Admin', 'admin_url', 'Admin/Refundlist/index', '', '退款列表', '');
INSERT INTO `cmf_auth_rule` VALUES (520, 1, 'Admin', 'admin_url', 'Admin/Refundlist/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (521, 1, 'Admin', 'admin_url', 'Admin/Refundlist/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (522, 1, 'Admin', 'admin_url', 'Admin/Refundlist/platformedit', '', '平台自营处理退款', '');
INSERT INTO `cmf_auth_rule` VALUES (523, 1, 'Admin', 'admin_url', 'Admin/Refundlist/platformeditPost', '', '平台自营退款处理提交', '');
INSERT INTO `cmf_auth_rule` VALUES (524, 1, 'Admin', 'admin_url', 'Admin/Shopcash/index', '', '提现记录', '');
INSERT INTO `cmf_auth_rule` VALUES (525, 1, 'Admin', 'admin_url', 'Admin/Balance/index', '', '余额手动充值', '');
INSERT INTO `cmf_auth_rule` VALUES (526, 1, 'Admin', 'admin_url', 'Admin/Shopcash/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (527, 1, 'Admin', 'admin_url', 'Admin/Shopcash/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (528, 1, 'Admin', 'admin_url', 'Admin/Shopcash/export', '', '导出', '');
INSERT INTO `cmf_auth_rule` VALUES (529, 1, 'Admin', 'admin_url', 'Admin/Balance/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (530, 1, 'Admin', 'admin_url', 'Admin/Balance/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (531, 1, 'Admin', 'admin_url', 'Admin/Balance/export', '', '导出', '');
INSERT INTO `cmf_auth_rule` VALUES (532, 1, 'Admin', 'admin_url', 'Admin/Shopcategory/index', '', '经营类目申请', '');
INSERT INTO `cmf_auth_rule` VALUES (533, 1, 'Admin', 'admin_url', 'Admin/Shopcategory/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (534, 1, 'Admin', 'admin_url', 'Admin/Shopcategory/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (535, 1, 'Admin', 'admin_url', 'Admin/Shopcategory/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (536, 1, 'Admin', 'admin_url', 'Admin/turntable/default', '', '大转盘', '');
INSERT INTO `cmf_auth_rule` VALUES (537, 1, 'Admin', 'admin_url', 'Admin/turntablecon/index', '', '价格管理', '');
INSERT INTO `cmf_auth_rule` VALUES (538, 1, 'Admin', 'admin_url', 'Admin/Turntablecon/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (539, 1, 'Admin', 'admin_url', 'Admin/Turntablecon/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (540, 1, 'Admin', 'admin_url', 'Admin/Turntablecon/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (541, 1, 'Admin', 'admin_url', 'Admin/turntable/index', '', '奖品管理', '');
INSERT INTO `cmf_auth_rule` VALUES (542, 1, 'Admin', 'admin_url', 'Admin/turntable/index2', '', '转盘记录', '');
INSERT INTO `cmf_auth_rule` VALUES (543, 1, 'Admin', 'admin_url', 'Admin/turntable/index3', '', '线下奖品', '');
INSERT INTO `cmf_auth_rule` VALUES (544, 1, 'Admin', 'admin_url', 'Admin/turntable/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (545, 1, 'Admin', 'admin_url', 'Admin/turntable/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (546, 1, 'Admin', 'admin_url', 'Admin/turntable/setstatus', '', '处理', '');
INSERT INTO `cmf_auth_rule` VALUES (547, 1, 'Admin', 'admin_url', 'Admin/Loginbonus/index', '', '登录奖励', '');
INSERT INTO `cmf_auth_rule` VALUES (548, 1, 'Admin', 'admin_url', 'Admin/Loginbonus/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (549, 1, 'Admin', 'admin_url', 'Admin/Loginbonus/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (550, 1, 'Admin', 'admin_url', 'Admin/Loginbonus/index2', '', '奖励记录', '');
INSERT INTO `cmf_auth_rule` VALUES (551, 1, 'Admin', 'admin_url', 'Admin/note/default', '', '消息管理', '');
INSERT INTO `cmf_auth_rule` VALUES (552, 1, 'Admin', 'admin_url', 'Admin/sendcode/index', '', '验证码列表', '');
INSERT INTO `cmf_auth_rule` VALUES (553, 1, 'Admin', 'admin_url', 'Admin/push/index', '', '推送管理', '');
INSERT INTO `cmf_auth_rule` VALUES (554, 1, 'Admin', 'admin_url', 'Admin/system/index', '', '直播间消息', '');
INSERT INTO `cmf_auth_rule` VALUES (555, 1, 'Admin', 'admin_url', 'Admin/sendcode/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (556, 1, 'Admin', 'admin_url', 'Admin/sendcode/export', '', '导出', '');
INSERT INTO `cmf_auth_rule` VALUES (557, 1, 'Admin', 'admin_url', 'Admin/Push/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (558, 1, 'Admin', 'admin_url', 'Admin/Push/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (559, 1, 'Admin', 'admin_url', 'Admin/Push/export', '', '导出', '');
INSERT INTO `cmf_auth_rule` VALUES (560, 1, 'Admin', 'admin_url', 'Admin/System/send', '', '发送', '');
INSERT INTO `cmf_auth_rule` VALUES (561, 1, 'Admin', 'admin_url', 'Admin/Portal/default', '', '内容管理', '');
INSERT INTO `cmf_auth_rule` VALUES (562, 1, 'Admin', 'admin_url', 'Admin/feedback/index', '', '用户反馈', '');
INSERT INTO `cmf_auth_rule` VALUES (563, 1, 'Admin', 'admin_url', 'Admin/feedback/setstatus', '', '标记处理', '');
INSERT INTO `cmf_auth_rule` VALUES (564, 1, 'Admin', 'admin_url', 'Admin/feedback/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (565, 1, 'Portal', 'admin_url', 'Portal/AdminPage/index', '', '页面管理', '');
INSERT INTO `cmf_auth_rule` VALUES (566, 1, 'Portal', 'admin_url', 'Portal/AdminPage/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (567, 1, 'Portal', 'admin_url', 'Portal/AdminPage/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (568, 1, 'Portal', 'admin_url', 'Portal/AdminPage/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (569, 1, 'Portal', 'admin_url', 'Portal/AdminPage/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (570, 1, 'Portal', 'admin_url', 'Portal/AdminPage/delete', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (571, 1, 'Portal', 'admin_url', 'Portal/AdminPage/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (572, 1, 'Admin', 'admin_url', 'Admin/paidprogram/default', '', '付费内容管理', '');
INSERT INTO `cmf_auth_rule` VALUES (573, 1, 'Admin', 'admin_url', 'Admin/Paidprogramclass/index', '', '付费内容分类', '');
INSERT INTO `cmf_auth_rule` VALUES (574, 1, 'Admin', 'admin_url', 'Admin/Paidprogramclass/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES (575, 1, 'Admin', 'admin_url', 'Admin/Paidprogramclass/addPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (576, 1, 'Admin', 'admin_url', 'Admin/Paidprogramclass/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (577, 1, 'Admin', 'admin_url', 'Admin/Paidprogramclass/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (578, 1, 'Admin', 'admin_url', 'Admin/Paidprogramclass/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES (579, 1, 'Admin', 'admin_url', 'Admin/Paidprogramclass/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (580, 1, 'Admin', 'admin_url', 'Admin/Paidprogram/index', '', '付费内容列表', '');
INSERT INTO `cmf_auth_rule` VALUES (581, 1, 'Admin', 'admin_url', 'Admin/Paidprogram/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (582, 1, 'Admin', 'admin_url', 'Admin/Paidprogram/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (583, 1, 'Admin', 'admin_url', 'Admin/Paidprogram/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (584, 1, 'Admin', 'admin_url', 'Admin/Paidprogram/applylist', '', '申请列表', '');
INSERT INTO `cmf_auth_rule` VALUES (585, 1, 'Admin', 'admin_url', 'Admin/Paidprogram/applyedit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (586, 1, 'Admin', 'admin_url', 'Admin/Paidprogram/applyeditPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (587, 1, 'Admin', 'admin_url', 'Admin/Paidprogram/applydel', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (588, 1, 'Admin', 'admin_url', 'Admin/Paidprogram/orderlist', '', '订单列表', '');
INSERT INTO `cmf_auth_rule` VALUES (589, 1, 'Admin', 'admin_url', 'Admin/Paidprogram/setPay', '', '确认支付', '');
INSERT INTO `cmf_auth_rule` VALUES (590, 1, 'Admin', 'admin_url', 'Admin/Paidprogram/export', '', '导出', '');
INSERT INTO `cmf_auth_rule` VALUES (591, 1, 'admin', 'admin_url', 'admin/vip/index', '', 'VIP列表', '');
INSERT INTO `cmf_auth_rule` VALUES (592, 1, 'admin', 'admin_url', 'admin/vipuser/index', '', 'VIP用户', '');
INSERT INTO `cmf_auth_rule` VALUES (593, 1, 'admin', 'admin_url', 'admin/vipuser/add', '', '添加vip用户', '');
INSERT INTO `cmf_auth_rule` VALUES (594, 1, 'admin', 'admin_url', 'admin/vipuser/addPost', '', 'vip用户添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (595, 1, 'admin', 'admin_url', 'admin/vipuser/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (596, 1, 'admin', 'admin_url', 'admin/vipuser/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (597, 1, 'admin', 'admin_url', 'admin/vipuser/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (598, 1, 'admin', 'admin_url', 'admin/Liverecord/index', '', '直播记录', '');
INSERT INTO `cmf_auth_rule` VALUES (599, 1, 'admin', 'admin_url', 'admin/Liverecord/del', '', '删除直播记录', '');
INSERT INTO `cmf_auth_rule` VALUES (600, 1, 'admin', 'admin_url', 'admin/Index/default', '', '游戏管理', '');
INSERT INTO `cmf_auth_rule` VALUES (601, 1, 'admin', 'admin_url', 'admin/Game/default', '', '星球探宝', '');
INSERT INTO `cmf_auth_rule` VALUES (602, 1, 'admin', 'admin_url', 'admin/Game/default1', '', '幸运大转盘', '');
INSERT INTO `cmf_auth_rule` VALUES (603, 1, 'admin', 'admin_url', 'admin/Game/xqtbgift', '', '奖品列表', '');
INSERT INTO `cmf_auth_rule` VALUES (604, 1, 'admin', 'admin_url', 'admin/Game/xqtbwinlist', '', '中奖记录', '');
INSERT INTO `cmf_auth_rule` VALUES (605, 1, 'admin', 'admin_url', 'admin/Game/xydzpgift', '', '奖品列表', '');
INSERT INTO `cmf_auth_rule` VALUES (606, 1, 'admin', 'admin_url', 'admin/Game/xydzpwinlist', '', '中奖记录', '');
INSERT INTO `cmf_auth_rule` VALUES (607, 1, 'admin', 'admin_url', 'admin/Game/xqtbadd', '', '添加奖品', '');
INSERT INTO `cmf_auth_rule` VALUES (608, 1, 'admin', 'admin_url', 'admin/Game/xqtbaddPost', '', '添加保存', '');
INSERT INTO `cmf_auth_rule` VALUES (609, 1, 'admin', 'admin_url', 'admin/Game/xqtbedit', '', '编辑奖品', '');
INSERT INTO `cmf_auth_rule` VALUES (610, 1, 'admin', 'admin_url', 'admin/Game/xqtbeditPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (611, 1, 'admin', 'admin_url', 'admin/Game/xqtbdel', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES (612, 1, 'admin', 'admin_url', 'admin/Game/xqtblistOrder', '', '排序', '');

-- ----------------------------
-- Table structure for cmf_backpack
-- ----------------------------
DROP TABLE IF EXISTS `cmf_backpack`;
CREATE TABLE `cmf_backpack`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `giftid` int(11) NOT NULL DEFAULT 0 COMMENT '礼物ID',
  `nums` int(11) NOT NULL DEFAULT 0 COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_balance_charge_admin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_balance_charge_admin`;
CREATE TABLE `cmf_balance_charge_admin`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `touid` int(11) NOT NULL DEFAULT 0 COMMENT '充值对象ID',
  `balance` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '金额',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '管理员',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_car
-- ----------------------------
DROP TABLE IF EXISTS `cmf_car`;
CREATE TABLE `cmf_car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片链接',
  `swf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '动画链接',
  `swftime` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '动画时长',
  `needcoin` int(20) NOT NULL DEFAULT 0 COMMENT '价格',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '积分价格',
  `list_order` int(10) NOT NULL DEFAULT 9999 COMMENT '序号',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `words` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '中文进场话术',
  `uptime` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  `words_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文进场话术',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_car
-- ----------------------------
INSERT INTO `cmf_car` VALUES (1, '小乌龟', 'car_1.png', 'car_gif_1.gif', 4.00, 100, 100, 3, 1659597034, '骑着小乌龟进场了', 0, 'Little turtle', 'Entering the venue riding a little turtle');
INSERT INTO `cmf_car` VALUES (2, '小毛驴', 'car_2.png', 'car_gif_2.gif', 4.01, 200, 19, 1, 1659597034, '骑着小毛驴进场了', 0, 'Words_en', 'Entered the venue riding a donkey');
INSERT INTO `cmf_car` VALUES (5, '魔法扫把', 'car_5.png', 'car_gif_5.gif', 4.00, 300, 300, 2, 1659597034, '骑着魔法扫把进场了', 0, 'Magic broom', 'Entering the venue riding a magic broom');

-- ----------------------------
-- Table structure for cmf_car_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_car_user`;
CREATE TABLE `cmf_car_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `carid` int(11) NOT NULL DEFAULT 0 COMMENT '坐骑ID',
  `endtime` int(11) NOT NULL DEFAULT 0 COMMENT '到期时间',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否启用',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_cash_account
-- ----------------------------
DROP TABLE IF EXISTS `cmf_cash_account`;
CREATE TABLE `cmf_cash_account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '类型，1表示支付宝，2表示微信，3表示银行卡',
  `account_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '银行名称',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '账号',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_uid`(`id`, `uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_cash_record
-- ----------------------------
DROP TABLE IF EXISTS `cmf_cash_record`;
CREATE TABLE `cmf_cash_record`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `money` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '提现金额',
  `votes` int(20) NOT NULL DEFAULT 0 COMMENT '提现映票数',
  `orderno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `trade_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '三方订单号',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态，0审核中，1审核通过，2审核拒绝',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '申请时间',
  `uptime` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '账号类型',
  `account_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '银行名称',
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '帐号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_charge_admin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_charge_admin`;
CREATE TABLE `cmf_charge_admin`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `touid` int(11) NOT NULL DEFAULT 0 COMMENT '充值对象ID',
  `coin` int(20) NOT NULL DEFAULT 0 COMMENT '钻石数',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '管理员',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_charge_rules
-- ----------------------------
DROP TABLE IF EXISTS `cmf_charge_rules`;
CREATE TABLE `cmf_charge_rules`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '钻石数',
  `coin_ios` int(11) NOT NULL DEFAULT 0 COMMENT '苹果钻石数',
  `money` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '安卓金额',
  `product_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '苹果项目ID',
  `give` int(11) NOT NULL DEFAULT 0 COMMENT '赠送钻石数',
  `list_order` int(11) NOT NULL DEFAULT 9999 COMMENT '序号',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `coin_paypal` int(11) NOT NULL DEFAULT 0 COMMENT 'paypal支付钻石数',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 普通充值規則 1 首充規則',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '首充贈送積分',
  `uptime` int(11) NOT NULL DEFAULT 0 COMMENT '修改時間',
  `vip_length` int(11) NOT NULL DEFAULT 0 COMMENT '首充贈送vip時長',
  `giftid` int(11) NOT NULL DEFAULT 0 COMMENT '首充贈送的熱門禮物id',
  `gift_num` int(11) NOT NULL DEFAULT 0 COMMENT '首充贈送的熱門禮物個數',
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_charge_rules
-- ----------------------------
INSERT INTO `cmf_charge_rules` VALUES (2, '3000钻石', 3000, 2100, 3000.00, 'coin_3000', 0, 1, 1659597034, 300, 0, 0, 1698298978, 0, 0, 0, '3000 coin');
INSERT INTO `cmf_charge_rules` VALUES (3, '9800钻石', 9800, 9800, 9800.00, 'coin_9800', 200, 2, 1659597034, 980, 0, 0, 1698298998, 0, 0, 0, '9800 coin');
INSERT INTO `cmf_charge_rules` VALUES (4, '38800钻石', 38800, 38800, 38800.00, 'coin_38800', 500, 3, 1659597034, 3880, 0, 0, 1698299009, 0, 0, 0, '38800 coin');
INSERT INTO `cmf_charge_rules` VALUES (5, '58800钻石', 58800, 58800, 58800.00, 'coin_58800', 1200, 4, 1659597034, 5880, 0, 0, 1698299021, 0, 0, 0, '58800 coin');
INSERT INTO `cmf_charge_rules` VALUES (6, '1元礼包', 10, 10, 1.00, 'coin_1', 0, 1, 1659597034, 10, 1, 0, 1705745869, 0, 0, 0, '1￥gift bag');
INSERT INTO `cmf_charge_rules` VALUES (7, '10元礼包', 150, 150, 10.00, 'coin_10', 0, 2, 1659597034, 150, 1, 100, 1702707398, 0, 21, 10, '10￥gift bag');
INSERT INTO `cmf_charge_rules` VALUES (8, '100元礼包', 1500, 1500, 100.00, 'coin_100', 0, 3, 1659597034, 1500, 1, 300, 1702707436, 30, 0, 0, '100￥gift bag');
INSERT INTO `cmf_charge_rules` VALUES (9, '100', 100, 100, 10.00, 'coin_10', 0, 0, 1688645704, 10, 0, 0, 1704869497, 0, 0, 0, '1 ');

-- ----------------------------
-- Table structure for cmf_charge_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_charge_user`;
CREATE TABLE `cmf_charge_user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `touid` int(11) NOT NULL DEFAULT 0 COMMENT '充值对象ID',
  `money` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '金额',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '钻石数',
  `coin_give` int(11) NOT NULL DEFAULT 0 COMMENT '赠送钻石数',
  `orderno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商家订单号',
  `trade_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '三方平台订单号',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '支付类型 1支付宝 2 微信支付 3 苹果支付 4 微信小程序 5 paypal 6 braintree_paypal',
  `ambient` tinyint(1) NOT NULL DEFAULT 0 COMMENT '支付环境',
  `is_first` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否是首充规则 0 否  1 是',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '首充赠送积分',
  `vip_length` int(11) NOT NULL DEFAULT 0 COMMENT '首充赠送vip时长',
  `giftid` int(11) NOT NULL DEFAULT 0 COMMENT '首充赠送礼物id',
  `gift_num` int(11) NOT NULL DEFAULT 0 COMMENT '首充赠送礼物数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `cmf_dynamic`;
CREATE TABLE `cmf_dynamic`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `thumb` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片地址：多张图片用分号隔开',
  `video_thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '视频封面',
  `href` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '视频地址',
  `voice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '语音链接',
  `length` int(11) NOT NULL DEFAULT 0 COMMENT '语音时长',
  `likes` int(11) NOT NULL DEFAULT 0 COMMENT '点赞数',
  `comments` int(11) NOT NULL DEFAULT 0 COMMENT '评论数',
  `type` int(10) NOT NULL DEFAULT 0 COMMENT '动态类型：0：纯文字；1：文字+图片；2：文字+视频；3：文字+语音 ；4：分享商品',
  `isdel` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除 1删除（下架）0不下架',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '视频状态 0未审核 1通过 2拒绝',
  `uptime` int(12) NOT NULL DEFAULT 0 COMMENT '审核不通过时间（第一次审核不通过时更改此值，用于判断是否发送极光IM）',
  `xiajia_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '下架原因',
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '维度',
  `lng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '经度',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '城市',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '详细地理位置',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '发布时间',
  `fail_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '审核原因',
  `show_val` int(12) NOT NULL DEFAULT 0 COMMENT '曝光值',
  `recommend_val` int(20) NOT NULL DEFAULT 0 COMMENT '推荐值',
  `labelid` int(11) NOT NULL DEFAULT 0 COMMENT '标签ID',
  `goodsid` bigint(20) NOT NULL DEFAULT 0 COMMENT '分享到动态的商品ID',
  `goods_isxiajia` tinyint(1) NOT NULL DEFAULT 0 COMMENT '分享到动态的商品是否下架 0 否 1 是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_dynamic_comments
-- ----------------------------
DROP TABLE IF EXISTS `cmf_dynamic_comments`;
CREATE TABLE `cmf_dynamic_comments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT 0 COMMENT '评论用户ID',
  `touid` int(10) NOT NULL DEFAULT 0 COMMENT '被评论用户ID',
  `dynamicid` int(10) NOT NULL DEFAULT 0 COMMENT '动态ID',
  `commentid` int(10) NOT NULL DEFAULT 0 COMMENT '评论iD',
  `parentid` int(10) NOT NULL DEFAULT 0 COMMENT '上级评论ID',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论内容',
  `likes` int(11) NOT NULL DEFAULT 0 COMMENT '点赞数',
  `addtime` int(10) NOT NULL DEFAULT 0 COMMENT '提交时间',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '类型，0文字1语音',
  `voice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '语音链接',
  `length` int(11) NOT NULL DEFAULT 0 COMMENT '时长',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_dynamic_comments_like
-- ----------------------------
DROP TABLE IF EXISTS `cmf_dynamic_comments_like`;
CREATE TABLE `cmf_dynamic_comments_like`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT 0 COMMENT '点赞用户ID',
  `commentid` int(10) NOT NULL DEFAULT 0 COMMENT '评论ID',
  `addtime` int(10) NOT NULL DEFAULT 0 COMMENT '提交时间',
  `touid` int(12) NOT NULL DEFAULT 0 COMMENT '被喜欢的评论者id',
  `dynamicid` int(12) NOT NULL DEFAULT 0 COMMENT '评论所属动态id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_dynamic_label
-- ----------------------------
DROP TABLE IF EXISTS `cmf_dynamic_label`;
CREATE TABLE `cmf_dynamic_label`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '中文简体标题',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '封面',
  `orderno` int(11) NOT NULL DEFAULT 10000 COMMENT '序号',
  `isrecommend` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否推荐 0否  1是',
  `use_nums` int(11) NOT NULL DEFAULT 0 COMMENT '使用次数',
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_dynamic_label
-- ----------------------------
INSERT INTO `cmf_dynamic_label` VALUES (2, '我有马甲线', 'dynamic_label_2.png', 1, 1, 20, 'I have vest line');
INSERT INTO `cmf_dynamic_label` VALUES (3, '中国的领土一寸也不能丢', 'dynamic_label_3.png', 3, 0, 7, 'Not an inch of China\'s territory can be lost');
INSERT INTO `cmf_dynamic_label` VALUES (4, '日常碎片', 'dynamic_label_4.png', 4, 0, 11, 'Everyday debris');
INSERT INTO `cmf_dynamic_label` VALUES (5, '三星堆遗址再次启动发掘', 'dynamic_label_5.png', 2, 0, 3, 'Excavation of Sanxingdui site starts aga');
INSERT INTO `cmf_dynamic_label` VALUES (6, '好人好事图鉴', 'dynamic_label_6.png', 5, 0, 18, 'Illustrated guide to good people and good deeds');
INSERT INTO `cmf_dynamic_label` VALUES (7, '致敬教育的燃灯者', 'dynamic_label_7.png', 6, 1, 5, 'Tribute to the lamp-burners of education');
INSERT INTO `cmf_dynamic_label` VALUES (8, '身边的美食鉴赏', 'dynamic_label_8.png', 7, 1, 7, 'Appreciation of food around you');
INSERT INTO `cmf_dynamic_label` VALUES (9, '人人公益节', 'dynamic_label_9.png', 8, 1, 3, 'Everyone’s Charity Day');
INSERT INTO `cmf_dynamic_label` VALUES (10, '如何看待综艺恶意剪辑', 'dynamic_label_10.png', 9, 0, 4, 'How to deal with malicious editing in variety shows');

-- ----------------------------
-- Table structure for cmf_dynamic_like
-- ----------------------------
DROP TABLE IF EXISTS `cmf_dynamic_like`;
CREATE TABLE `cmf_dynamic_like`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT 0 COMMENT '点赞用户',
  `dynamicid` int(10) NOT NULL DEFAULT 0 COMMENT '动态id',
  `addtime` int(10) NOT NULL DEFAULT 0 COMMENT '点赞时间',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '动态是否被删除或被拒绝 0被删除或被拒绝 1 正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_dynamic_report
-- ----------------------------
DROP TABLE IF EXISTS `cmf_dynamic_report`;
CREATE TABLE `cmf_dynamic_report`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '举报用户ID',
  `touid` int(11) NOT NULL DEFAULT 0 COMMENT '被举报用户ID',
  `dynamicid` int(11) NOT NULL DEFAULT 0 COMMENT '动态ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '举报内容',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0处理中 1已处理  2审核失败',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '提交时间',
  `uptime` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `dynamic_type` int(10) NOT NULL DEFAULT 0 COMMENT '动态类型：0：纯文字；1：文字+图片‘；2：视频+图片；3：语音+图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_dynamic_report_classify
-- ----------------------------
DROP TABLE IF EXISTS `cmf_dynamic_report_classify`;
CREATE TABLE `cmf_dynamic_report_classify`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `list_order` int(10) NOT NULL DEFAULT 10000 COMMENT '排序',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '举报类型名称',
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_dynamic_report_classify
-- ----------------------------
INSERT INTO `cmf_dynamic_report_classify` VALUES (1, 1, '低俗色情', 'Vulgar porn');
INSERT INTO `cmf_dynamic_report_classify` VALUES (2, 2, '侮辱谩骂', 'Insult and abuse');
INSERT INTO `cmf_dynamic_report_classify` VALUES (3, 3, '盗用他人作品', 'Misappropriation of other people\'s works');
INSERT INTO `cmf_dynamic_report_classify` VALUES (4, 4, '骗取点击', 'defraud clicks');
INSERT INTO `cmf_dynamic_report_classify` VALUES (5, 9, '其他', 'other');
INSERT INTO `cmf_dynamic_report_classify` VALUES (6, 5, '垃圾广告', 'spam ads');
INSERT INTO `cmf_dynamic_report_classify` VALUES (7, 6, '用户为未成年', 'The user is a minor');
INSERT INTO `cmf_dynamic_report_classify` VALUES (8, 7, '任性打抱不平，就爱举报', 'Willfully fight against injustice and love to report it');
INSERT INTO `cmf_dynamic_report_classify` VALUES (9, 8, '引人不适', 'causing discomfort');

-- ----------------------------
-- Table structure for cmf_family
-- ----------------------------
DROP TABLE IF EXISTS `cmf_family`;
CREATE TABLE `cmf_family`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '家族名称',
  `badge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '家族图标',
  `apply_pos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '身份证正面',
  `apply_side` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '身份证背面',
  `briefing` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '简介',
  `carded` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '证件号',
  `fullname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '申请时间',
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '申请状态 0未审核 1 审核失败 2 审核通过 3',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '失败原因',
  `disable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否禁用',
  `divide_family` int(11) NOT NULL DEFAULT 0 COMMENT '分成比例',
  `istip` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否需要通知',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_family_profit
-- ----------------------------
DROP TABLE IF EXISTS `cmf_family_profit`;
CREATE TABLE `cmf_family_profit`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '主播ID',
  `familyid` int(11) NOT NULL DEFAULT 0 COMMENT '家族ID',
  `time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '格式化日期',
  `profit_anthor` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '主播收益',
  `total` int(11) NOT NULL DEFAULT 0 COMMENT '总收益',
  `profit` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '家族收益',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_family_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_family_user`;
CREATE TABLE `cmf_family_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `familyid` int(11) NOT NULL DEFAULT 0 COMMENT '家族ID',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `uptime` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '原因',
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
  `signout` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否退出',
  `istip` tinyint(1) NOT NULL DEFAULT 0 COMMENT '审核后是否需要通知',
  `signout_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '踢出或拒绝理由',
  `signout_istip` tinyint(4) NOT NULL DEFAULT 0 COMMENT '踢出或拒绝是否需要通知',
  `divide_family` int(11) NOT NULL DEFAULT -1 COMMENT '家族分成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_family_user_divide_apply
-- ----------------------------
DROP TABLE IF EXISTS `cmf_family_user_divide_apply`;
CREATE TABLE `cmf_family_user_divide_apply`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户id',
  `familyid` int(11) NOT NULL DEFAULT 0 COMMENT '家族id',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `uptime` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '处理状态 0 等待审核 1 同意 -1 拒绝',
  `divide` int(11) NOT NULL DEFAULT 0 COMMENT '家族分成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_feedback
-- ----------------------------
DROP TABLE IF EXISTS `cmf_feedback`;
CREATE TABLE `cmf_feedback`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '系统版本号',
  `model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '设备',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `addtime` int(11) NOT NULL COMMENT '提交时间',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
  `uptime` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_game
-- ----------------------------
DROP TABLE IF EXISTS `cmf_game`;
CREATE TABLE `cmf_game`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` tinyint(1) NOT NULL DEFAULT 0 COMMENT '游戏名称',
  `liveuid` int(11) NOT NULL DEFAULT 0 COMMENT '主播ID',
  `bankerid` int(11) NOT NULL DEFAULT 0 COMMENT '庄家ID，0表示平台',
  `stream` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '直播流名',
  `starttime` int(11) NOT NULL DEFAULT 0 COMMENT '本次游戏开始时间',
  `endtime` int(11) NOT NULL DEFAULT 0 COMMENT '游戏结束时间',
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '本轮游戏结果',
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '当前游戏状态（0是进行中，1是正常结束，2是 主播关闭 3意外结束）',
  `banker_profit` int(11) NOT NULL DEFAULT 0 COMMENT '庄家收益',
  `banker_card` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '庄家牌型',
  `isintervene` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否进行系统干预',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_gamerecord
-- ----------------------------
DROP TABLE IF EXISTS `cmf_gamerecord`;
CREATE TABLE `cmf_gamerecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` tinyint(1) NOT NULL DEFAULT 0 COMMENT '游戏类型',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `liveuid` int(11) NOT NULL DEFAULT 0 COMMENT '主播ID',
  `gameid` int(11) NOT NULL DEFAULT 0 COMMENT '游戏ID',
  `coin_1` int(11) NOT NULL DEFAULT 0 COMMENT '1位置下注金额',
  `coin_2` int(11) NOT NULL DEFAULT 0 COMMENT '2位置下注金额',
  `coin_3` int(11) NOT NULL DEFAULT 0 COMMENT '3位置下注金额',
  `coin_4` int(11) NOT NULL DEFAULT 0 COMMENT '4位置下注金额',
  `coin_5` int(11) NOT NULL DEFAULT 0 COMMENT '5位置下注金额',
  `coin_6` int(11) NOT NULL DEFAULT 0 COMMENT '6位置下注金额',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '处理状态 0 未处理 1 已处理',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '下注时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_getcode_limit_ip
-- ----------------------------
DROP TABLE IF EXISTS `cmf_getcode_limit_ip`;
CREATE TABLE `cmf_getcode_limit_ip`  (
  `ip` bigint(20) NOT NULL COMMENT 'ip地址',
  `date` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '时间',
  `times` tinyint(4) NOT NULL DEFAULT 0 COMMENT '次数',
  PRIMARY KEY (`ip`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_gift
-- ----------------------------
DROP TABLE IF EXISTS `cmf_gift`;
CREATE TABLE `cmf_gift`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mark` tinyint(1) NOT NULL DEFAULT 0 COMMENT '标识，0普通，1热门，2守护',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '类型,0普通礼物，1豪华礼物，2贴纸礼物，3手绘礼物',
  `sid` int(11) NOT NULL DEFAULT 0 COMMENT '分类ID',
  `giftname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `needcoin` int(11) NOT NULL DEFAULT 0 COMMENT '价格',
  `gifticon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `list_order` int(3) NOT NULL DEFAULT 9999 COMMENT '序号',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `swftype` tinyint(1) NOT NULL DEFAULT 0 COMMENT '动画类型，0gif,1svga',
  `swf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '动画链接',
  `swftime` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '动画时长',
  `isplatgift` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否全站礼物：0：否；1：是',
  `sticker_id` int(11) NOT NULL DEFAULT 0 COMMENT '贴纸ID',
  `giftname_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_gift
-- ----------------------------
INSERT INTO `cmf_gift` VALUES (1, 2, 1, 0, '爱神丘比特', 5000, 'gift_1.png', 33, 1659597034, 1, 'gift_gif_1.svga', 6.31, 1, 0, 'Cupid');
INSERT INTO `cmf_gift` VALUES (2, 0, 1, 0, '爱心飞机', 2000, 'gift_2.png', 19, 1659597034, 1, 'gift_gif_2.svga', 7.52, 1, 0, 'love plane');
INSERT INTO `cmf_gift` VALUES (3, 0, 1, 0, '告白气球', 1000, 'gift_3.png', 32, 1659597034, 1, 'gift_gif_3.svga', 4.10, 1, 0, 'balloon');
INSERT INTO `cmf_gift` VALUES (4, 0, 1, 0, '流星雨', 10000, 'gift_4.png', 31, 1659597034, 1, 'gift_gif_4.svga', 6.00, 0, 0, 'shower');
INSERT INTO `cmf_gift` VALUES (5, 0, 1, 0, '玫瑰花束', 500, 'gift_5.png', 30, 1659597034, 1, 'gift_gif_5.svga', 4.10, 1, 0, 'rose');
INSERT INTO `cmf_gift` VALUES (6, 2, 1, 0, '梦幻城堡', 20000, 'gift_6.png', 29, 1659597034, 1, 'gift_gif_6.svga', 7.60, 1, 0, 'castle');
INSERT INTO `cmf_gift` VALUES (7, 0, 1, 0, '跑车', 300, 'gift_7.png', 28, 1659597034, 1, 'gift_gif_7.svga', 3.50, 1, 0, 'sports car');
INSERT INTO `cmf_gift` VALUES (8, 1, 1, 0, '鹊桥相会', 100, 'gift_8.png', 27, 1659597034, 1, 'gift_gif_8.svga', 7.50, 0, 0, 'Bridge');
INSERT INTO `cmf_gift` VALUES (9, 0, 1, 0, '旋转木马', 500, 'gift_9.png', 26, 1659597034, 1, 'gift_gif_9.svga', 5.00, 1, 0, 'carousel');
INSERT INTO `cmf_gift` VALUES (10, 0, 1, 0, '游轮', 1000, 'gift_10.png', 25, 1659597034, 1, 'gift_gif_10.svga', 4.90, 1, 0, 'cruise ship');
INSERT INTO `cmf_gift` VALUES (11, 0, 0, 0, '红包', 50, 'gift_11.png', 24, 1659597034, 0, '', 0.00, 0, 0, 'Red envelope');
INSERT INTO `cmf_gift` VALUES (12, 0, 0, 0, '棒棒糖', 5, 'gift_12.png', 23, 1659597034, 0, '', 0.00, 0, 0, 'Lollipop');
INSERT INTO `cmf_gift` VALUES (13, 0, 0, 0, '爱心大炮', 300, 'gift_13.png', 22, 1659597034, 0, '', 0.00, 0, 0, 'love cannon');
INSERT INTO `cmf_gift` VALUES (14, 0, 0, 0, '冰淇淋', 50, 'gift_14.png', 21, 1659597034, 0, '', 0.00, 0, 0, 'ice cream');
INSERT INTO `cmf_gift` VALUES (15, 0, 0, 0, '粉丝牌', 100, 'gift_15.png', 20, 1659597034, 0, '', 0.00, 0, 0, 'fan card');
INSERT INTO `cmf_gift` VALUES (16, 0, 0, 0, '干杯', 10, 'gift_16.png', 19, 1659597034, 0, '', 0.00, 0, 0, 'cheers');
INSERT INTO `cmf_gift` VALUES (17, 2, 0, 0, '皇冠', 150, 'gift_17.png', 18, 1659597034, 0, '', 0.00, 0, 0, 'crown');
INSERT INTO `cmf_gift` VALUES (18, 0, 0, 0, '金话筒', 130, 'gift_18.png', 17, 1659597034, 0, '', 0.00, 0, 0, 'microphone');
INSERT INTO `cmf_gift` VALUES (19, 3, 3, 0, '蓝色妖姬', 10, 'gift_19.png', 16, 1659597034, 0, '', 0.00, 0, 0, 'Enchantress');
INSERT INTO `cmf_gift` VALUES (20, 3, 0, 0, '魔法棒', 20, 'gift_20.png', 0, 1659597034, 0, '', 0.00, 0, 0, 'Magic');
INSERT INTO `cmf_gift` VALUES (21, 1, 0, 0, '吃药啦', 1, 'gift_21.png', 14, 1659597034, 0, '', 0.00, 0, 0, 'medicine');
INSERT INTO `cmf_gift` VALUES (22, 0, 0, 0, '666', 2, 'gift_22.png', 13, 1659597034, 0, '', 0.00, 0, 0, '666');
INSERT INTO `cmf_gift` VALUES (23, 2, 0, 0, '水晶球', 23, 'gift_23.png', 12, 1659597034, 0, '', 0.00, 0, 0, 'crystal ball');
INSERT INTO `cmf_gift` VALUES (24, 0, 3, 0, '甜心巧克力', 24, 'gift_24.png', 11, 1659597034, 0, '', 0.00, 0, 0, 'Chocolate');
INSERT INTO `cmf_gift` VALUES (25, 3, 0, 0, '炸翻全场', 25, 'gift_25.png', 1, 1659597034, 0, '', 0.00, 0, 0, 'Blow up ');
INSERT INTO `cmf_gift` VALUES (26, 0, 0, 0, '樱花奶茶', 26, 'gift_26.png', 9, 1659597034, 0, '', 0.00, 0, 0, 'Sakura tea');
INSERT INTO `cmf_gift` VALUES (27, 0, 0, 0, '大金砖', 27, 'gift_27.png', 8, 1659597034, 0, '', 0.00, 0, 0, 'gold bricks');
INSERT INTO `cmf_gift` VALUES (28, 3, 0, 0, '掌声鼓励', 28, 'gift_28.png', 2, 1659597034, 0, '', 0.00, 0, 0, 'applaud');
INSERT INTO `cmf_gift` VALUES (29, 0, 2, 0, '狗狗眼镜', 1000, 'face_036.png', 4, 1659597034, 0, '', 4.00, 0, 1, 'dog glasses');
INSERT INTO `cmf_gift` VALUES (30, 0, 2, 0, '雪茄墨镜', 2000, 'face_037.png', 3, 1659597034, 0, '', 3.00, 0, 2, 'cigar sunglasses');
INSERT INTO `cmf_gift` VALUES (62, 3, 0, 0, '甜甜圈', 10, 'gift_33.png', 1, 1659597034, 0, '', 0.00, 0, 0, 'Donut');
INSERT INTO `cmf_gift` VALUES (74, 0, 3, 0, '红唇', 10, 'gift_32.png', 7, 1659597034, 0, '', 0.00, 0, 0, 'Red lips');
INSERT INTO `cmf_gift` VALUES (75, 0, 1, 0, '百变小丑', 1000, 'gift_29.png', 6, 1659597034, 1, 'gift_gif_29.svga', 5.00, 1, 0, 'clown');
INSERT INTO `cmf_gift` VALUES (76, 0, 1, 0, '钞票枪', 500, 'gift_30.png', 5, 1659597034, 1, 'gift_gif_30.svga', 2.90, 1, 0, 'money gun');
INSERT INTO `cmf_gift` VALUES (77, 0, 1, 0, '星际火箭', 30, 'gift_31.png', 15, 1659597034, 1, 'gift_gif_31.svga', 3.70, 1, 0, 'Rocket');
INSERT INTO `cmf_gift` VALUES (116, 0, 2, 0, '尖叫鸡', 3000, 'face_039.png', 2, 1659597034, 0, '', 2.90, 0, 3, 'Screaming Chicken');
INSERT INTO `cmf_gift` VALUES (117, 2, 2, 0, '蒙面美人', 3500, 'face_041.png', 1, 1659597034, 0, '', 4.10, 0, 4, 'Masked Beauty');
INSERT INTO `cmf_gift` VALUES (118, 0, 2, 0, '独角兽', 4000, 'face_043.png', 0, 1659597034, 0, '', 2.40, 0, 5, 'unicorn');
INSERT INTO `cmf_gift` VALUES (119, 0, 1, 0, '520', 520, 'gift_34.png', 4, 1659597034, 1, 'gift_gif_34.svga', 5.00, 0, 0, '520');

-- ----------------------------
-- Table structure for cmf_gift_luck_rate
-- ----------------------------
DROP TABLE IF EXISTS `cmf_gift_luck_rate`;
CREATE TABLE `cmf_gift_luck_rate`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `giftid` int(11) NOT NULL DEFAULT 0 COMMENT '礼物ID',
  `nums` int(10) UNSIGNED NOT NULL COMMENT '数量',
  `times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '倍数',
  `rate` decimal(20, 3) NOT NULL DEFAULT 0.000 COMMENT '中奖概率',
  `isall` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否全站，0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_guard
-- ----------------------------
DROP TABLE IF EXISTS `cmf_guard`;
CREATE TABLE `cmf_guard`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '守护名称',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '守护类型，1普通2尊贵',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '价格',
  `length_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '时长类型，0天，1月，2年',
  `length` int(11) NOT NULL DEFAULT 0 COMMENT '时长',
  `length_time` int(11) NOT NULL DEFAULT 0 COMMENT '时长秒数',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `uptime` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `list_order` int(11) NOT NULL DEFAULT 9999 COMMENT '序号',
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_guard
-- ----------------------------
INSERT INTO `cmf_guard` VALUES (1, '7天体验', 1, 100, 0, 7, 604800, 1659597034, 1707023583, 1, '7 days experience');
INSERT INTO `cmf_guard` VALUES (2, '1个月', 1, 3000, 1, 1, 2592000, 1659597034, 1661243126, 2, '1 month');
INSERT INTO `cmf_guard` VALUES (3, '尊贵守护全年', 2, 12000, 2, 1, 31536000, 1659597034, 1692166531, 3, 'Noble protection all year round');

-- ----------------------------
-- Table structure for cmf_guard_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_guard_user`;
CREATE TABLE `cmf_guard_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `liveuid` int(11) NOT NULL DEFAULT 0 COMMENT '主播ID',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '守护类型,1普通守护，2尊贵守护',
  `endtime` int(11) NOT NULL DEFAULT 0 COMMENT '到期时间',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `liveuid_index`(`liveuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_guide
-- ----------------------------
DROP TABLE IF EXISTS `cmf_guide`;
CREATE TABLE `cmf_guide`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片/视频链接',
  `href` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '跳转链接',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '类型',
  `list_order` int(11) NOT NULL DEFAULT 10000 COMMENT '序号',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `uptime` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_hook
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook`;
CREATE TABLE `cmf_hook`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统钩子表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_hook
-- ----------------------------
INSERT INTO `cmf_hook` VALUES (2, 1, 0, '应用开始', 'app_begin', 'cmf', '应用开始');
INSERT INTO `cmf_hook` VALUES (3, 1, 0, '模块初始化', 'module_init', 'cmf', '模块初始化');
INSERT INTO `cmf_hook` VALUES (4, 1, 0, '控制器开始', 'action_begin', 'cmf', '控制器开始');
INSERT INTO `cmf_hook` VALUES (5, 1, 0, '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤');
INSERT INTO `cmf_hook` VALUES (6, 1, 0, '应用结束', 'app_end', 'cmf', '应用结束');
INSERT INTO `cmf_hook` VALUES (7, 1, 0, '日志write方法', 'log_write', 'cmf', '日志write方法');
INSERT INTO `cmf_hook` VALUES (8, 1, 0, '输出结束', 'response_end', 'cmf', '输出结束');
INSERT INTO `cmf_hook` VALUES (9, 1, 0, '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化');
INSERT INTO `cmf_hook` VALUES (10, 1, 0, '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化');
INSERT INTO `cmf_hook` VALUES (11, 1, 1, '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码');
INSERT INTO `cmf_hook` VALUES (12, 3, 0, '模板 body标签开始', 'body_start', '', '模板 body标签开始');
INSERT INTO `cmf_hook` VALUES (13, 3, 0, '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES (14, 3, 0, '模板底部开始', 'footer_start', '', '模板底部开始');
INSERT INTO `cmf_hook` VALUES (15, 3, 0, '模板底部开始之前', 'before_footer', '', '模板底部开始之前');
INSERT INTO `cmf_hook` VALUES (16, 3, 0, '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前');
INSERT INTO `cmf_hook` VALUES (17, 3, 0, '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES (18, 3, 0, '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始');
INSERT INTO `cmf_hook` VALUES (19, 3, 0, '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前');
INSERT INTO `cmf_hook` VALUES (20, 3, 0, '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始');
INSERT INTO `cmf_hook` VALUES (21, 3, 0, '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前');
INSERT INTO `cmf_hook` VALUES (22, 3, 1, '评论区', 'comment', '', '评论区');
INSERT INTO `cmf_hook` VALUES (23, 3, 1, '留言区', 'guestbook', '', '留言区');
INSERT INTO `cmf_hook` VALUES (24, 2, 0, '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘');
INSERT INTO `cmf_hook` VALUES (25, 4, 0, '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES (26, 4, 0, '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES (27, 2, 0, '后台登录页面', 'admin_login', 'admin', '后台登录页面');
INSERT INTO `cmf_hook` VALUES (28, 1, 1, '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
INSERT INTO `cmf_hook` VALUES (29, 3, 0, '主要内容之后', 'after_content', '', '主要内容之后');
INSERT INTO `cmf_hook` VALUES (32, 2, 1, '获取上传界面', 'fetch_upload_view', 'user', '获取上传界面');
INSERT INTO `cmf_hook` VALUES (33, 3, 0, '主要内容之前', 'before_content', 'cmf', '主要内容之前');
INSERT INTO `cmf_hook` VALUES (34, 1, 0, '日志写入完成', 'log_write_done', 'cmf', '日志写入完成');
INSERT INTO `cmf_hook` VALUES (35, 1, 1, '后台模板切换', 'switch_admin_theme', 'cmf', '后台模板切换');
INSERT INTO `cmf_hook` VALUES (36, 1, 1, '验证码图片', 'captcha_image', 'cmf', '验证码图片');
INSERT INTO `cmf_hook` VALUES (37, 2, 1, '后台模板设计界面', 'admin_theme_design_view', 'admin', '后台模板设计界面');
INSERT INTO `cmf_hook` VALUES (38, 2, 1, '后台设置网站信息界面', 'admin_setting_site_view', 'admin', '后台设置网站信息界面');
INSERT INTO `cmf_hook` VALUES (39, 2, 1, '后台清除缓存界面', 'admin_setting_clear_cache_view', 'admin', '后台清除缓存界面');
INSERT INTO `cmf_hook` VALUES (40, 2, 1, '后台导航管理界面', 'admin_nav_index_view', 'admin', '后台导航管理界面');
INSERT INTO `cmf_hook` VALUES (41, 2, 1, '后台友情链接管理界面', 'admin_link_index_view', 'admin', '后台友情链接管理界面');
INSERT INTO `cmf_hook` VALUES (42, 2, 1, '后台幻灯片管理界面', 'admin_slide_index_view', 'admin', '后台幻灯片管理界面');
INSERT INTO `cmf_hook` VALUES (43, 2, 1, '后台管理员列表界面', 'admin_user_index_view', 'admin', '后台管理员列表界面');
INSERT INTO `cmf_hook` VALUES (44, 2, 1, '后台角色管理界面', 'admin_rbac_index_view', 'admin', '后台角色管理界面');
INSERT INTO `cmf_hook` VALUES (49, 2, 1, '用户管理本站用户列表界面', 'user_admin_index_view', 'user', '用户管理本站用户列表界面');
INSERT INTO `cmf_hook` VALUES (50, 2, 1, '资源管理列表界面', 'user_admin_asset_index_view', 'user', '资源管理列表界面');
INSERT INTO `cmf_hook` VALUES (51, 2, 1, '用户管理第三方用户列表界面', 'user_admin_oauth_index_view', 'user', '用户管理第三方用户列表界面');
INSERT INTO `cmf_hook` VALUES (52, 2, 1, '后台首页界面', 'admin_index_index_view', 'admin', '后台首页界面');
INSERT INTO `cmf_hook` VALUES (53, 2, 1, '后台回收站界面', 'admin_recycle_bin_index_view', 'admin', '后台回收站界面');
INSERT INTO `cmf_hook` VALUES (54, 2, 1, '后台菜单管理界面', 'admin_menu_index_view', 'admin', '后台菜单管理界面');
INSERT INTO `cmf_hook` VALUES (55, 2, 1, '后台自定义登录是否开启钩子', 'admin_custom_login_open', 'admin', '后台自定义登录是否开启钩子');
INSERT INTO `cmf_hook` VALUES (64, 2, 1, '后台幻灯片页面列表界面', 'admin_slide_item_index_view', 'admin', '后台幻灯片页面列表界面');
INSERT INTO `cmf_hook` VALUES (65, 2, 1, '后台幻灯片页面添加界面', 'admin_slide_item_add_view', 'admin', '后台幻灯片页面添加界面');
INSERT INTO `cmf_hook` VALUES (66, 2, 1, '后台幻灯片页面编辑界面', 'admin_slide_item_edit_view', 'admin', '后台幻灯片页面编辑界面');
INSERT INTO `cmf_hook` VALUES (67, 2, 1, '后台管理员添加界面', 'admin_user_add_view', 'admin', '后台管理员添加界面');
INSERT INTO `cmf_hook` VALUES (68, 2, 1, '后台管理员编辑界面', 'admin_user_edit_view', 'admin', '后台管理员编辑界面');
INSERT INTO `cmf_hook` VALUES (69, 2, 1, '后台角色添加界面', 'admin_rbac_role_add_view', 'admin', '后台角色添加界面');
INSERT INTO `cmf_hook` VALUES (70, 2, 1, '后台角色编辑界面', 'admin_rbac_role_edit_view', 'admin', '后台角色编辑界面');
INSERT INTO `cmf_hook` VALUES (71, 2, 1, '后台角色授权界面', 'admin_rbac_authorize_view', 'admin', '后台角色授权界面');

-- ----------------------------
-- Table structure for cmf_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook_plugin`;
CREATE TABLE `cmf_hook_plugin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统钩子插件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_hook_plugin
-- ----------------------------
INSERT INTO `cmf_hook_plugin` VALUES (1, 10000, 1, 'fetch_upload_view', 'Qiniu');

-- ----------------------------
-- Table structure for cmf_jackpot
-- ----------------------------
DROP TABLE IF EXISTS `cmf_jackpot`;
CREATE TABLE `cmf_jackpot`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `total` bigint(20) NOT NULL DEFAULT 0 COMMENT '奖池金额',
  `level` tinyint(4) NOT NULL DEFAULT 0 COMMENT '奖池等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_jackpot
-- ----------------------------
INSERT INTO `cmf_jackpot` VALUES (1, 0, 0);

-- ----------------------------
-- Table structure for cmf_jackpot_level
-- ----------------------------
DROP TABLE IF EXISTS `cmf_jackpot_level`;
CREATE TABLE `cmf_jackpot_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `levelid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级',
  `level_up` int(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '经验下限',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_jackpot_level
-- ----------------------------
INSERT INTO `cmf_jackpot_level` VALUES (1, 1, 5000, 1457923458);
INSERT INTO `cmf_jackpot_level` VALUES (2, 2, 10000, 1459240543);
INSERT INTO `cmf_jackpot_level` VALUES (3, 3, 15000, 1459240560);

-- ----------------------------
-- Table structure for cmf_jackpot_rate
-- ----------------------------
DROP TABLE IF EXISTS `cmf_jackpot_rate`;
CREATE TABLE `cmf_jackpot_rate`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `giftid` int(11) NOT NULL DEFAULT 0 COMMENT '礼物ID',
  `nums` int(10) UNSIGNED NOT NULL COMMENT '数量',
  `rate_jackpot` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '奖池概率',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_label
-- ----------------------------
DROP TABLE IF EXISTS `cmf_label`;
CREATE TABLE `cmf_label`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  `list_order` int(11) NOT NULL DEFAULT 9999 COMMENT '序号',
  `colour` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '颜色',
  `colour2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '尾色',
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_label
-- ----------------------------
INSERT INTO `cmf_label` VALUES (1, '小清新', 3, '#4edc90', '#22804e', 'Little fresh');
INSERT INTO `cmf_label` VALUES (2, '阳光女神', 7, '#2595b8', '#33caf9', 'Sun goddess');
INSERT INTO `cmf_label` VALUES (3, '性感', 3, '#e5007f', '#f05bad', 'Sexy');
INSERT INTO `cmf_label` VALUES (4, '二次元', 7, '#d48d24', '#f9b552', 'Two dimensions');
INSERT INTO `cmf_label` VALUES (5, '好声音', 3, '#b3aa04', '#fff649', 'Good voice');
INSERT INTO `cmf_label` VALUES (6, '喊麦达人', 6, '#0a8c88', '#06d9d1', 'Call Maidaren');
INSERT INTO `cmf_label` VALUES (7, '才艺', 7, '#648717', '#8fc41e', 'Talent');
INSERT INTO `cmf_label` VALUES (8, '潮范儿', 8, '#990e5a', '#ea2893', 'Trendy style');
INSERT INTO `cmf_label` VALUES (9, '舞蹈达人', 9, '#2f9aba', '#4cd1f8', 'Dance master');
INSERT INTO `cmf_label` VALUES (10, '学生', 77, '#53730f', '#8fc41e', 'Student');
INSERT INTO `cmf_label` VALUES (11, '高颜值', 7, '#1a9995', '#01d8d0', 'Good looks');
INSERT INTO `cmf_label` VALUES (12, '游戏大神', 7, '#ed6942', '#e69881', 'Game master');
INSERT INTO `cmf_label` VALUES (13, '帅气男神', 7, '#01d9ce', '#6be3dd', 'Handsome male god');
INSERT INTO `cmf_label` VALUES (16, '清纯可人', 7, '#318742', '#f08bcd', 'Pure and pleasant');
INSERT INTO `cmf_label` VALUES (18, '小麦同学', 9999, '#f2c3a4', '#ff3881', 'Marpu715');

-- ----------------------------
-- Table structure for cmf_label_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_label_user`;
CREATE TABLE `cmf_label_user`  (
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `touid` int(11) NOT NULL DEFAULT 0 COMMENT '对方ID',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '选择的标签',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `uptime` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  INDEX `uid_touid_index`(`uid`, `touid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `touid`(`touid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_level
-- ----------------------------
DROP TABLE IF EXISTS `cmf_level`;
CREATE TABLE `cmf_level`  (
  `levelid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级',
  `levelname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '等级名称',
  `level_up` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '经验上限',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标识',
  `colour` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '昵称颜色',
  `thumb_mark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '头像角标',
  `bg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '背景',
  `levelname_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`, `levelid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_level
-- ----------------------------
INSERT INTO `cmf_level` VALUES (1, '一级', 10, 1659597034, 1, 'level_1.png', 'b2d65e', 'level_mark_1.png', 'level_bg_1.png', 'Level 1');
INSERT INTO `cmf_level` VALUES (2, '二级', 70, 1659597034, 2, 'level_2.png', 'b2d65e', 'level_mark_2.png', 'level_bg_2.png', 'Level 2');
INSERT INTO `cmf_level` VALUES (3, '三级', 160, 1659597034, 3, 'level_3.png', 'b2d65e', 'level_mark_3.png', 'level_bg_3.png', 'Level 3');
INSERT INTO `cmf_level` VALUES (4, '四级', 290, 1659597034, 4, 'level_4.png', 'b2d65e', 'level_mark_4.png', 'level_bg_4.png', 'Level 4');
INSERT INTO `cmf_level` VALUES (5, '五级', 450, 1659597034, 5, 'level_5.png', 'b2d65e', 'level_mark_5.png', 'level_bg_5.png', 'Level 5');
INSERT INTO `cmf_level` VALUES (6, '六级', 660, 1659597034, 6, 'level_6.png', 'ffb500', 'level_mark_6.png', 'level_bg_6.png', 'Level 6');
INSERT INTO `cmf_level` VALUES (7, '七级', 900, 1659597034, 7, 'level_7.png', 'ffb500', 'level_mark_7.png', 'level_bg_7.png', 'Level 7');
INSERT INTO `cmf_level` VALUES (8, '八级', 1320, 1659597034, 8, 'level_8.png', 'ffb500', 'level_mark_8.png', 'level_bg_8.png', 'Level 8');
INSERT INTO `cmf_level` VALUES (9, '九级', 1750, 1659597034, 9, 'level_9.png', 'ffb500', 'level_mark_9.png', 'level_bg_9.png', 'Level 9');
INSERT INTO `cmf_level` VALUES (10, '十级', 2400, 1659597034, 10, 'level_10.png', 'ffb500', 'level_mark_10.png', 'level_bg_10.png', 'Level 10');
INSERT INTO `cmf_level` VALUES (11, '十一级', 3200, 1659597034, 16, 'level_11.png', '00b6f1', 'level_mark_11.png', 'level_bg_11.png', 'Level 11');
INSERT INTO `cmf_level` VALUES (12, '十二级', 4200, 1659597034, 18, 'level_12.png', '00b6f1', 'level_mark_12.png', 'level_bg_12.png', 'Level 12');
INSERT INTO `cmf_level` VALUES (13, '十三级', 5700, 1659597034, 19, 'level_13.png', '00b6f1', 'level_mark_13.png', 'level_bg_13.png', 'Level 13');
INSERT INTO `cmf_level` VALUES (14, '十四级', 7300, 1659597034, 20, 'level_14.png', '00b6f1', 'level_mark_14.png', 'level_bg_14.png', 'Level 14');
INSERT INTO `cmf_level` VALUES (15, '十五级', 9700, 1659597034, 21, 'level_15.png', '00b6f1', 'level_mark_15.png', 'level_bg_15.png', 'Level 15');
INSERT INTO `cmf_level` VALUES (16, '十六级', 13000, 1659597034, 22, 'level_16.png', 'f36836', 'level_mark_16.png', 'level_bg_16.png', 'Level 16');
INSERT INTO `cmf_level` VALUES (17, '十七级', 17000, 1659597034, 23, 'level_17.png', 'f36836', 'level_mark_17.png', 'level_bg_17.png', 'Level 17');
INSERT INTO `cmf_level` VALUES (18, '十八级', 22000, 1659597034, 24, 'level_18.png', 'f36836', 'level_mark_18.png', 'level_bg_18.png', 'Level 18');
INSERT INTO `cmf_level` VALUES (19, '十九级', 29000, 1659597034, 25, 'level_19.png', 'f36836', 'level_mark_19.png', 'level_bg_19.png', 'Level 19');
INSERT INTO `cmf_level` VALUES (20, '二十级', 99999999, 1659597034, 26, 'level_20.png', 'f36836', 'level_mark_20.png', 'level_bg_20.png', 'Level 20');

-- ----------------------------
-- Table structure for cmf_level_anchor
-- ----------------------------
DROP TABLE IF EXISTS `cmf_level_anchor`;
CREATE TABLE `cmf_level_anchor`  (
  `levelid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级',
  `levelname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '等级名称',
  `level_up` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级上限',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标识',
  `thumb_mark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '头像角标',
  `bg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '背景',
  `levelname_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`, `levelid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_level_anchor
-- ----------------------------
INSERT INTO `cmf_level_anchor` VALUES (1, '一级', 49, 1659597034, 1, 'level_anchor_1.png', 'level_anchor_mark_1.png', 'level_anchor_bg_1.png', 'Level 1');
INSERT INTO `cmf_level_anchor` VALUES (2, '二级', 149, 1659597034, 2, 'level_anchor_2.png', 'level_anchor_mark_2.png', 'level_anchor_bg_2.png', 'Level 2');
INSERT INTO `cmf_level_anchor` VALUES (3, '三级', 299, 1659597034, 3, 'level_anchor_3.png', 'level_anchor_mark_3.png', 'level_anchor_bg_3.png', 'Level 3');
INSERT INTO `cmf_level_anchor` VALUES (4, '四级', 499, 1659597034, 4, 'level_anchor_4.png', 'level_anchor_mark_4.png', 'level_anchor_bg_4.png', 'Level 4');
INSERT INTO `cmf_level_anchor` VALUES (5, '五级', 9999, 1659597034, 5, 'level_anchor_5.png', 'level_anchor_mark_5.png', 'level_anchor_bg_5.png', 'Level 5');
INSERT INTO `cmf_level_anchor` VALUES (6, '六级', 19999, 1659597034, 6, 'level_anchor_6.png', 'level_anchor_mark_6.png', 'level_anchor_bg_6.png', 'Level 6');
INSERT INTO `cmf_level_anchor` VALUES (7, '七级', 29999, 1659597034, 7, 'level_anchor_7.png', 'level_anchor_mark_7.png', 'level_anchor_bg_7.png', 'Level 7');
INSERT INTO `cmf_level_anchor` VALUES (8, '八级', 39999, 1659597034, 8, 'level_anchor_8.png', 'level_anchor_mark_8.png', 'level_anchor_bg_8.png', 'Level 8');
INSERT INTO `cmf_level_anchor` VALUES (9, '九级', 1000000, 1659597034, 9, 'level_anchor_9.png', 'level_anchor_mark_9.png', 'level_anchor_bg_9.png', 'Level 9');
INSERT INTO `cmf_level_anchor` VALUES (10, '十级', 999999999, 1659597034, 10, 'level_anchor_10.png', 'level_anchor_mark_10.png', 'level_anchor_bg_10.png', 'Level 10');

-- ----------------------------
-- Table structure for cmf_liang
-- ----------------------------
DROP TABLE IF EXISTS `cmf_liang`;
CREATE TABLE `cmf_liang`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '靓号',
  `length` int(11) NOT NULL DEFAULT 0 COMMENT '长度',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '价格',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '积分价格',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '购买用户ID',
  `buytime` int(11) NOT NULL DEFAULT 0 COMMENT '购买时间',
  `list_order` int(11) NOT NULL DEFAULT 9999 COMMENT '序号',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '靓号销售状态',
  `state` tinyint(4) NOT NULL DEFAULT 0 COMMENT '启用状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_link
-- ----------------------------
DROP TABLE IF EXISTS `cmf_link`;
CREATE TABLE `cmf_link`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT 0 COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '友情链接表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_link
-- ----------------------------
INSERT INTO `cmf_link` VALUES (1, 1, 1, 8, 'thinkcmf官网', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', '');

-- ----------------------------
-- Table structure for cmf_live
-- ----------------------------
DROP TABLE IF EXISTS `cmf_live`;
CREATE TABLE `cmf_live`  (
  `uid` int(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `showid` int(12) NOT NULL DEFAULT 0 COMMENT '直播标识',
  `islive` int(1) NOT NULL DEFAULT 0 COMMENT '直播状态',
  `starttime` int(12) NOT NULL DEFAULT 0 COMMENT '开播时间',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '省份',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '城市',
  `stream` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '流名',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '封面图',
  `pull` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '播流地址',
  `lng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '经度',
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '维度',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '直播类型',
  `type_val` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '类型值',
  `isvideo` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否假视频',
  `goodnum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '靓号',
  `anyway` tinyint(1) NOT NULL DEFAULT 1 COMMENT '横竖屏，0表示竖屏，1表示横屏',
  `liveclassid` int(11) NOT NULL DEFAULT 0 COMMENT '直播分类ID',
  `hotvotes` int(11) NOT NULL DEFAULT 0 COMMENT '热门礼物总额',
  `pkuid` int(11) NOT NULL DEFAULT 0 COMMENT 'PK对方ID',
  `pkstream` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'pk对方的流名',
  `ismic` tinyint(1) NOT NULL DEFAULT 0 COMMENT '连麦开关，0是关，1是开',
  `ishot` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否热门',
  `isrecommend` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否推荐',
  `deviceinfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '设备信息',
  `isshop` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否开启店铺',
  `game_action` tinyint(1) NOT NULL DEFAULT 0 COMMENT '游戏类型',
  `banker_coin` bigint(20) NULL DEFAULT 0 COMMENT '庄家余额',
  `isoff` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否断流，0否1是',
  `offtime` bigint(20) NOT NULL DEFAULT 0 COMMENT '断流时间',
  `recommend_time` int(1) NOT NULL DEFAULT 0 COMMENT '推荐时间',
  `live_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '直播类型 0 视频直播 1 语音聊天室',
  `gift_totalcoin` bigint(20) NOT NULL DEFAULT 0 COMMENT '收礼物钻石总数',
  `gift_user_total` int(11) NOT NULL DEFAULT 0 COMMENT '送礼物总人数',
  `voice_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '聊天室类型 0语音 1 视频',
  `sw_player_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '声网云端播放器状态 connecting 业务服务器正在连接媒体流地址；success 声网服务器与媒体流地址连接成功；running 云端播放器正常运行；failed 该媒体流无法播放；stop 媒体流播放结束；',
  `sw_player_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '声网云端播放器id',
  PRIMARY KEY (`uid`) USING BTREE,
  INDEX `index_islive_starttime`(`islive`, `starttime`) USING BTREE,
  INDEX `index_uid_stream`(`uid`, `stream`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_live_ban
-- ----------------------------
DROP TABLE IF EXISTS `cmf_live_ban`;
CREATE TABLE `cmf_live_ban`  (
  `liveuid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '主播ID',
  `superid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '超管ID',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '封禁类型 30分钟 1天 7天 15天 30天 90天 180天 永久',
  `endtime` int(11) NOT NULL DEFAULT 0 COMMENT '封禁到期时间',
  PRIMARY KEY (`liveuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_live_class
-- ----------------------------
DROP TABLE IF EXISTS `cmf_live_class`;
CREATE TABLE `cmf_live_class`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类名',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `des` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `list_order` int(11) NOT NULL DEFAULT 9999 COMMENT '序号',
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名',
  `des_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_live_class
-- ----------------------------
INSERT INTO `cmf_live_class` VALUES (1, '音乐', 'liveclass_1.png', '流行、摇滚、说唱、民族等，线上最强演唱会', 2, 'Music', 'Pop, rock, rap, ethnic, etc., the most powerful online concert');
INSERT INTO `cmf_live_class` VALUES (2, '舞蹈', 'liveclass_2.png', '现代舞、钢管舞、肚皮舞等，谈恋爱不如跳舞', 1, 'Dance', 'Modern dance, pole dancing, belly dancing, etc., falling in love is not as good as dancing');
INSERT INTO `cmf_live_class` VALUES (3, '户外', 'liveclass_3.png', '街头、野外任你选择，健身、旅行任你畅玩', 3, 'Outdoor', 'You can choose from the streets or outdoors, and you can enjoy fitness and travel.');
INSERT INTO `cmf_live_class` VALUES (4, '校园', 'liveclass_4.png', '学生党分享校园乐事', 4, 'Campus', 'Student parties share campus fun');
INSERT INTO `cmf_live_class` VALUES (5, '交友', 'liveclass_5.png', '单身男女聚集地，线上交友趣事多', 5, 'Make friends', 'A gathering place for single men and women, with lots of interesting things to do online');
INSERT INTO `cmf_live_class` VALUES (6, '喊麦', 'liveclass_6.png', '欧美有RAP，我们有MC', 6, 'Shout out to Mai', 'Europe and America have RAP, we have MC');
INSERT INTO `cmf_live_class` VALUES (7, '游戏', 'liveclass_7.png', '是时候展示你真正的技术了', 7, 'Game', 'It\'s time to show your real skills');
INSERT INTO `cmf_live_class` VALUES (8, '直播购', 'liveclass_8.png', '买买买，分享最美好的东西', 0, 'Live purchase', 'Buy, buy, buy and share the best things');
INSERT INTO `cmf_live_class` VALUES (9, '美食', 'liveclass_9.png', '吃货？主厨？唯美食不可辜负', 9, 'Gourmet food', 'Foodie? Chef? Food is the only thing you can’t live up to');
INSERT INTO `cmf_live_class` VALUES (10, '才艺', 'liveclass_10.png', '手工艺、魔术、画画、化妆等，艺术高手在民间', 10, 'Talent', 'Handicrafts, magic, painting, makeup, etc., art masters among the people');
INSERT INTO `cmf_live_class` VALUES (11, '男神', 'liveclass_11.png', '前方有一大波迷妹即将赶到', 11, 'Male god', 'There\'s a big wave of fans ahead, and they\'re about to arrive');
INSERT INTO `cmf_live_class` VALUES (12, '女神', 'liveclass_12.png', '高颜值，好身材就要秀出来', 12, 'Goddess', 'Good looks and a good figure should be shown off');

-- ----------------------------
-- Table structure for cmf_live_kick
-- ----------------------------
DROP TABLE IF EXISTS `cmf_live_kick`;
CREATE TABLE `cmf_live_kick`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `liveuid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '主播ID',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `actionid` int(11) NOT NULL DEFAULT 0 COMMENT '操作用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_live_manager
-- ----------------------------
DROP TABLE IF EXISTS `cmf_live_manager`;
CREATE TABLE `cmf_live_manager`  (
  `uid` int(12) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `liveuid` int(12) NOT NULL DEFAULT 0 COMMENT '主播ID',
  INDEX `uid_touid_index`(`liveuid`, `uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_live_record
-- ----------------------------
DROP TABLE IF EXISTS `cmf_live_record`;
CREATE TABLE `cmf_live_record`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `showid` int(11) NOT NULL DEFAULT 0 COMMENT '直播标识',
  `nums` int(11) NOT NULL DEFAULT 0 COMMENT '关播时人数',
  `starttime` int(11) NOT NULL DEFAULT 0 COMMENT '开始时间',
  `endtime` int(11) NOT NULL DEFAULT 0 COMMENT '结束时间',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '省份',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '城市',
  `stream` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '流名',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '封面图',
  `lng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '经度',
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '纬度',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '直播类型',
  `type_val` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '类型值',
  `votes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '本次直播收益',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '格式日期',
  `liveclassid` int(11) NOT NULL DEFAULT 0 COMMENT '直播分类ID',
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '回放地址',
  `live_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '直播类型 0视频直播 1语音聊天室',
  `deviceinfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '设备信息',
  `voice_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '聊天室类型 0语音 1 视频',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_uid_start`(`uid`, `starttime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_live_shut
-- ----------------------------
DROP TABLE IF EXISTS `cmf_live_shut`;
CREATE TABLE `cmf_live_shut`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `liveuid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '主播ID',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `showid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '禁言类型，0永久',
  `actionid` int(11) NOT NULL DEFAULT 0 COMMENT '操作者ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_loginbonus
-- ----------------------------
DROP TABLE IF EXISTS `cmf_loginbonus`;
CREATE TABLE `cmf_loginbonus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `day` int(10) NOT NULL DEFAULT 0 COMMENT '登录天数',
  `coin` int(10) NOT NULL DEFAULT 0 COMMENT '登录奖励',
  `addtime` int(10) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `uptime` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_loginbonus
-- ----------------------------
INSERT INTO `cmf_loginbonus` VALUES (1, 1, 1, 0, 1689171588);
INSERT INTO `cmf_loginbonus` VALUES (2, 2, 2, 0, 1675854419);
INSERT INTO `cmf_loginbonus` VALUES (3, 3, 3, 0, 1689237745);
INSERT INTO `cmf_loginbonus` VALUES (4, 4, 4, 0, 1675854434);
INSERT INTO `cmf_loginbonus` VALUES (5, 5, 5, 0, 1675854440);
INSERT INTO `cmf_loginbonus` VALUES (6, 6, 6, 0, 1675854445);
INSERT INTO `cmf_loginbonus` VALUES (7, 7, 7, 0, 1675854451);

-- ----------------------------
-- Table structure for cmf_music
-- ----------------------------
DROP TABLE IF EXISTS `cmf_music`;
CREATE TABLE `cmf_music`  (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '音乐名称',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '演唱者',
  `uploader` int(255) NOT NULL DEFAULT 0 COMMENT '上传者ID',
  `upload_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '上传类型  1管理员上传 2 用户上传',
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '封面地址',
  `length` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '音乐长度',
  `file_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件地址',
  `use_nums` int(12) NOT NULL DEFAULT 0 COMMENT '被使用次数',
  `isdel` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否被删除 0否 1是',
  `addtime` int(12) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updatetime` int(12) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `classify_id` int(12) NOT NULL DEFAULT 0 COMMENT '音乐分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_music
-- ----------------------------
INSERT INTO `cmf_music` VALUES (1, 'Panama', 'Matteo', 1, 1, 'music_thumb_1.jpg', '00:31', 'music_1.mp3', 118, 0, 1659597034, 0, 1);
INSERT INTO `cmf_music` VALUES (3, 'California (On My Mind)', 'Stewart Mac', 1, 1, 'music_thumb_3.jpg', '00:29', 'music_3.mp3', 268, 0, 1659597034, 0, 1);
INSERT INTO `cmf_music` VALUES (4, '最美的期待', '周笔畅', 1, 1, 'music_thumb_4.png', '00:22', 'music_4.mp3', 147, 0, 1659597034, 0, 19);
INSERT INTO `cmf_music` VALUES (5, 'Friendshipss', 'Pascal Letoublon', 1, 1, 'music_thumb_5.jpg', '00:40', 'music_5.mp3', 532, 0, 1659597034, 0, 0);
INSERT INTO `cmf_music` VALUES (7, 'Seve', 'Tez Cadey', 1, 1, 'music_thumb_7.png', '00:31', 'music_7.mp3', 184, 0, 1659597034, 0, 1);
INSERT INTO `cmf_music` VALUES (8, 'Ce Frumoasa E Iubirea', 'Giulia Anghelescu', 1, 1, 'music_thumb_8.png', '00:49', 'music_8.mp3', 233, 0, 1659597034, 0, 1);
INSERT INTO `cmf_music` VALUES (9, '夜空的寂静', '赵海洋', 1, 1, 'music_thumb_9.jpg', '00:39', 'music_9.mp3', 125, 0, 1659597034, 0, 16);
INSERT INTO `cmf_music` VALUES (10, '清晨的美好', '张宇桦', 1, 1, 'music_thumb_10.jpg', '00:37', 'music_10.mp3', 243, 0, 1659597034, 0, 18);
INSERT INTO `cmf_music` VALUES (11, 'Because of You', 'Kelly Clarkson', 1, 1, 'music_thumb_11.jpg', '03:40', 'music_11.mp3', 129, 0, 1659597034, 0, 17);

-- ----------------------------
-- Table structure for cmf_music_classify
-- ----------------------------
DROP TABLE IF EXISTS `cmf_music_classify`;
CREATE TABLE `cmf_music_classify`  (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `list_order` int(12) NOT NULL DEFAULT 9999 COMMENT '排序号',
  `isdel` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `addtime` int(12) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updatetime` int(12) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类图标地址',
  `title_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_music_classify
-- ----------------------------
INSERT INTO `cmf_music_classify` VALUES (16, '热歌', 2, 0, 1659597034, 0, 'music_class_16.png', 'Hot song');
INSERT INTO `cmf_music_classify` VALUES (17, '新歌', 0, 0, 1659597034, 0, 'music_class_17.png', 'New song');
INSERT INTO `cmf_music_classify` VALUES (18, '经典', 0, 0, 1659597034, 0, 'music_class_18.png', 'Classic');
INSERT INTO `cmf_music_classify` VALUES (19, '潮流', 1, 0, 1659597034, 0, 'music_class_19.png', 'Trend');

-- ----------------------------
-- Table structure for cmf_music_collection
-- ----------------------------
DROP TABLE IF EXISTS `cmf_music_collection`;
CREATE TABLE `cmf_music_collection`  (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `uid` int(12) NOT NULL DEFAULT 0 COMMENT '用户id',
  `music_id` int(12) NOT NULL DEFAULT 0 COMMENT '音乐id',
  `addtime` int(12) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updatetime` int(12) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '音乐收藏状态 1收藏 0 取消收藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_option
-- ----------------------------
DROP TABLE IF EXISTS `cmf_option`;
CREATE TABLE `cmf_option`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `option_name`(`option_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '全站配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cmf_option
-- ----------------------------
INSERT INTO `cmf_option` VALUES (1, 1, 'site_info', '{\"site_name\":\"直播系统\",\"site_seo_title\":\"\",\"site_seo_keywords\":\"\",\"site_seo_description\":\"\",\"maintain_switch\":\"0\",\"maintain_tips\":\"维护通知：为了更好的为您服务，本站正在升级维护中，因此带来不便深表歉意\",\"company_name\":\"直播系统\",\"company_desc\":\"专注于音视频软件开发，提供软件源码、开发及售后服务，为客户打造多样化软件，公司秉承&quot;专注专业，永争第一，用心服务&quot;的企业理念，自主研发了享誉行业的&quot;直播系统&quot;，努力为客户提供更好的产品。rn\",\"site\":\"http://x.com\",\"copyright\":\"\",\"copyright_url\":\"\",\"name_coin\":\"钻石\",\"name_score\":\"积分\",\"name_votes\":\"云票\",\"mobile\":\"\",\"address\":\"\",\"apk_ewm\":\"\",\"ipa_ewm\":\"\",\"wechat_ewm\":\"\",\"voicelive_icon\":\"\",\"voicelive_name\":\"\",\"isup\":\"0\",\"apk_ver\":\"\",\"apk_url\":\"\",\"apk_des\":\"\",\"ipa_ver\":\"\",\"ios_shelves\":\"0\",\"ipa_url\":\"\",\"ipa_des\":\"\",\"qr_url\":\"\",\"wx_siteurl\":\"http://x.com/wxshare/Share/show?roomnum=\",\"share_title\":\"分享了{username}的精彩直播！\",\"share_des\":\"我看到一个很好看的直播，快来跟我一起围观吧\",\"app_android\":\"\",\"app_ios\":\"\",\"video_share_title\":\"分享了{username}的精彩视频！\",\"video_share_des\":\"我看到一个很好看的视频，快来跟我一起围观吧\",\"live_time_coin\":\"20,30,40,50,60,70,80\",\"sprout_appid\":\"\",\"sprout_key\":\"\",\"sprout_appid_ios\":\"\",\"sprout_key_ios\":\"\",\"skin_whiting\":\"4\",\"skin_smooth\":\"4\",\"skin_tenderness\":\"5\",\"brightness\":\"60\",\"eye_brow\":\"20\",\"big_eye\":\"20\",\"eye_length\":\"30\",\"eye_corner\":\"60\",\"eye_alat\":\"30\",\"face_lift\":\"40\",\"face_shave\":\"10\",\"mouse_lift\":\"10\",\"nose_lift\":\"10\",\"chin_lift\":\"30\",\"forehead_lift\":\"50\",\"lengthen_noseLift\":\"60\",\"payment_des\":\"1.付费内容必须符合中华人民共和国法律法规，不得涉及国家法律法规禁止的一切违法内容。rn2.平台有权对用户上传的付费内容进行监管及审核。rn3.如发现违反国家法律的内容，平台有权向相关部门上报，并删除相关违规信息，封禁违规帐号。rn4.请仔细阅读\",\"payment_time\":\"1\",\"payment_percent\":\"15\",\"login_alert_title\":\"服务协议和隐私政策\",\"login_alert_content\":\"请您务必仔细阅读，充分理解服务协议和隐私政策各条款，包括但不限于为了向您提供即时通讯，内容分享等服务，我们需要收集您设备信息和个人信息，您可以在设置中查看，管理您的授权。您可阅读《隐私政策》和《服务协议》了解详细信息，如您同意，请点击同意接受我们的服务。\",\"login_clause_title\":\"我已详细阅读并同意《隐私政策》和《服务协议》\",\"login_private_title\":\"《隐私政策》\",\"login_private_url\":\"/portal/page/index?id=3\",\"login_service_title\":\"《服务协议》\",\"login_service_url\":\"/portal/page/index?id=4\",\"wxmini_version\":\"2.2.0\",\"wxmini_shelves_version\":\"2.2.1\",\"wxmini_des\":\"\",\"teenager_des\":\"为呵护未成年人健康成长，特别推出青少年模式，该模式下部分功能无法正常使用。请监护人主动选择并设置监护密码。\",\"leaderboard_switch\":\"1\",\"login_type\":\"qq,wx,facebook,twitter,ios\",\"share_type\":\"qq,qzone,wx,wchat,facebook,twitter\",\"live_type\":\"0;普通房间,1;密码房间,2;门票房间,3;计时房间\",\"login_img\":\"\",\"login_img_old\":\"\",\"site_name_en\":\"Yunbaolivebroadcastsystem\",\"maintain_tips_en\":\"MaintenanceNotice:Inordertobetterserveyou,thissiteisbeingupgradedandmaintained,soweapologizefortheinconvenience.\",\"name_coin_en\":\"Coin\",\"name_score_en\":\"Integral\",\"name_votes_en\":\"Ticket\",\"login_img_en\":\"\",\"apk_des_en\":\"24.03.02rnAddvoicenetworkpushpullstreamingSDKrnrnOfficialwebsitewww.yunbaokj.com\",\"ipa_des_en\":\"24.03.07rnFixknownbugsrnrnOfficialwebsitewww.yunbaokj.comrnrn\",\"share_title_en\":\"Shared{username}\'swonderfullivebroadcast!\",\"share_des_en\":\"Isawaveryinterestinglivebroadcast,comeandwatchitwithme\",\"video_share_title_en\":\"Shared{username}\'swonderfulvideo!\",\"video_share_des_en\":\"Isawaveryinterestingvideo,comeandwatchitwithme\",\"payment_des_en\":\"1.PaidcontentmustcomplywiththelawsandregulationsofthePeople\'sRepublicofChinaandmustnotinvolveanyillegalcontentprohibitedbynationallawsandregulations.rn2.Theplatformhastherighttosuperviseandreviewpaidcontentuploadedbyusers.rn3.Ifcontentthatviolatesnationallawsisdiscovered,theplatformhastherighttoreportittorelevantdepartments,deleterelevantillegalinformation,andbanillegalaccounts.rn4.Pleasereadcarefully\",\"login_alert_title_en\":\"ServiceAgreementandPrivacyPolicy\",\"login_alert_content_en\":\"Pleasebesuretoreaditcarefullyandfullyunderstandthetermsoftheserviceagreementandprivacypolicy,includingbutnotlimitedto,inordertoprovideyouwithinstantmessaging,contentsharingandotherservices,weneedtocollectyourdeviceinformationandpersonalinformation.Youcanviewandmanageitinthesettings.YourAuthorization.YoucanreadthePrivacyPolicyandServiceAgreementfordetailedinformation.Ifyouagree,pleaseclicktoagreetoacceptourservices.\",\"login_clause_title_en\":\"Ihavereadindetailandagreetothe《PrivacyPolicy》and《ServiceAgreement》\",\"login_private_title_en\":\"PrivacyPolicy\",\"login_service_title_en\":\"ServiceAgreement\",\"teenager_des_en\":\"Inordertoprotectthehealthygrowthofminors,ayouthmodeisspeciallylaunched.Inthismode,somefunctionscannotbeusednormally.Guardiansareaskedtoactivelychooseandsetaguardianshippassword.\"}');
INSERT INTO `cmf_option` VALUES (2, 1, 'appstore_settings', '{\"access_token\":\"5b573b6175811b9c104dfb1557f05ace53b6ff441c5c464022973578d29246c3\"}');
INSERT INTO `cmf_option` VALUES (3, 1, 'storage', '{\"storages\":{\"Qiniu\":{\"name\":\"七牛云存储\",\"driver\":\"\\\\plugins\\\\qiniu\\\\lib\\\\Qiniu\"}},\"type\":\"Qiniu\"}');
INSERT INTO `cmf_option` VALUES (4, 1, 'upload_setting', '{\"max_files\":\"20\",\"chunk_size\":\"512\",\"file_types\":{\"image\":{\"upload_max_filesize\":\"102400\",\"extensions\":\"jpg,jpeg,png,gif,bmp4\"},\"video\":{\"upload_max_filesize\":\"102400\",\"extensions\":\"mp4,avi,wmv,rm,rmvb,mkv\"},\"audio\":{\"upload_max_filesize\":\"102400\",\"extensions\":\"mp3,wma,wav\"},\"file\":{\"upload_max_filesize\":\"102400\",\"extensions\":\"txt,pdf,doc,docx,xls,xlsx,ppt,pptx,zip,rar,mp4,svga\"}}}');
INSERT INTO `cmf_option` VALUES (5, 1, 'cdn_settings', '{\"cdn_static_root\":\"\"}');
INSERT INTO `cmf_option` VALUES (6, 1, 'admin_settings', '{\"admin_password\":\"\",\"admin_theme\":\"admin_simpleboot3\",\"admin_style\":\"flatadmin\"}');
INSERT INTO `cmf_option` VALUES (7, 1, 'configpri', '{\"family_switch\":\"1\",\"family_member_divide_switch\":\"1\",\"service_switch\":\"1\",\"service_url\":\"\",\"list_coin_switch\":\"1\",\"sensitive_words\":\"毛泽东,习近平,胡锦涛,江泽民,朱镕基,且,weixin,qq,微信,QQ,流流\",\"reg_reward\":\"0\",\"bonus_switch\":\"1\",\"login_wx_pc_appid\":\"\",\"login_wx_pc_appsecret\":\"\",\"login_wx_appid\":\"\",\"login_wx_appsecret\":\"\",\"login_qq_appid\":\"\",\"sendcode_switch\":\"0\",\"typecode_switch\":\"1\",\"aly_keyid\":\"\",\"aly_secret\":\"\",\"aly_sendcode_type\":\"3\",\"aly_signName\":\"\",\"aly_templateCode\":\"\",\"aly_hw_signName\":\"\",\"aly_hw_templateCode\":\"\",\"ccp_sid\":\"\",\"ccp_token\":\"\",\"ccp_appid\":\"\",\"ccp_tempid\":\"\",\"tencent_sendcode_type\":\"3\",\"tencent_sms_appid\":\"\",\"tencent_sms_appkey\":\"\",\"tencent_sms_signName\":\"\",\"tencent_sms_templateCode\":\"\",\"tencent_sms_hw_signName\":\"\",\"tencent_sms_hw_templateCode\":\"\",\"iplimit_switch\":\"0\",\"iplimit_times\":\"10\",\"chatserver\":\"https://x.com:19967\",\"auth_islimit\":\"1\",\"level_islimit\":\"1\",\"level_limit\":\"3\",\"speak_limit\":\"0\",\"barrage_limit\":\"0\",\"barrage_fee\":\"10\",\"userlist_time\":\"15\",\"mic_limit\":\"0\",\"cdn_switch\":\"2\",\"tx_appid\":\"\",\"tx_bizid\":\"\",\"tx_push\":\"\",\"tx_api_key\":\"\",\"tx_push_key\":\"\",\"tx_acc_key\":\"\",\"tx_pull\":\"\",\"tx_play_key_switch\":\"0\",\"tx_play_key\":\"\",\"tx_play_time\":\"\",\"sw_app_id\":\"\",\"sw_media_region\":\"cn\",\"sw_app_certificate\":\"\",\"sw_key_id\":\"\",\"sw_key_secret\":\"\",\"sw_push_url\":\"\",\"sw_push_key\":\"\",\"sw_push_length\":\"5\",\"sw_pull_url\":\"\",\"sw_pull_key\":\"\",\"sw_pull_length\":\"5\",\"sw_playback_tx_switch\":\"1\",\"sw_playback_tx_bucket\":\"\",\"sw_playback_tx_url\":\"\",\"sw_playback_tx_accessKey\":\"\",\"sw_playback_tx_secretKey\":\"\",\"cash_rate\":\"100\",\"cash_take\":\"10\",\"cash_min\":\"1\",\"cash_start\":\"1\",\"cash_end\":\"30\",\"cash_max_times\":\"0\",\"letter_switch\":\"1\",\"tencentIM_area\":\"china\",\"tencentIM_appid\":\"\",\"tencentIM_appkey\":\"\",\"tencentTpns_area\":\"\",\"tencentTpns_accessid_android\":\"\",\"tencentTpns_secretkey_android\":\"\",\"tencentTpns_accessid_ios\":\"\",\"tencentTpns_secretkey_ios\":\"\",\"tencentTpns_ios_environment\":\"1\",\"aliapp_partner\":\"\",\"aliapp_seller_id\":\"\",\"aliapp_key_android\":\"\",\"aliapp_key_ios\":\"\",\"aliapp_check\":\"\",\"alipay_pc_type\":\"1\",\"ali_application_appid\":\"\",\"ali_key_pc\":\"\",\"wx_appid\":\"\",\"wx_appsecret\":\"\",\"wx_mchid\":\"\",\"wx_key\":\"\",\"braintree_paypal_environment\":\"0\",\"braintree_merchantid_sandbox\":\"\",\"braintree_publickey_sandbox\":\"\",\"braintree_privatekey_sandbox\":\"\",\"braintree_merchantid_product\":\"\",\"braintree_publickey_product\":\"\",\"braintree_privatekey_product\":\"\",\"wx_mini_appid\":\"\",\"wx_mini_appsecret\":\"\",\"wx_mini_mchid\":\"\",\"wx_mini_key\":\"\",\"wx_h5_appid\":\"\",\"wx_h5_appsecret\":\"\",\"wx_h5_mchid\":\"\",\"wx_h5_key\":\"\",\"aliapp_switch\":\"1\",\"wx_switch\":\"1\",\"aliapp_pc\":\"1\",\"wx_switch_pc\":\"1\",\"wx_mini_switch\":\"1\",\"braintree_paypal_switch\":\"1\",\"alih5_switch\":\"1\",\"wxh5_switch\":\"1\",\"wxgzh_switch\":\"0\",\"firstcharge_repeatedly\":\"0\",\"shop_aliapp_switch\":\"1\",\"shop_wx_switch\":\"1\",\"shop_wxmini_switch\":\"1\",\"shop_balance_switch\":\"1\",\"shop_braintree_paypal_switch\":\"1\",\"shop_wxmini_balance_switch\":\"1\",\"paidprogram_aliapp_switch\":\"1\",\"paidprogram_wx_switch\":\"1\",\"paidprogram_balance_switch\":\"1\",\"paidprogram_braintree_paypal_switch\":\"1\",\"agent_switch\":\"1\",\"agent_must\":\"0\",\"distribut1\":\"10\",\"um_apikey\":\"\",\"um_apisecurity\":\"\",\"um_appkey_android\":\"\",\"um_appkey_ios\":\"\",\"video_audit_switch\":\"0\",\"video_watermark\":\"\",\"ad_video_switch\":\"1\",\"ad_video_loop\":\"1\",\"video_ad_num\":\"10\",\"shop_system_name\":\"直播小店\",\"shop_system_name_en\":\"Live store\",\"shop_bond\":\"100\",\"show_switch\":\"1\",\"show_category_switch\":\"1\",\"shoporder_percent\":\"10\",\"goods_switch\":\"1\",\"shop_certificate_desc\":\"以下营业执照信息来源于买家自行申报或工商系统数据，具体以工商部门登记为准，经营者需要确保信息真实有效，平台也将定期核查。如与实际不符，为避免违规，请联系当地工商部门或平台客服更新。\",\"shop_certificate_desc_en\":\"The following business license information comes from buyers\' self-declaration or industrial and commercial system data. The specific information is subject to registration with the industrial and commercial department. Operators need to ensure that the information is true and valid, and the platform will also check it regularly. If it is inconsistent with the actual situation, to avoid violations, please contact the local industrial and commercial department or platform customer service for updates.\",\"shop_payment_time\":\"3\",\"shop_shipment_time\":\"1\",\"shop_receive_time\":\"1\",\"shop_refund_time\":\"1\",\"shop_refund_finish_time\":\"1\",\"shop_receive_refund_time\":\"1\",\"shop_settlement_time\":\"0\",\"balance_cash_min\":\"1\",\"balance_cash_start\":\"1\",\"balance_cash_end\":\"30\",\"balance_cash_max_times\":\"0\",\"dynamic_auth\":\"0\",\"dynamic_switch\":\"0\",\"comment_weight\":\"100\",\"like_weight\":\"200\",\"game_banker_limit\":\"100\",\"game_odds\":\"80\",\"game_odds_p\":\"100\",\"game_odds_u\":\"30\",\"game_pump\":\"20\",\"turntable_switch\":\"1\",\"express_type\":\"0\",\"express_id_dev\":\"\",\"express_appkey_dev\":\"\",\"express_id\":\"\",\"express_appkey\":\"\",\"dailytask_switch\":\"1\",\"watch_live_term\":\"1\",\"watch_live_coin\":\"100\",\"watch_video_term\":\"1\",\"watch_video_coin\":\"200\",\"open_live_term\":\"0.1\",\"open_live_coin\":\"300\",\"award_live_term\":\"100\",\"award_live_coin\":\"100\",\"share_live_term\":\"1\",\"share_live_coin\":\"200\",\"cloudtype\":\"1\",\"aws_bucket\":\"\",\"aws_region\":\"\",\"aws_hosturl\":\"\",\"aws_identitypoolid\":\"\",\"openinstall_switch\":\"1\",\"openinstall_appkey\":\"\",\"game_xqtb_switch\":\"1\",\"xqtb_mwx_price\":\"10\",\"xqtb_twx_price\":\"100\",\"xqtb_hwx_price\":\"500\",\"game_xydzp_switch\":\"1\",\"xydzp_one_price\":\"100\",\"xydzp_ten_price\":\"400\",\"xydzp_hundred_price\":\"2000\",\"game_switch\":\"1,3\"}');
INSERT INTO `cmf_option` VALUES (8, 1, 'guide', '{\"switch\":\"1\",\"type\":\"0\",\"time\":\"5\"}');
INSERT INTO `cmf_option` VALUES (9, 1, 'jackpot', '{\"switch\":\"0\",\"luck_anchor\":\"5\",\"luck_jackpot\":\"90\"}');

-- ----------------------------
-- Table structure for cmf_paidprogram
-- ----------------------------
DROP TABLE IF EXISTS `cmf_paidprogram`;
CREATE TABLE `cmf_paidprogram`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `classid` int(11) NOT NULL DEFAULT 0 COMMENT '分类ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '封面',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '内容简介',
  `personal_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '个人介绍',
  `money` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '付费内容价格',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '文件类型 0 单视频 1 多视频',
  `videos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '视频json串',
  `sale_nums` bigint(20) NOT NULL DEFAULT 0 COMMENT '购买数量',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否审核通过 -1 拒绝 0 审核中 1 通过',
  `evaluate_nums` bigint(20) NOT NULL DEFAULT 0 COMMENT '评价总人数',
  `evaluate_total` bigint(20) NOT NULL DEFAULT 0 COMMENT '评价总分',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `edittime` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_uid`(`id`, `uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_paidprogram_apply
-- ----------------------------
DROP TABLE IF EXISTS `cmf_paidprogram_apply`;
CREATE TABLE `cmf_paidprogram_apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '审核状态 -1 拒绝 0 审核中 1 通过',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `uptime` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `percent` int(11) NOT NULL DEFAULT 0 COMMENT '抽水比例',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_paidprogram_class
-- ----------------------------
DROP TABLE IF EXISTS `cmf_paidprogram_class`;
CREATE TABLE `cmf_paidprogram_class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `list_order` int(11) NOT NULL DEFAULT 0 COMMENT '排序号',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态 0不显示 1 显示',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `edittime` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_paidprogram_comment
-- ----------------------------
DROP TABLE IF EXISTS `cmf_paidprogram_comment`;
CREATE TABLE `cmf_paidprogram_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `touid` bigint(20) NOT NULL DEFAULT 0 COMMENT '项目发布者ID',
  `object_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '付费项目ID',
  `grade` tinyint(1) NOT NULL DEFAULT 0 COMMENT '评价等级',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_paidprogram_order
-- ----------------------------
DROP TABLE IF EXISTS `cmf_paidprogram_order`;
CREATE TABLE `cmf_paidprogram_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `touid` bigint(20) NOT NULL DEFAULT 0 COMMENT '付费项目发布者ID',
  `object_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '付费项目ID',
  `type` tinyint(1) NOT NULL COMMENT '支付方式 1 支付宝 2 微信 3 余额 4 微信小程序 5 paypal 6 Braintree_paypal',
  `status` tinyint(1) NOT NULL COMMENT '订单状态 0 未支付 1 已支付',
  `orderno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `trade_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '三方订单编号',
  `money` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '金额',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '下单时间',
  `edittime` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `isdel` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除 0 否 1 是（用于删除付费项目）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid_objectid_status`(`uid`, `object_id`, `status`) USING BTREE,
  INDEX `uid_status`(`uid`, `status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugin`;
CREATE TABLE `cmf_plugin`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '插件安装时间',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '插件描述',
  `config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '插件配置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '插件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_plugin
-- ----------------------------
INSERT INTO `cmf_plugin` VALUES (1, 1, 0, 1, 0, 'Qiniu', '七牛云存储', '', '', 'ThinkCMF', '', '1.0.2', 'ThinkCMF七牛专享优惠码:507670e8', '{\"accessKey\":\"\",\"secretKey\":\"\",\"protocol\":\"https\",\"domain\":\"\",\"bucket\":\"\",\"zone\":\"z0\"}');

-- ----------------------------
-- Table structure for cmf_portal_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_post`;
CREATE TABLE `cmf_portal_post`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发表者用户id',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文章内容',
  `post_content_filtered` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '处理过的文章内容',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '页面类型，0单页面，2个人中心展示',
  `list_order` int(11) NOT NULL DEFAULT 9999 COMMENT '序号',
  `post_title_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文标题',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type_status_date`(`create_time`, `id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'portal应用 文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_portal_post
-- ----------------------------
INSERT INTO `cmf_portal_post` VALUES (2, 1, 1659597034, 1698062932, '社区公约', '&lt;p&gt;&amp;nbsp; 社区公约，内容可在管理后台设置。1&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', NULL, 2, 2, 'community convention');
INSERT INTO `cmf_portal_post` VALUES (3, 1, 1659597034, 1672305487, '隐私政策', '&lt;p&gt;隐私政策，内容可在管理后台设置。&lt;/p&gt;', NULL, 2, 1, 'Privacy Policy');
INSERT INTO `cmf_portal_post` VALUES (4, 1, 1659597034, 0, '服务协议', '&lt;p&gt;  服务协议，内容可在管理后台设置。&lt;/p&gt;', NULL, 2, 3, 'Service Agreement');
INSERT INTO `cmf_portal_post` VALUES (5, 1, 1659597034, 0, '联系我们', '\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; font-size: 14px; line-height: 25.2px; text-indent: 28px; color: rgb(85, 85, 85); font-family: arial, &quot;&gt;联系我们，内容可在管理后台设置。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, 2, 4, 'contact us');
INSERT INTO `cmf_portal_post` VALUES (6, 1, 1659597034, 0, '用户充值协议', '&lt;p&gt;用户充值协议用户充值协议用户充值协议用户充值协议&lt;/p&gt;', NULL, 0, 9999, 'User Recharge Agreement');
INSERT INTO `cmf_portal_post` VALUES (10, 1, 1659597034, 1665128630, '主播协议', '&lt;p&gt;&amp;nbsp; &amp;nbsp;主播协议，内容可在管理后台设置。&lt;/p&gt;', NULL, 2, 5, 'Anchor Agreement');
INSERT INTO `cmf_portal_post` VALUES (18, 1, 1659597034, 0, '签约说明', '&lt;p&gt;签约说明&lt;/p&gt;', NULL, 0, 9999, 'Signing instructions');
INSERT INTO `cmf_portal_post` VALUES (26, 1, 1659597034, 0, '幸运礼物说明', '&lt;p&gt;幸运礼物功能，用户送出“幸运礼物”会有几率获得礼物翻倍中奖和奖池中奖的机会。&lt;/p&gt;', NULL, 0, 9999, 'Lucky gift instructions');
INSERT INTO `cmf_portal_post` VALUES (31, 1, 1659597034, 0, '直播带货功能', '&lt;p&gt;轮播1&lt;/p&gt;', NULL, 0, 9999, 'Live delivery function');
INSERT INTO `cmf_portal_post` VALUES (33, 1, 1659597034, 0, '直播系统', '&lt;p&gt;轮播2&lt;/p&gt;', NULL, 0, 9999, 'Live broadcast system');
INSERT INTO `cmf_portal_post` VALUES (34, 1, 1659597034, 0, '超值服务', '&lt;p&gt;轮播3&lt;/p&gt;', NULL, 0, 9999, 'Value service');
INSERT INTO `cmf_portal_post` VALUES (35, 1, 1659597034, 0, '转盘规则', '&lt;p&gt;转盘规则转盘规则转盘规则&lt;/p&gt;', NULL, 0, 9999, 'wheel rules');
INSERT INTO `cmf_portal_post` VALUES (38, 1, 1659597034, 0, '小店界面联系客服', '&lt;p&gt;小店界面联系客服&lt;/p&gt;', NULL, 0, 9999, 'Contact customer service through store interface');
INSERT INTO `cmf_portal_post` VALUES (39, 1, 1659597034, 0, '道具礼物说明', '\n&lt;p style=&quot;white-space: normal;&quot;&gt;道具礼物说明&lt;/p&gt;\n&lt;p style=&quot;white-space: normal;&quot;&gt;道具礼物说明&lt;/p&gt;\n&lt;p style=&quot;white-space: normal;&quot;&gt;道具礼物说明&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, 0, 9999, 'Prop gift instructions');
INSERT INTO `cmf_portal_post` VALUES (40, 1, 1659597034, 0, '付费内容管理规范', '&lt;p&gt;付费内容管理规范说明&lt;/p&gt;', NULL, 0, 9999, 'Paid content management specifications');
INSERT INTO `cmf_portal_post` VALUES (44, 1, 1659597034, 1662083538, '注销账号', '&lt;p style=&quot;white-space: normal; line-height: 1.5em;&quot;&gt;&lt;strong&gt;&amp;nbsp; &amp;nbsp; 注销账号是不可恢复的操作，你应自行备份账号相关的信息和数据，操作之前，请确认与账号相关的所有服务均已妥善处理。&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal; line-height: 1.5em;&quot;&gt;&lt;strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;注销账号后，你将无法再使用本账号或找回你添加的任何内容信息，包括但不限于：&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal; line-height: 1.5em;&quot;&gt;（1）你将无法登录、使用本账号，你的朋友将无法通过本账号联系你。&lt;/p&gt;&lt;p style=&quot;white-space: normal; line-height: 1.5em;&quot;&gt;（2）你账号的个人资料和历史信息（包含昵称、头像、作品、消息记录、粉丝、关注等）都将无法找回。&lt;/p&gt;&lt;p style=&quot;white-space: normal; line-height: 1.5em;&quot;&gt;（3）关注你账号的所有用户将被取消关注，与账号相关的所有功能或服务都将无法继续使用。&lt;/p&gt;', NULL, 0, 9999, 'Logout');
INSERT INTO `cmf_portal_post` VALUES (45, 36315, 1688535717, 1702690878, '什么是基本功能模式？', '&lt;p&gt;基本功能模式&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: -apple-system, system-ui, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;What is basic functional mode?&lt;/span&gt;&lt;/p&gt;', NULL, 0, 9999, 'What is basic functional mode?');
INSERT INTO `cmf_portal_post` VALUES (46, 36315, 1698268113, 0, '充值送靓号', '&lt;p&gt;&lt;img src=&quot;/upload/admin/20231026/5d1e710505f618ec0b74b45ae08bc414.jpg&quot; title=&quot;15235f153508417aacf545978832c3b.jpg&quot; alt=&quot;15235f153508417aacf545978832c3b.jpg&quot;/&gt;&lt;/p&gt;', NULL, 0, 9999, '');
INSERT INTO `cmf_portal_post` VALUES (47, 36315, 1698268302, 0, '充值送靓号', '&lt;p&gt;11111111111&lt;/p&gt;', NULL, 0, 9999, '');
INSERT INTO `cmf_portal_post` VALUES (48, 1, 1702023488, 0, '打扫打扫', '&lt;p&gt;是第三代&lt;/p&gt;', NULL, 0, 9999, '');

-- ----------------------------
-- Table structure for cmf_praise_messages
-- ----------------------------
DROP TABLE IF EXISTS `cmf_praise_messages`;
CREATE TABLE `cmf_praise_messages`  (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `uid` int(12) NOT NULL DEFAULT 0 COMMENT '用户id',
  `touid` int(12) NOT NULL DEFAULT 0 COMMENT '被赞用户id',
  `obj_id` int(12) NOT NULL DEFAULT 0 COMMENT '被操作对象id',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '被操作类型 0评论 1视频',
  `addtime` int(12) NOT NULL DEFAULT 0 COMMENT '操作时间',
  `video_thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '视频封面',
  `videoid` int(12) NOT NULL DEFAULT 0 COMMENT '视频id',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否显示 0否 1 是  （根据视频是否下架决定）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cmf_pushrecord
-- ----------------------------
DROP TABLE IF EXISTS `cmf_pushrecord`;
CREATE TABLE `cmf_pushrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `touid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '推送对象',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '推送内容',
  `adminid` int(11) NOT NULL COMMENT '管理员ID',
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '管理员账号',
  `ip` bigint(20) NOT NULL DEFAULT 0 COMMENT '管理员IP地址',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '发送时间',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '消息类型 0 后台手动发布的系统消息 1 商品消息 2 认证消息',
  `content_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '英文内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_recycle_bin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_recycle_bin`;
CREATE TABLE `cmf_recycle_bin`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NULL DEFAULT 0 COMMENT '删除内容 id',
  `create_time` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  `table_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = ' 回收站' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_red
-- ----------------------------
DROP TABLE IF EXISTS `cmf_red`;
CREATE TABLE `cmf_red`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `showid` int(11) NOT NULL DEFAULT 0 COMMENT '直播标识',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `liveuid` int(11) NOT NULL DEFAULT 0 COMMENT '主播ID',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '红包类型，0平均，1手气',
  `type_grant` tinyint(1) NOT NULL DEFAULT 0 COMMENT '发放类型，0立即，1延迟',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '钻石数',
  `nums` int(11) NOT NULL DEFAULT 0 COMMENT '数量',
  `des` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `effecttime` int(11) NOT NULL DEFAULT 0 COMMENT '生效时间',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态，0抢中，1抢完',
  `coin_rob` int(11) NOT NULL DEFAULT 0 COMMENT '钻石数',
  `nums_rob` int(11) NOT NULL DEFAULT 0 COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `liveuid_showid`(`showid`, `liveuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_red_record
-- ----------------------------
DROP TABLE IF EXISTS `cmf_red_record`;
CREATE TABLE `cmf_red_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `redid` int(11) NOT NULL DEFAULT 0 COMMENT '红包ID',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '金额',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `redid`(`redid`) USING BTREE COMMENT '红包ID索引'
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_report
-- ----------------------------
DROP TABLE IF EXISTS `cmf_report`;
CREATE TABLE `cmf_report`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `touid` int(11) NOT NULL DEFAULT 0 COMMENT '对方ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '内容',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `uptime` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_report_classify
-- ----------------------------
DROP TABLE IF EXISTS `cmf_report_classify`;
CREATE TABLE `cmf_report_classify`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `list_order` int(10) NOT NULL DEFAULT 9999 COMMENT '排序',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '举报类型名称',
  `addtime` int(10) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_report_classify
-- ----------------------------
INSERT INTO `cmf_report_classify` VALUES (1, 0, '骗取点击', 1659597034, 'defraud clicks');
INSERT INTO `cmf_report_classify` VALUES (2, 0, '低俗色情', 1659597034, 'Vulgar porn');
INSERT INTO `cmf_report_classify` VALUES (3, 0, '侮辱谩骂', 1659597034, 'Insult and abuse');
INSERT INTO `cmf_report_classify` VALUES (4, 0, '盗用他人作品', 1659597034, 'Misappropriation of other people\'s works');
INSERT INTO `cmf_report_classify` VALUES (5, 0, '引人不适', 1659597034, 'causing discomfort');
INSERT INTO `cmf_report_classify` VALUES (6, 0, '任性打抱不平，就爱举报', 1659597034, 'Willfully fight against injustice and love to report it');
INSERT INTO `cmf_report_classify` VALUES (7, 0, '其他', 1659597034, 'other');
INSERT INTO `cmf_report_classify` VALUES (8, 9999, '垃圾广告', 1659597034, 'spam ads');
INSERT INTO `cmf_report_classify` VALUES (9, 9999, '用户为未成年', 1659597034, 'The user is a minor');

-- ----------------------------
-- Table structure for cmf_role
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父角色ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT 0 COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_role
-- ----------------------------
INSERT INTO `cmf_role` VALUES (1, 0, 1, 1329633709, 1329633709, 0, '超级管理员', '拥有网站最高管理员权限！');

-- ----------------------------
-- Table structure for cmf_role_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色 id',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色对应表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_route
-- ----------------------------
DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT 1 COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'url路由表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_seller_goods_class
-- ----------------------------
DROP TABLE IF EXISTS `cmf_seller_goods_class`;
CREATE TABLE `cmf_seller_goods_class`  (
  `uid` bigint(11) NOT NULL DEFAULT 0 COMMENT '用户id',
  `goods_classid` int(11) NOT NULL DEFAULT 0 COMMENT '商品一级分类id',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否显示 0 否 1 是'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_seller_platform_goods
-- ----------------------------
DROP TABLE IF EXISTS `cmf_seller_platform_goods`;
CREATE TABLE `cmf_seller_platform_goods`  (
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户id',
  `goodsid` bigint(20) NOT NULL DEFAULT 0 COMMENT '平台自营商品ID',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '商品售卖状态 0 下架 1 上架',
  `issale` tinyint(1) NOT NULL DEFAULT 0 COMMENT '商品是否直播间在售 0 否 1 是',
  `live_isshow` tinyint(1) NOT NULL DEFAULT 0 COMMENT '直播间是否展示商品简介 0 否 1 是 默认0',
  INDEX `uid_goodsid`(`uid`, `goodsid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_sendcode
-- ----------------------------
DROP TABLE IF EXISTS `cmf_sendcode`;
CREATE TABLE `cmf_sendcode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '消息类型，1表示短信验证码，2表示邮箱验证码',
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '接收账号',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '消息内容',
  `addtime` int(11) NOT NULL COMMENT '提交时间',
  `send_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '发送验证码的类型 1 阿里云 2 容联云 3 腾讯云',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_shop_address
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_address`;
CREATE TABLE `cmf_shop_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '国家',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '省份',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '市',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '区',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '详细地址',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '电话',
  `country_code` int(11) NOT NULL DEFAULT 86 COMMENT '国家代号',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否为默认地址 0 否 1 是',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `edittime` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_shop_apply
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_apply`;
CREATE TABLE `cmf_shop_apply`  (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '封面',
  `des` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '简介',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '联系人姓名',
  `cardno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '身份证号码',
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '联系人',
  `country_code` int(11) NOT NULL DEFAULT 86 COMMENT '国家代号',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '电话',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '省份',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '市',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '地区',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '详细地址',
  `service_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '客服电话',
  `receiver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '退货收货人',
  `receiver_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '退货人联系电话',
  `receiver_province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '退货人省份',
  `receiver_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '退货人市',
  `receiver_area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '退货人地区',
  `receiver_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '退货人详细地址',
  `license` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '许可证',
  `certificate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '营业执照',
  `other` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '其他证件',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '申请时间',
  `uptime` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态，0审核中1通过2拒绝',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '原因',
  `order_percent` int(11) NOT NULL DEFAULT 0 COMMENT '订单分成比例',
  `sale_nums` bigint(11) NOT NULL DEFAULT 0 COMMENT '店铺总销量',
  `quality_points` float(11, 1) NOT NULL DEFAULT 0.0 COMMENT '店铺商品质量(商品描述)平均分',
  `service_points` float(11, 1) NOT NULL DEFAULT 0.0 COMMENT '店铺服务态度平均分',
  `express_points` float(11, 1) NOT NULL DEFAULT 0.0 COMMENT '物流服务平均分',
  `shipment_overdue_num` int(11) NOT NULL DEFAULT 0 COMMENT '店铺逾期发货次数',
  `reason_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文原因',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_shop_bond
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_bond`;
CREATE TABLE `cmf_shop_bond`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `bond` int(11) NOT NULL DEFAULT 0 COMMENT '保证金',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态，0已退回1已支付,-1已扣除',
  `addtime` bigint(20) NOT NULL DEFAULT 0 COMMENT '支付时间',
  `uptime` bigint(20) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_shop_express
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_express`;
CREATE TABLE `cmf_shop_express`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `express_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '快递公司电话',
  `express_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '快递公司客服电话',
  `express_thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '快递公司图标',
  `express_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否显示 0 否 1 是',
  `express_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '快递公司对应三方平台的编码',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `edittime` int(11) NOT NULL DEFAULT 0 COMMENT '编辑时间',
  `list_order` int(11) NOT NULL DEFAULT 0 COMMENT '排序号',
  `express_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_express
-- ----------------------------
INSERT INTO `cmf_shop_express` VALUES (1, '顺丰速运', '95338', 'express_1.png', 1, 'SF', 1659597034, 0, 1, 'S.F. Express');
INSERT INTO `cmf_shop_express` VALUES (2, '韵达速递', '95546', 'express_2.png', 1, 'YD', 1659597034, 0, 2, 'Yunda Express');
INSERT INTO `cmf_shop_express` VALUES (3, '中通快递', '95311', 'express_3.png', 1, 'ZTO', 1659597034, 0, 3, 'ZTO Express');
INSERT INTO `cmf_shop_express` VALUES (4, '圆通速递', '95554', 'express_4.png', 1, 'YTO', 1659597034, 0, 4, 'YTO Express');
INSERT INTO `cmf_shop_express` VALUES (5, '申通快递', '95543', 'express_5.png', 1, 'STO', 1659597034, 0, 5, 'STO Express');
INSERT INTO `cmf_shop_express` VALUES (6, '中国邮政', '11183', 'express_6.png', 1, 'YZPY', 1659597034, 0, 6, 'China Post');
INSERT INTO `cmf_shop_express` VALUES (7, '百世快递', '95320', 'express_7.png', 1, 'HTKY', 1659597034, 0, 7, 'Best Express');
INSERT INTO `cmf_shop_express` VALUES (8, '宅急送', '400-6789-000', 'express_8.png', 1, 'ZJS', 1659597034, 1667371494, 8, 'ZJS Express');

-- ----------------------------
-- Table structure for cmf_shop_goods
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_goods`;
CREATE TABLE `cmf_shop_goods`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `one_classid` int(11) NOT NULL DEFAULT 0 COMMENT '商品一级分类',
  `two_classid` int(11) NOT NULL DEFAULT 0 COMMENT '商品二级分类',
  `three_classid` int(11) NOT NULL DEFAULT 0 COMMENT '商品三级分类',
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品视频地址',
  `video_thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品视频封面',
  `thumbs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '封面',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品文字内容',
  `pictures` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品内容图集',
  `specs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品规格',
  `postage` int(11) NOT NULL DEFAULT 0 COMMENT '邮费',
  `addtime` bigint(20) NOT NULL DEFAULT 0 COMMENT '时间',
  `uptime` bigint(20) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `hits` int(11) NOT NULL DEFAULT 0 COMMENT '点击数',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态，0审核中-1商家下架1通过-2管理员下架 2拒绝',
  `isrecom` tinyint(1) NOT NULL DEFAULT 0 COMMENT '推荐，0否1是',
  `sale_nums` int(11) NOT NULL DEFAULT 0 COMMENT '总销量',
  `refuse_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品拒绝原因',
  `issale` tinyint(1) NOT NULL DEFAULT 0 COMMENT '商品是否在直播间销售 0 否 1 是(针对用户自己发布的商品)',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '商品类型 0 站内商品 1 站外商品 2平台自营',
  `original_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '站外商品原价',
  `present_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '站外商品现价',
  `goods_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '站外商品简介',
  `href` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '站外商品链接',
  `live_isshow` tinyint(1) NOT NULL DEFAULT 0 COMMENT '直播间是否展示商品简介 0 否 1 是 默认0',
  `low_price` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '站外商品最低价',
  `admin_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布自营商品的管理员id',
  `commission` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '主播代卖平台商品的佣金',
  `share_income` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '分享给其他用户购买后获得的佣金',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid_status`(`uid`, `status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_shop_goods_class
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_goods_class`;
CREATE TABLE `cmf_shop_goods_class`  (
  `gc_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品分类ID',
  `gc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品分类名称',
  `gc_parentid` int(11) NOT NULL DEFAULT 0 COMMENT '上级分类ID',
  `gc_one_id` int(11) NOT NULL COMMENT '所属一级分类ID',
  `gc_sort` int(11) NOT NULL DEFAULT 0 COMMENT '商品分类排序号',
  `gc_isshow` tinyint(1) NOT NULL COMMENT '是否展示 0 否 1 是',
  `gc_addtime` int(11) NOT NULL DEFAULT 0 COMMENT '商品分类添加时间',
  `gc_edittime` int(11) NOT NULL DEFAULT 0 COMMENT '商品分类修改时间',
  `gc_grade` tinyint(1) NOT NULL DEFAULT 0 COMMENT '商品分类等级',
  `gc_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品分类图标',
  `gc_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`gc_id`) USING BTREE,
  INDEX `list1`(`gc_parentid`, `gc_isshow`) USING BTREE,
  INDEX `gc_parentid`(`gc_parentid`) USING BTREE,
  INDEX `gc_grade`(`gc_grade`) USING BTREE,
  INDEX `list2`(`gc_one_id`, `gc_grade`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 220 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_goods_class
-- ----------------------------
INSERT INTO `cmf_shop_goods_class` VALUES (1, '手机/数码/电脑办公', 0, 0, 1, 1, 1659597034, 0, 1, '', 'Mobile phone/digital/computer ');
INSERT INTO `cmf_shop_goods_class` VALUES (2, '手机', 1, 1, 12234, 1, 1659597034, 1702709922, 2, 'shop_two_class_1.png', 'Phone');
INSERT INTO `cmf_shop_goods_class` VALUES (3, '华为', 2, 1, 1, 1, 1659597034, 1702709922, 3, '', 'Huawei');
INSERT INTO `cmf_shop_goods_class` VALUES (4, '苹果', 2, 1, 2423, 1, 1659597034, 1702709922, 3, '', 'Apple');
INSERT INTO `cmf_shop_goods_class` VALUES (5, '小米', 2, 1, 3, 1, 1659597034, 1702709922, 3, '', 'Xiaomi');
INSERT INTO `cmf_shop_goods_class` VALUES (6, 'OPPO', 2, 1, 4, 1, 1659597034, 1702709922, 3, '', 'OPPO');
INSERT INTO `cmf_shop_goods_class` VALUES (7, 'vivo', 2, 1, 5, 1, 1659597034, 1702709922, 3, '', 'VIVO');
INSERT INTO `cmf_shop_goods_class` VALUES (8, '数码', 1, 1, 7, 1, 1659597034, 1702709589, 2, 'shop_two_class_2.png', 'Digital');
INSERT INTO `cmf_shop_goods_class` VALUES (9, '佳能', 8, 1, 1234, 1, 1659597034, 1702709589, 3, '', 'Canon');
INSERT INTO `cmf_shop_goods_class` VALUES (11, '索尼', 8, 1, 3234, 1, 1659597034, 1702709599, 3, '', 'Sony');
INSERT INTO `cmf_shop_goods_class` VALUES (12, '三星', 2, 1, 6, 1, 1659597034, 1702709922, 3, '', 'Samsung');
INSERT INTO `cmf_shop_goods_class` VALUES (13, '电脑办公', 1, 1, 1, 1, 1659597034, 1702709568, 2, 'shop_two_class_3.png', 'Computer office');
INSERT INTO `cmf_shop_goods_class` VALUES (14, '华硕', 13, 1, 1, 1, 1659597034, 1702709568, 3, '', 'ASUS');
INSERT INTO `cmf_shop_goods_class` VALUES (15, '戴尔', 13, 1, 1, 1, 1659597034, 1702709568, 3, '', 'Dell');
INSERT INTO `cmf_shop_goods_class` VALUES (16, '惠普', 13, 1, 1, 1, 1659597034, 1702709568, 3, '', 'HP');
INSERT INTO `cmf_shop_goods_class` VALUES (17, '宏碁', 13, 1, 1, 1, 1659597034, 1702709568, 3, '', 'Acer');
INSERT INTO `cmf_shop_goods_class` VALUES (18, '联想', 13, 1, 1, 1, 1659597034, 1702709568, 3, '', 'Lenovo');
INSERT INTO `cmf_shop_goods_class` VALUES (19, '家具/家饰/家纺', 0, 0, 2, 1, 1659597034, 0, 1, '', 'Furniture/Home Decoration/Home Textiles');
INSERT INTO `cmf_shop_goods_class` VALUES (20, '家具', 19, 19, 1, 1, 1659597034, 1702709965, 2, 'shop_two_class_4.png', 'Furniture');
INSERT INTO `cmf_shop_goods_class` VALUES (21, '布艺软饰', 19, 19, 2, 1, 1659597034, 0, 2, 'shop_two_class_5.png', 'Fabric soft furnishings');
INSERT INTO `cmf_shop_goods_class` VALUES (22, '床上用品', 19, 19, 3, 1, 1659597034, 1702710259, 2, 'shop_two_class_6.png', 'Bed linings');
INSERT INTO `cmf_shop_goods_class` VALUES (23, '沙发', 20, 19, 1, 1, 1659597034, 1702709978, 3, '', 'Sofa');
INSERT INTO `cmf_shop_goods_class` VALUES (24, '床', 20, 19, 2, 1, 1659597034, 1702710198, 3, '', 'Bed');
INSERT INTO `cmf_shop_goods_class` VALUES (25, '电视柜', 20, 19, 3, 1, 1659597034, 1702709965, 3, '', 'TV cabinet');
INSERT INTO `cmf_shop_goods_class` VALUES (26, '鞋柜', 20, 19, 4, 1, 1659597034, 1702709965, 3, '', 'Shoebox');
INSERT INTO `cmf_shop_goods_class` VALUES (27, '窗帘', 21, 19, 1, 1, 1659597034, 1702710209, 3, '', 'Curtain');
INSERT INTO `cmf_shop_goods_class` VALUES (28, '地毯', 21, 19, 2, 1, 1659597034, 1702710224, 3, '', 'Carpet');
INSERT INTO `cmf_shop_goods_class` VALUES (29, '桌布', 21, 19, 3, 1, 1659597034, 1702710241, 3, '', 'Tablecloth');
INSERT INTO `cmf_shop_goods_class` VALUES (30, '沙发垫', 21, 19, 4, 1, 1659597034, 0, 3, '', 'Sofa cushion');
INSERT INTO `cmf_shop_goods_class` VALUES (31, '四件套', 22, 19, 1, 1, 1659597034, 1702710259, 3, '', 'four piece set');
INSERT INTO `cmf_shop_goods_class` VALUES (32, '空调被', 22, 19, 2, 1, 1659597034, 1702710259, 3, '', 'Air conditioning is');
INSERT INTO `cmf_shop_goods_class` VALUES (33, '夏凉被', 22, 19, 3, 1, 1659597034, 1702710259, 3, '', 'summer quilt');
INSERT INTO `cmf_shop_goods_class` VALUES (34, '枕头', 22, 19, 4, 1, 1659597034, 1702710259, 3, '', 'Pillow');
INSERT INTO `cmf_shop_goods_class` VALUES (35, '竹席', 22, 19, 5, 1, 1659597034, 1702710259, 3, '', 'bamboo mat');
INSERT INTO `cmf_shop_goods_class` VALUES (36, '美食/生鲜/零食', 0, 0, 3, 1, 1659597034, 0, 1, '', 'Food/Fresh Food/Snacks');
INSERT INTO `cmf_shop_goods_class` VALUES (37, '美食', 36, 36, 1, 1, 1659597034, 1702710341, 2, 'shop_two_class_7.png', 'Gourmet food');
INSERT INTO `cmf_shop_goods_class` VALUES (38, '生鲜', 36, 36, 2, 1, 1659597034, 1702710281, 2, 'shop_two_class_8.png', 'Fresh food');
INSERT INTO `cmf_shop_goods_class` VALUES (39, '零食', 36, 36, 3, 1, 1659597034, 1702710294, 2, 'shop_two_class_9.png', 'Snack');
INSERT INTO `cmf_shop_goods_class` VALUES (40, '牛奶', 37, 36, 1, 1, 1659597034, 1702710341, 3, '', 'milk');
INSERT INTO `cmf_shop_goods_class` VALUES (41, '红茶', 37, 36, 2, 1, 1659597034, 1702710341, 3, '', 'black tea');
INSERT INTO `cmf_shop_goods_class` VALUES (42, '绿茶', 37, 36, 2, 1, 1659597034, 1702710341, 3, '', 'green tea');
INSERT INTO `cmf_shop_goods_class` VALUES (43, '黑茶', 37, 36, 3, 1, 1659597034, 1702710341, 3, '', 'black tea');
INSERT INTO `cmf_shop_goods_class` VALUES (44, '荔枝', 38, 36, 1, 1, 1659597034, 1702710281, 3, '', 'litchi');
INSERT INTO `cmf_shop_goods_class` VALUES (45, '芒果', 38, 36, 2, 1, 1659597034, 1702710281, 3, '', 'mango');
INSERT INTO `cmf_shop_goods_class` VALUES (46, '樱桃', 38, 36, 3, 1, 1659597034, 1702710281, 3, '', 'cherry');
INSERT INTO `cmf_shop_goods_class` VALUES (47, '小龙虾', 38, 36, 4, 1, 1659597034, 1702710281, 3, '', 'crayfish');
INSERT INTO `cmf_shop_goods_class` VALUES (48, '三文鱼', 38, 36, 5, 1, 1659597034, 1702710281, 3, '', 'salmon');
INSERT INTO `cmf_shop_goods_class` VALUES (49, '零食大礼包', 39, 36, 1, 1, 1659597034, 1702710294, 3, '', 'Snack gift pack');
INSERT INTO `cmf_shop_goods_class` VALUES (50, '面包', 39, 36, 2, 1, 1659597034, 1702710294, 3, '', 'bread');
INSERT INTO `cmf_shop_goods_class` VALUES (51, '巧克力', 39, 36, 3, 1, 1659597034, 1702710294, 3, '', 'chocolate');
INSERT INTO `cmf_shop_goods_class` VALUES (52, '鱼干', 39, 36, 4, 1, 1659597034, 1702710294, 3, '', 'Dried fish');
INSERT INTO `cmf_shop_goods_class` VALUES (53, '女鞋/箱包/钟表/珠宝', 0, 0, 4, 1, 1659597034, 0, 1, '', 'Women\'s shoes/bags/watches/jewelry');
INSERT INTO `cmf_shop_goods_class` VALUES (54, '精品女鞋', 53, 53, 1, 1, 1659597034, 1702710309, 2, 'shop_two_class_10.png', 'Fine women\'s shoes');
INSERT INTO `cmf_shop_goods_class` VALUES (55, '潮流女包', 53, 53, 2, 1, 1659597034, 1702710326, 2, 'shop_two_class_11.png', 'Trendy women\'s bags');
INSERT INTO `cmf_shop_goods_class` VALUES (56, '精品男包', 53, 53, 3, 1, 1659597034, 1702710373, 2, 'shop_two_class_12.png', 'Boutique men\'s bag');
INSERT INTO `cmf_shop_goods_class` VALUES (57, '功能箱包', 53, 53, 4, 1, 1659597034, 0, 2, 'shop_two_class_13.png', 'Functional luggage');
INSERT INTO `cmf_shop_goods_class` VALUES (58, '钟表', 53, 53, 5, 1, 1659597034, 1702710357, 2, 'shop_two_class_14.png', 'Clock');
INSERT INTO `cmf_shop_goods_class` VALUES (59, '珠宝首饰', 53, 53, 6, 1, 1659597034, 0, 2, 'shop_two_class_15.png', 'Jewelry');
INSERT INTO `cmf_shop_goods_class` VALUES (60, '马丁靴', 54, 53, 1, 1, 1659597034, 1702710309, 3, '', 'Martin boots');
INSERT INTO `cmf_shop_goods_class` VALUES (61, '高跟鞋', 54, 53, 2, 1, 1659597034, 1702710309, 3, '', 'High heel');
INSERT INTO `cmf_shop_goods_class` VALUES (62, '帆布鞋', 54, 53, 3, 1, 1659597034, 1702710309, 3, '', 'canvas shoes');
INSERT INTO `cmf_shop_goods_class` VALUES (63, '松糕鞋', 54, 53, 4, 1, 1659597034, 1702710309, 3, '', 'platform shoes');
INSERT INTO `cmf_shop_goods_class` VALUES (64, '真皮包', 55, 53, 1, 1, 1659597034, 1702710326, 3, '', 'genuine leather bag');
INSERT INTO `cmf_shop_goods_class` VALUES (65, '单肩包', 55, 53, 2, 1, 1659597034, 1702710326, 3, '', 'Shoulder Bags');
INSERT INTO `cmf_shop_goods_class` VALUES (66, '斜挎包', 55, 53, 3, 1, 1659597034, 1702710326, 3, '', 'crossbody bag');
INSERT INTO `cmf_shop_goods_class` VALUES (67, '钱包', 55, 53, 4, 1, 1659597034, 1702710326, 3, '', 'wallet');
INSERT INTO `cmf_shop_goods_class` VALUES (68, '手拿包', 55, 53, 5, 1, 1659597034, 1702710326, 3, '', 'clutch bag');
INSERT INTO `cmf_shop_goods_class` VALUES (69, '钥匙包', 55, 53, 6, 1, 1659597034, 1702710326, 3, '', 'key bag');
INSERT INTO `cmf_shop_goods_class` VALUES (70, '男士钱包', 56, 53, 1, 1, 1659597034, 1702710373, 3, '', 'men\'s wallet');
INSERT INTO `cmf_shop_goods_class` VALUES (71, '双肩包', 56, 53, 2, 1, 1659597034, 1702710373, 3, '', 'backpack');
INSERT INTO `cmf_shop_goods_class` VALUES (72, '单肩/斜挎包', 56, 53, 3, 1, 1659597034, 1702710373, 3, '', 'Shoulder Messenger Bag');
INSERT INTO `cmf_shop_goods_class` VALUES (73, '商务公文包', 56, 53, 4, 1, 1659597034, 1702710373, 3, '', 'business briefcase');
INSERT INTO `cmf_shop_goods_class` VALUES (74, '拉杆箱', 57, 53, 1, 1, 1659597034, 0, 3, '', 'trolley case');
INSERT INTO `cmf_shop_goods_class` VALUES (75, '旅行包', 57, 53, 2, 1, 1659597034, 0, 3, '', 'travel bag');
INSERT INTO `cmf_shop_goods_class` VALUES (76, '电脑包', 57, 53, 3, 1, 1659597034, 0, 3, '', 'laptop bag');
INSERT INTO `cmf_shop_goods_class` VALUES (77, '登山包', 57, 53, 4, 1, 1659597034, 0, 3, '', 'backpacks');
INSERT INTO `cmf_shop_goods_class` VALUES (78, '休闲运动包', 57, 53, 5, 1, 1659597034, 0, 3, '', 'casual sports bag');
INSERT INTO `cmf_shop_goods_class` VALUES (79, '天梭', 58, 53, 1, 1, 1659597034, 1702710357, 3, '', 'Tissot');
INSERT INTO `cmf_shop_goods_class` VALUES (80, '浪琴', 58, 53, 2, 1, 1659597034, 1702710357, 3, '', 'Longines');
INSERT INTO `cmf_shop_goods_class` VALUES (81, '欧米茄', 58, 53, 3, 1, 1659597034, 1702710357, 3, '', 'Omega');
INSERT INTO `cmf_shop_goods_class` VALUES (82, '卡西欧', 58, 53, 4, 1, 1659597034, 1702710357, 3, '', 'Casio');
INSERT INTO `cmf_shop_goods_class` VALUES (83, '天王', 58, 53, 5, 1, 1659597034, 1702710357, 3, '', 'king of heaven');
INSERT INTO `cmf_shop_goods_class` VALUES (84, '闹钟', 58, 53, 6, 1, 1659597034, 1702710357, 3, '', 'Alarm clock');
INSERT INTO `cmf_shop_goods_class` VALUES (85, '挂钟', 58, 53, 7, 1, 1659597034, 1702710357, 3, '', 'wall clock');
INSERT INTO `cmf_shop_goods_class` VALUES (86, '座钟', 58, 53, 8, 1, 1659597034, 1702710357, 3, '', 'desk clock');
INSERT INTO `cmf_shop_goods_class` VALUES (87, '钟表配件', 58, 53, 9, 1, 1659597034, 1702710357, 3, '', 'Watch accessories');
INSERT INTO `cmf_shop_goods_class` VALUES (88, '黄金', 59, 53, 1, 1, 1659597034, 0, 3, '', 'gold');
INSERT INTO `cmf_shop_goods_class` VALUES (89, '钻石', 59, 53, 2, 1, 1659597034, 0, 3, '', 'diamond');
INSERT INTO `cmf_shop_goods_class` VALUES (90, '翡翠玉石', 59, 53, 3, 1, 1659597034, 0, 3, '', 'jade jade');
INSERT INTO `cmf_shop_goods_class` VALUES (91, '水晶玛瑙', 59, 53, 4, 1, 1659597034, 0, 3, '', 'crystal agate');
INSERT INTO `cmf_shop_goods_class` VALUES (92, '手串/把件', 59, 53, 5, 1, 1659597034, 0, 3, '', 'Bracelets/handles');
INSERT INTO `cmf_shop_goods_class` VALUES (93, '银饰', 59, 53, 6, 1, 1659597034, 0, 3, '', 'silver jewelry');
INSERT INTO `cmf_shop_goods_class` VALUES (94, '珍珠', 59, 53, 7, 1, 1659597034, 0, 3, '', 'pearl');
INSERT INTO `cmf_shop_goods_class` VALUES (95, '汽车/汽车用品', 0, 0, 5, 1, 1659597034, 0, 1, '', 'Auto/auto supplies');
INSERT INTO `cmf_shop_goods_class` VALUES (96, '汽车装饰', 95, 95, 1, 1, 1659597034, 1702710391, 2, 'shop_two_class_16.png', 'Car decoration');
INSERT INTO `cmf_shop_goods_class` VALUES (97, '车载电器', 95, 95, 2, 1, 1659597034, 0, 2, 'shop_two_class_17.png', 'Car electrical appliances');
INSERT INTO `cmf_shop_goods_class` VALUES (98, '汽车美容', 95, 95, 3, 1, 1659597034, 1702710411, 2, 'shop_two_class_18.png', 'Car beauty');
INSERT INTO `cmf_shop_goods_class` VALUES (99, '随车用品', 95, 95, 4, 1, 1659597034, 0, 2, 'shop_two_class_19.png', 'Car supplies');
INSERT INTO `cmf_shop_goods_class` VALUES (100, '坐垫套装', 96, 95, 1, 1, 1659597034, 1702710391, 3, '', 'cushion set');
INSERT INTO `cmf_shop_goods_class` VALUES (101, '脚垫', 96, 95, 2, 1, 1659597034, 1702710391, 3, '', 'foot pads');
INSERT INTO `cmf_shop_goods_class` VALUES (102, '方向盘套', 96, 95, 3, 1, 1659597034, 1702710391, 3, '', 'steering wheel cover');
INSERT INTO `cmf_shop_goods_class` VALUES (103, '装饰灯', 96, 95, 4, 1, 1659597034, 1702710391, 3, '', 'Decorative lights');
INSERT INTO `cmf_shop_goods_class` VALUES (104, '车衣', 96, 95, 5, 1, 1659597034, 1702710391, 3, '', 'Car cover');
INSERT INTO `cmf_shop_goods_class` VALUES (105, '雨刮器', 96, 95, 6, 1, 1659597034, 1702710391, 3, '', 'Wiper');
INSERT INTO `cmf_shop_goods_class` VALUES (106, '雨眉', 96, 95, 7, 1, 1659597034, 1702710391, 3, '', 'Yumei');
INSERT INTO `cmf_shop_goods_class` VALUES (107, '行车记录仪', 97, 95, 1, 1, 1659597034, 0, 3, '', 'driving recorder');
INSERT INTO `cmf_shop_goods_class` VALUES (108, '车载充电器', 97, 95, 2, 1, 1659597034, 0, 3, '', 'car charger');
INSERT INTO `cmf_shop_goods_class` VALUES (109, '倒车雷达', 97, 95, 3, 1, 1659597034, 0, 3, '', 'Reversing radar');
INSERT INTO `cmf_shop_goods_class` VALUES (110, '车载吸尘器', 97, 95, 4, 1, 1659597034, 0, 3, '', 'Car cleaners');
INSERT INTO `cmf_shop_goods_class` VALUES (111, '应急电源', 97, 95, 5, 1, 1659597034, 0, 3, '', 'Emergency Power Supply');
INSERT INTO `cmf_shop_goods_class` VALUES (112, '车载电器配件', 97, 95, 6, 1, 1659597034, 0, 3, '', 'Car electrical accessories');
INSERT INTO `cmf_shop_goods_class` VALUES (113, '洗车机', 98, 95, 1, 1, 1659597034, 1702710411, 3, '', 'car washer');
INSERT INTO `cmf_shop_goods_class` VALUES (114, '洗车水枪', 98, 95, 2, 1, 1659597034, 1702710411, 3, '', 'car wash water gun');
INSERT INTO `cmf_shop_goods_class` VALUES (115, '玻璃水', 98, 95, 3, 1, 1659597034, 1702710411, 3, '', 'glass of water');
INSERT INTO `cmf_shop_goods_class` VALUES (116, '车蜡', 98, 95, 4, 1, 1659597034, 1702710411, 3, '', 'car wax');
INSERT INTO `cmf_shop_goods_class` VALUES (117, '汽车贴膜', 98, 95, 5, 1, 1659597034, 1702710411, 3, '', 'car wrap');
INSERT INTO `cmf_shop_goods_class` VALUES (118, '底盘装甲', 98, 95, 5, 1, 1659597034, 1702710411, 3, '', 'Chassis armor');
INSERT INTO `cmf_shop_goods_class` VALUES (119, '补漆笔', 98, 95, 6, 1, 1659597034, 1702710411, 3, '', 'Fill paint pen');
INSERT INTO `cmf_shop_goods_class` VALUES (120, '汽车美容配件', 98, 95, 7, 1, 1659597034, 1702710411, 3, '', 'car beauty accessories');
INSERT INTO `cmf_shop_goods_class` VALUES (121, '灭火器', 99, 95, 1, 1, 1659597034, 0, 3, '', 'fire extinguisher');
INSERT INTO `cmf_shop_goods_class` VALUES (122, '保温杯', 99, 95, 2, 1, 1659597034, 0, 3, '', 'thermos cup');
INSERT INTO `cmf_shop_goods_class` VALUES (123, '充气泵', 99, 95, 3, 1, 1659597034, 0, 3, '', 'Inflator');
INSERT INTO `cmf_shop_goods_class` VALUES (124, '车载床', 99, 95, 4, 1, 1659597034, 0, 3, '', 'Vehicle bed');
INSERT INTO `cmf_shop_goods_class` VALUES (125, '储物箱', 99, 95, 5, 1, 1659597034, 0, 3, '', 'storage box');
INSERT INTO `cmf_shop_goods_class` VALUES (126, '母婴/玩具', 0, 0, 6, 1, 1659597034, 0, 1, '', 'Mother and baby/toys');
INSERT INTO `cmf_shop_goods_class` VALUES (127, '奶粉', 126, 126, 1, 1, 1659597034, 1702710428, 2, 'shop_two_class_20.png', 'Milk powder');
INSERT INTO `cmf_shop_goods_class` VALUES (128, '营养辅食', 126, 126, 2, 1, 1659597034, 0, 2, 'shop_two_class_21.png', 'Nutritional food supplement');
INSERT INTO `cmf_shop_goods_class` VALUES (129, '尿不湿', 126, 126, 3, 1, 1659597034, 0, 2, 'shop_two_class_22.png', 'Diapers');
INSERT INTO `cmf_shop_goods_class` VALUES (130, '喂养用品', 126, 126, 4, 1, 1659597034, 0, 2, 'shop_two_class_23.png', 'Feeding supplies');
INSERT INTO `cmf_shop_goods_class` VALUES (131, '母婴洗护用品', 126, 126, 5, 1, 1659597034, 0, 2, 'shop_two_class_24.png', 'Mother and baby toiletries');
INSERT INTO `cmf_shop_goods_class` VALUES (132, '寝居服饰', 126, 126, 5, 1, 1659597034, 1702710448, 2, 'shop_two_class_25.png', 'Bed clothes');
INSERT INTO `cmf_shop_goods_class` VALUES (133, '妈妈专区', 126, 126, 6, 1, 1659597034, 0, 2, 'shop_two_class_26.png', 'Mom area');
INSERT INTO `cmf_shop_goods_class` VALUES (134, '童车童床', 126, 126, 7, 1, 1659597034, 1702710462, 2, 'shop_two_class_27.png', 'Stroller crib');
INSERT INTO `cmf_shop_goods_class` VALUES (135, '玩具', 126, 126, 8, 1, 1659597034, 0, 2, 'shop_two_class_28.png', 'Toy');
INSERT INTO `cmf_shop_goods_class` VALUES (136, '1段奶粉', 127, 126, 1, 1, 1659597034, 1702710428, 3, '', 'Stage 1 milk powder');
INSERT INTO `cmf_shop_goods_class` VALUES (137, '2段奶粉', 127, 126, 2, 1, 1659597034, 1702710428, 3, '', 'Stage 2 milk powder');
INSERT INTO `cmf_shop_goods_class` VALUES (138, '3段奶粉', 127, 126, 3, 1, 1659597034, 1702710428, 3, '', 'Stage 3 milk powder');
INSERT INTO `cmf_shop_goods_class` VALUES (139, '4段奶粉', 127, 126, 4, 1, 1659597034, 1702710428, 3, '', 'Stage 4 milk powder');
INSERT INTO `cmf_shop_goods_class` VALUES (140, '特殊配方奶粉', 127, 126, 5, 1, 1659597034, 1702710428, 3, '', 'Special formula milk powder');
INSERT INTO `cmf_shop_goods_class` VALUES (141, '米粉/菜粉', 128, 126, 1, 1, 1659597034, 0, 3, '', 'Rice noodles/vegetable noodles');
INSERT INTO `cmf_shop_goods_class` VALUES (142, '面条/粥', 128, 126, 2, 1, 1659597034, 0, 3, '', 'Noodles/Porridge');
INSERT INTO `cmf_shop_goods_class` VALUES (143, '果泥/果汁', 128, 126, 3, 1, 1659597034, 0, 3, '', 'Puree/juice');
INSERT INTO `cmf_shop_goods_class` VALUES (144, '宝宝零食', 128, 126, 4, 1, 1659597034, 0, 3, '', 'baby snacks');
INSERT INTO `cmf_shop_goods_class` VALUES (145, 'NB', 129, 126, 1, 1, 1659597034, 0, 3, '', 'NB');
INSERT INTO `cmf_shop_goods_class` VALUES (146, 'S', 129, 126, 2, 1, 1659597034, 0, 3, '', 'S');
INSERT INTO `cmf_shop_goods_class` VALUES (147, 'M', 129, 126, 3, 1, 1659597034, 0, 3, '', 'M');
INSERT INTO `cmf_shop_goods_class` VALUES (148, 'L', 129, 126, 4, 1, 1659597034, 0, 3, '', 'L');
INSERT INTO `cmf_shop_goods_class` VALUES (149, 'XL', 129, 126, 5, 1, 1659597034, 0, 3, '', 'XL');
INSERT INTO `cmf_shop_goods_class` VALUES (150, '拉拉裤', 129, 126, 6, 1, 1659597034, 0, 3, '', 'pull-up pants');
INSERT INTO `cmf_shop_goods_class` VALUES (151, '奶瓶奶嘴', 130, 126, 1, 1, 1659597034, 0, 3, '', 'baby bottle nipple');
INSERT INTO `cmf_shop_goods_class` VALUES (152, '吸奶器', 130, 126, 2, 1, 1659597034, 0, 3, '', 'breast pump');
INSERT INTO `cmf_shop_goods_class` VALUES (153, '辅食料理机', 130, 126, 3, 1, 1659597034, 0, 3, '', 'Supplementary food processor');
INSERT INTO `cmf_shop_goods_class` VALUES (154, '儿童餐具', 130, 126, 4, 1, 1659597034, 0, 3, '', 'children\'s tableware');
INSERT INTO `cmf_shop_goods_class` VALUES (155, '水壶/水杯', 130, 126, 6, 1, 1659597034, 0, 3, '', 'Kettle/cup');
INSERT INTO `cmf_shop_goods_class` VALUES (156, '牙胶安抚', 130, 126, 7, 1, 1659597034, 0, 3, '', 'Teether soothing');
INSERT INTO `cmf_shop_goods_class` VALUES (157, '宝宝护肤', 131, 126, 1, 1, 1659597034, 0, 3, '', 'baby skin care');
INSERT INTO `cmf_shop_goods_class` VALUES (158, '日常护理', 131, 126, 2, 1, 1659597034, 0, 3, '', 'daily care');
INSERT INTO `cmf_shop_goods_class` VALUES (159, '洗发沐浴', 131, 126, 3, 1, 1659597034, 0, 3, '', 'Shampoo and shower');
INSERT INTO `cmf_shop_goods_class` VALUES (160, '驱蚊防晒', 131, 126, 4, 1, 1659597034, 0, 3, '', 'Mosquito repellent and sunscreen');
INSERT INTO `cmf_shop_goods_class` VALUES (161, '理发器', 131, 126, 5, 1, 1659597034, 0, 3, '', 'hair clipper');
INSERT INTO `cmf_shop_goods_class` VALUES (162, '洗澡用具', 131, 126, 6, 1, 1659597034, 0, 3, '', 'bathing utensils');
INSERT INTO `cmf_shop_goods_class` VALUES (163, '婴童睡袋/抱被', 132, 126, 1, 1, 1659597034, 1702710448, 3, '', 'Baby sleeping bag/quilt');
INSERT INTO `cmf_shop_goods_class` VALUES (164, '婴童隔尿垫/巾', 132, 126, 2, 1, 1659597034, 1702710448, 3, '', 'Baby changing pad/wipe');
INSERT INTO `cmf_shop_goods_class` VALUES (165, '婴童浴巾/浴衣', 132, 126, 3, 1, 1659597034, 1702710448, 3, '', 'Baby bath towel/yukata');
INSERT INTO `cmf_shop_goods_class` VALUES (166, '婴童毛巾/口水巾', 132, 126, 4, 1, 1659597034, 1702710448, 3, '', 'Baby towels/saliva wipes');
INSERT INTO `cmf_shop_goods_class` VALUES (167, '婴童布尿裤/尿布', 132, 126, 5, 1, 1659597034, 1702710448, 3, '', 'Baby cloth diapers/diapers');
INSERT INTO `cmf_shop_goods_class` VALUES (168, '婴儿内衣', 132, 126, 6, 1, 1659597034, 1702710448, 3, '', 'baby underwear');
INSERT INTO `cmf_shop_goods_class` VALUES (169, '爬行垫', 132, 126, 7, 1, 1659597034, 1702710448, 3, '', 'Crawling mat');
INSERT INTO `cmf_shop_goods_class` VALUES (170, '孕妈装', 133, 126, 1, 1, 1659597034, 0, 3, '', 'maternity clothes');
INSERT INTO `cmf_shop_goods_class` VALUES (171, '孕妇护肤', 133, 126, 2, 1, 1659597034, 0, 3, '', 'Pregnant women skin care');
INSERT INTO `cmf_shop_goods_class` VALUES (172, '孕妇内衣', 133, 126, 3, 1, 1659597034, 0, 3, '', 'maternity underwear');
INSERT INTO `cmf_shop_goods_class` VALUES (173, '防溢乳垫', 133, 126, 4, 1, 1659597034, 0, 3, '', 'Anti-overflow breast pads');
INSERT INTO `cmf_shop_goods_class` VALUES (174, '婴儿推车', 134, 126, 1, 1, 1659597034, 1702710462, 3, '', 'baby cart');
INSERT INTO `cmf_shop_goods_class` VALUES (175, '婴儿床', 134, 126, 2, 1, 1659597034, 1702710462, 3, '', 'crib');
INSERT INTO `cmf_shop_goods_class` VALUES (176, '餐椅', 134, 126, 3, 1, 1659597034, 1702710462, 3, '', 'dining chair');
INSERT INTO `cmf_shop_goods_class` VALUES (177, '学步车', 134, 126, 4, 1, 1659597034, 1702710462, 3, '', 'baby walker');
INSERT INTO `cmf_shop_goods_class` VALUES (178, '积木', 135, 126, 1, 1, 1659597034, 0, 3, '', 'Building Blocks');
INSERT INTO `cmf_shop_goods_class` VALUES (179, '芭比娃娃', 135, 126, 2, 1, 1659597034, 0, 3, '', 'Barbie doll');
INSERT INTO `cmf_shop_goods_class` VALUES (180, '毛绒玩具', 135, 126, 3, 1, 1659597034, 0, 3, '', 'stuffed toys');
INSERT INTO `cmf_shop_goods_class` VALUES (181, '益智玩具', 135, 126, 4, 1, 1659597034, 0, 3, '', 'brain game');
INSERT INTO `cmf_shop_goods_class` VALUES (182, '服装/男装/女装', 0, 0, 7, 1, 1659597034, 0, 1, '', 'Clothing/Men\'s Clothing/Women\'s Clothing');
INSERT INTO `cmf_shop_goods_class` VALUES (183, '女装', 182, 182, 1, 1, 1659597034, 1702710471, 2, 'shop_two_class_29.png', 'Women\'s clothing');
INSERT INTO `cmf_shop_goods_class` VALUES (184, '卫衣', 183, 182, 1, 1, 1659597034, 1702710471, 3, '', 'Hoodie');
INSERT INTO `cmf_shop_goods_class` VALUES (185, '休闲裤', 183, 182, 2, 1, 1659597034, 1702710471, 3, '', 'casual pants');
INSERT INTO `cmf_shop_goods_class` VALUES (186, '男装', 182, 182, 2, 1, 1659597034, 0, 2, 'shop_two_class_30.png', 'Men\'s');
INSERT INTO `cmf_shop_goods_class` VALUES (187, '运动服', 186, 182, 1, 1, 1659597034, 0, 3, '', 'sportswear');
INSERT INTO `cmf_shop_goods_class` VALUES (188, '西装', 186, 182, 2, 1, 1659597034, 0, 3, '', 'Suit');
INSERT INTO `cmf_shop_goods_class` VALUES (189, '衬衫', 186, 182, 3, 1, 1659597034, 0, 3, '', 'shirt');
INSERT INTO `cmf_shop_goods_class` VALUES (190, '连衣裙', 183, 182, 3, 1, 1659597034, 1702710471, 3, '', 'dress');
INSERT INTO `cmf_shop_goods_class` VALUES (191, 'T恤', 183, 182, 4, 1, 1659597034, 1702710471, 3, '', 't-shirt');
INSERT INTO `cmf_shop_goods_class` VALUES (192, '时尚套装', 183, 182, 5, 1, 1659597034, 1702710471, 3, '', 'fashion suit');
INSERT INTO `cmf_shop_goods_class` VALUES (193, '医药', 0, 0, 8, 1, 1659597034, 0, 1, '', 'medicine');
INSERT INTO `cmf_shop_goods_class` VALUES (194, '眼药水', 193, 193, 1, 1, 1659597034, 1702710492, 2, 'shop_two_class_31.png', 'Eye drops');
INSERT INTO `cmf_shop_goods_class` VALUES (195, '口罩', 193, 193, 2, 1, 1659597034, 0, 2, 'shop_two_class_32.png', 'Face mask');
INSERT INTO `cmf_shop_goods_class` VALUES (196, 'KN95', 195, 193, 1, 1, 1659597034, 0, 3, '', 'KN95');
INSERT INTO `cmf_shop_goods_class` VALUES (197, '普通一次医用口罩', 195, 193, 2, 1, 1659597034, 0, 3, '', 'Ordinary disposable medical masks');
INSERT INTO `cmf_shop_goods_class` VALUES (198, '抗疲劳', 194, 193, 1, 1, 1659597034, 1702710492, 3, '', 'Anti-fatigue');
INSERT INTO `cmf_shop_goods_class` VALUES (199, '防近视', 194, 193, 2, 1, 1659597034, 1702710492, 3, '', 'Prevent myopia');
INSERT INTO `cmf_shop_goods_class` VALUES (200, '游戏 / 动漫 / 影视', 0, 0, 9, 1, 1659597034, 0, 1, '', 'Games/Animation/Movies');
INSERT INTO `cmf_shop_goods_class` VALUES (201, '游戏', 200, 200, 1, 1, 1659597034, 0, 2, 'shop_two_class_33.png', 'Game');
INSERT INTO `cmf_shop_goods_class` VALUES (202, '动漫周边', 200, 200, 2, 1, 1659597034, 0, 2, 'shop_two_class_34.png', 'Animation peripherals');
INSERT INTO `cmf_shop_goods_class` VALUES (203, '热门影视周边', 200, 200, 3, 1, 1659597034, 0, 2, 'shop_two_class_35.png', 'Popular film and television peripherals');
INSERT INTO `cmf_shop_goods_class` VALUES (204, 'DNF', 201, 200, 1, 1, 1659597034, 0, 3, '', 'DNF');
INSERT INTO `cmf_shop_goods_class` VALUES (205, '梦幻西游', 201, 200, 2, 1, 1659597034, 0, 3, '', 'Fantasy Westward Journey');
INSERT INTO `cmf_shop_goods_class` VALUES (206, ' 魔兽', 201, 200, 3, 1, 1659597034, 0, 3, '', 'Warcraft');
INSERT INTO `cmf_shop_goods_class` VALUES (207, 'LOL', 201, 200, 4, 1, 1659597034, 0, 3, '', 'LOL');
INSERT INTO `cmf_shop_goods_class` VALUES (208, '坦克世界', 201, 200, 5, 1, 1659597034, 0, 3, '', 'World of Tanks');
INSERT INTO `cmf_shop_goods_class` VALUES (209, '剑网3', 201, 200, 6, 1, 1659597034, 0, 3, '', 'Jian Wang 3');
INSERT INTO `cmf_shop_goods_class` VALUES (211, 'DOTA2', 201, 200, 7, 1, 1659597034, 0, 3, '', 'DOTA2');
INSERT INTO `cmf_shop_goods_class` VALUES (212, '笔记本', 0, 0, 1, 1, 1659597034, 1702709935, 1, '', 'Notebook');
INSERT INTO `cmf_shop_goods_class` VALUES (213, '好好', 0, 0, 7, 1, 1659597034, 0, 1, '', 'good');
INSERT INTO `cmf_shop_goods_class` VALUES (217, '英雄', 13, 1, 4, 1, 1659597034, 1702709580, 3, '', 'Hero');
INSERT INTO `cmf_shop_goods_class` VALUES (219, '蔬菜', 0, 0, 1, 1, 1676357219, 1702709950, 1, '', 'Vegetable');

-- ----------------------------
-- Table structure for cmf_shop_order
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_order`;
CREATE TABLE `cmf_shop_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '购买者ID',
  `shop_uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '卖家用户ID',
  `goodsid` bigint(20) NOT NULL DEFAULT 0 COMMENT '商品id',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `spec_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品规格ID',
  `spec_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规格名称',
  `spec_thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规格封面',
  `nums` int(11) NOT NULL DEFAULT 0 COMMENT '购买数量',
  `price` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '商品单价',
  `total` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '商品总价（包含邮费）',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '购买者姓名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '购买者联系电话',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '国家',
  `country_code` int(11) NOT NULL DEFAULT 0 COMMENT '国家代号',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '购买者省份',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '购买者市',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '购买者地区',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '购买者详细地址',
  `postage` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '邮费',
  `orderno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '订单类型 1 支付宝 2 微信 3 余额 4 微信小程序 5 paypal 6 Braintree_paypal',
  `trade_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '三方订单号',
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '订单状态  -1 已关闭  0 待付款 1 待发货 2 待收货 3 待评价 4 已评价 5 退款',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '订单添加时间',
  `cancel_time` int(11) NOT NULL DEFAULT 0 COMMENT '订单取消时间',
  `paytime` int(11) NOT NULL DEFAULT 0 COMMENT '订单付款时间',
  `shipment_time` int(11) NOT NULL DEFAULT 0 COMMENT '订单发货时间',
  `receive_time` int(11) NOT NULL DEFAULT 0 COMMENT '订单收货时间',
  `evaluate_time` int(11) NOT NULL DEFAULT 0 COMMENT '订单评价时间',
  `settlement_time` int(11) NOT NULL DEFAULT 0 COMMENT '订单结算时间（款项打给卖家）',
  `is_append_evaluate` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否可追加评价',
  `order_percent` int(11) NOT NULL DEFAULT 0 COMMENT '订单抽成比例',
  `refund_starttime` int(11) NOT NULL DEFAULT 0 COMMENT '订单发起退款时间',
  `refund_endtime` int(11) NOT NULL DEFAULT 0 COMMENT '订单退款处理结束时间',
  `refund_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '退款处理结果 -2取消申请 -1 失败 0 处理中 1 成功 ',
  `refund_shop_result` tinyint(1) NOT NULL DEFAULT 0 COMMENT '退款时卖家处理结果 0 未处理 -1 拒绝 1 同意',
  `express_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '物流公司名称',
  `express_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '物流公司电话',
  `express_thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '物流公司图标',
  `express_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '快递公司对应三方平台的编码',
  `express_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '物流单号',
  `isdel` tinyint(1) NOT NULL DEFAULT 0 COMMENT '订单是否删除 0 否 -1 买家删除 -2 卖家删除 1 买家卖家都删除',
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '买家留言内容',
  `commission` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '平台自营商品设置的代售佣金',
  `liveuid` bigint(20) NOT NULL DEFAULT 0 COMMENT '代售平台商品的主播ID',
  `admin_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布自营商品的管理员id',
  `shareuid` bigint(20) NOT NULL DEFAULT 0 COMMENT '分享商品的用户ID',
  `share_income` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '用户购买分享者分享的商品后，分享用户获得的佣金',
  `express_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '物流公司英文名称',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_uid`(`id`, `uid`) USING BTREE,
  INDEX `shopuid_status`(`shop_uid`, `status`) USING BTREE,
  INDEX `shopuid_status_refundstatus`(`shop_uid`, `status`, `refund_status`) USING BTREE,
  INDEX `id_shopuid`(`id`, `shop_uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_shop_order_comments
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_order_comments`;
CREATE TABLE `cmf_shop_order_comments`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `orderid` bigint(20) NOT NULL DEFAULT 0 COMMENT '商品订单ID',
  `goodsid` bigint(20) NOT NULL COMMENT '商品ID',
  `shop_uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '店铺用户id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文字内容',
  `thumbs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论图片列表',
  `video_thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '视频封面',
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '视频地址',
  `is_anonym` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否匿名 0否 1是',
  `quality_points` tinyint(1) NOT NULL DEFAULT 0 COMMENT '商品描述评分',
  `service_points` tinyint(1) NOT NULL DEFAULT 0 COMMENT '服务态度评分',
  `express_points` tinyint(1) NOT NULL DEFAULT 0 COMMENT '物流速度评分',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `is_append` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否是追评0 否 1 是',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goodsid_isappend`(`goodsid`, `is_append`) USING BTREE,
  INDEX `uid_orderid`(`uid`, `orderid`, `is_append`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_shop_order_message
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_order_message`;
CREATE TABLE `cmf_shop_order_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '消息内容',
  `orderid` bigint(20) NOT NULL DEFAULT 0,
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '接受消息用户ID',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '用户身份 0买家 1卖家',
  `is_commission` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否订单结算消息 0 否 1 是',
  `title_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '英文内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_shop_order_refund
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_order_refund`;
CREATE TABLE `cmf_shop_order_refund`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '买家id',
  `orderid` bigint(20) NOT NULL DEFAULT 0 COMMENT '订单ID',
  `goodsid` bigint(20) NOT NULL DEFAULT 0 COMMENT '商品ID',
  `shop_uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '商家ID',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '退款原因',
  `content` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '退款说明',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '退款图片（废弃）',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '退款类型 0 仅退款 1退货退款',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '申请时间',
  `edittime` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `shop_process_time` int(11) NOT NULL DEFAULT 0 COMMENT '店铺处理时间',
  `shop_result` tinyint(1) NOT NULL DEFAULT 0 COMMENT '店铺处理结果 -1 拒绝 0 处理中 1 同意',
  `shop_process_num` tinyint(1) NOT NULL DEFAULT 0 COMMENT '店铺驳回次数',
  `platform_process_time` int(11) NOT NULL DEFAULT 0 COMMENT '平台处理时间',
  `platform_result` tinyint(1) NOT NULL DEFAULT 0 COMMENT '平台处理结果 -1 拒绝 0 处理中 1 同意',
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '平台处理账号',
  `ip` bigint(20) NOT NULL DEFAULT 0 COMMENT '平台账号ip',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '退款处理状态 0 处理中 -1 买家已取消 1 已完成 ',
  `is_platform_interpose` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否平台介入 0 否 1 是',
  `system_process_time` int(11) NOT NULL DEFAULT 0 COMMENT '系统自动处理时间',
  `platform_interpose_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '申请平台介入的理由',
  `platform_interpose_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '申请平台介入的详细原因',
  `platform_interpose_thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '申请平台介入的图片举证',
  `reason_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文退款原因',
  `platform_interpose_reason_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '申请平台介入的英文理由',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid_orderid`(`uid`, `orderid`) USING BTREE,
  INDEX `orderid_shopuid`(`orderid`, `shop_uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_shop_order_refund_list
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_order_refund_list`;
CREATE TABLE `cmf_shop_order_refund_list`  (
  `orderid` bigint(11) NOT NULL DEFAULT 0 COMMENT '订单ID',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '处理方 1 买家 2 卖家 3 平台 4 系统',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '处理时间',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '处理说明',
  `handle_desc` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '处理备注说明',
  `refuse_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '卖家拒绝理由',
  `desc_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文处理说明',
  `refuse_reason_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文卖家拒绝理由'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_shop_platform_reason
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_platform_reason`;
CREATE TABLE `cmf_shop_platform_reason`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '原因名称',
  `list_order` int(11) NOT NULL DEFAULT 0 COMMENT '排序号',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态 0不显示 1 显示',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `edittime` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_platform_reason
-- ----------------------------
INSERT INTO `cmf_shop_platform_reason` VALUES (1, '卖家未履行约定', 1, 1, 1659597034, 0, 'The seller failed to fulfill the agreement');
INSERT INTO `cmf_shop_platform_reason` VALUES (2, '商品质量存在问题', 2, 1, 1659597034, 0, 'There are problems with product quality');
INSERT INTO `cmf_shop_platform_reason` VALUES (3, '卖家态度蛮横无理', 3, 1, 1659597034, 0, 'The seller\'s attitude is arrogant and unreasonable');
INSERT INTO `cmf_shop_platform_reason` VALUES (4, '其它', 4, 1, 1659597034, 0, 'Other');

-- ----------------------------
-- Table structure for cmf_shop_points
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_points`;
CREATE TABLE `cmf_shop_points`  (
  `shop_uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '店铺用户ID',
  `evaluate_total` bigint(20) NOT NULL DEFAULT 0 COMMENT '评价总数',
  `quality_points_total` int(11) NOT NULL DEFAULT 0 COMMENT '店铺商品质量(商品描述)总分',
  `service_points_total` int(11) NOT NULL DEFAULT 0 COMMENT '店铺服务态度总分',
  `express_points_total` int(11) NOT NULL DEFAULT 0 COMMENT '物流服务总分'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_shop_refund_reason
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_refund_reason`;
CREATE TABLE `cmf_shop_refund_reason`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '原因名称',
  `list_order` int(11) NOT NULL DEFAULT 0 COMMENT '排序号',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态 0不显示 1 显示',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `edittime` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_refund_reason
-- ----------------------------
INSERT INTO `cmf_shop_refund_reason` VALUES (1, '拍错/拍多/不想要了', 1, 1, 1659597034, 0, 'Wrong shot/too many shots/don’t want it anymore');
INSERT INTO `cmf_shop_refund_reason` VALUES (2, '卖家未按约定时间发货', 2, 1, 1659597034, 0, 'The seller failed to deliver the goods on time');
INSERT INTO `cmf_shop_refund_reason` VALUES (3, '其他', 4, 1, 1659597034, 0, 'Other');
INSERT INTO `cmf_shop_refund_reason` VALUES (4, '存在质量问题', 3, 1, 1659597034, 0, 'There are quality problems');
INSERT INTO `cmf_shop_refund_reason` VALUES (5, '7天无理由退款', 0, 1, 1659597034, 0, '7 days no reason refund');

-- ----------------------------
-- Table structure for cmf_shop_refuse_reason
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_refuse_reason`;
CREATE TABLE `cmf_shop_refuse_reason`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '原因名称',
  `list_order` int(11) NOT NULL DEFAULT 0 COMMENT '排序号',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态 0不显示 1 显示',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `edittime` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_refuse_reason
-- ----------------------------
INSERT INTO `cmf_shop_refuse_reason` VALUES (1, '买家未举证/举证无效', 1, 1, 1659597034, 0, 'The buyer failed to provide evidence/the evidence provided is invalid');
INSERT INTO `cmf_shop_refuse_reason` VALUES (2, '收到退货后再退款', 2, 1, 1659597034, 0, 'Refund after receiving return');
INSERT INTO `cmf_shop_refuse_reason` VALUES (3, '已发货,请买家承担运费', 3, 1, 1659597034, 0, 'Has been shipped, please pay the shipping fee.');
INSERT INTO `cmf_shop_refuse_reason` VALUES (4, '商品损坏', 0, 1, 1659597034, 1662169100, 'Product damaged');

-- ----------------------------
-- Table structure for cmf_slide
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '幻灯片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_slide
-- ----------------------------
INSERT INTO `cmf_slide` VALUES (1, 1, 0, 'PC首页轮播图', 'PC首页轮播图 不可删除');
INSERT INTO `cmf_slide` VALUES (2, 1, 0, 'APP首页轮播图', 'APP首页轮播图 不可删除');
INSERT INTO `cmf_slide` VALUES (5, 1, 0, 'APP商城轮播图', 'APP商城轮播图 不可删除');
INSERT INTO `cmf_slide` VALUES (6, 1, 0, 'H5首页轮播图', 'H5首页轮播图 不可删除');
INSERT INTO `cmf_slide` VALUES (7, 1, 0, 'PC下载页轮播图', 'PC导航点击APP进入页面的轮播图 无PC业务可删除 图片尺寸：585*680px');

-- ----------------------------
-- Table structure for cmf_slide_item
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide_item`;
CREATE TABLE `cmf_slide_item`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT 0 COMMENT '幻灯片id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '幻灯片内容',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `slide_id`(`slide_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '幻灯片子项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_theme
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme`;
CREATE TABLE `cmf_theme`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '安装时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后升级时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为已编译模板',
  `theme` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_theme
-- ----------------------------
INSERT INTO `cmf_theme` VALUES (1, 0, 0, 0, 0, 'default', 'default', '1.0.0', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF默认模板', 'ThinkCMF默认模板');

-- ----------------------------
-- Table structure for cmf_theme_file
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme_file`;
CREATE TABLE `cmf_theme_file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `theme` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_theme_file
-- ----------------------------
INSERT INTO `cmf_theme_file` VALUES (1, 0, 5, 'default', '首页', 'demo/Index/index', 'demo/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (2, 0, 5, 'default', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);

-- ----------------------------
-- Table structure for cmf_turntable
-- ----------------------------
DROP TABLE IF EXISTS `cmf_turntable`;
CREATE TABLE `cmf_turntable`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '类型，0无奖1钻石2礼物',
  `type_val` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型值',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片',
  `rate` decimal(10, 3) NOT NULL DEFAULT 0.000 COMMENT '中奖率',
  `uptime` bigint(20) NOT NULL DEFAULT 0 COMMENT '时间',
  `type_val_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '英文类型值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_turntable
-- ----------------------------
INSERT INTO `cmf_turntable` VALUES (1, 2, '17', '', 10.000, 1711953515, '');
INSERT INTO `cmf_turntable` VALUES (2, 1, '100', '', 40.000, 1711953506, '');
INSERT INTO `cmf_turntable` VALUES (3, 0, '0', '', 0.000, 1698127926, '');
INSERT INTO `cmf_turntable` VALUES (4, 1, '200', '', 10.000, 1709717976, '');
INSERT INTO `cmf_turntable` VALUES (5, 2, '26', '', 10.000, 1709717982, '');
INSERT INTO `cmf_turntable` VALUES (6, 2, '3', '', 10.000, 1709717990, '');
INSERT INTO `cmf_turntable` VALUES (7, 2, '6', '', 10.000, 1711953495, '');
INSERT INTO `cmf_turntable` VALUES (8, 3, '苹果15Plus一部', '', 100.000, 1711953691, 'Apple15Plus');

-- ----------------------------
-- Table structure for cmf_turntable_con
-- ----------------------------
DROP TABLE IF EXISTS `cmf_turntable_con`;
CREATE TABLE `cmf_turntable_con`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `times` int(11) NOT NULL DEFAULT 0 COMMENT '次数',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '价格',
  `list_order` int(11) NOT NULL DEFAULT 9999 COMMENT '序号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_turntable_con
-- ----------------------------
INSERT INTO `cmf_turntable_con` VALUES (1, 1, 12, 1);
INSERT INTO `cmf_turntable_con` VALUES (2, 5, 50, 2);
INSERT INTO `cmf_turntable_con` VALUES (3, 10, 100, 3);

-- ----------------------------
-- Table structure for cmf_turntable_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_turntable_log`;
CREATE TABLE `cmf_turntable_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `liveuid` bigint(20) NOT NULL DEFAULT 0 COMMENT '主播ID',
  `showid` bigint(20) NOT NULL DEFAULT 0 COMMENT '直播标识',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '价格',
  `nums` int(11) NOT NULL DEFAULT 0 COMMENT '数量',
  `addtime` bigint(20) NOT NULL DEFAULT 0 COMMENT '时间',
  `iswin` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否中奖',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_turntable_win
-- ----------------------------
DROP TABLE IF EXISTS `cmf_turntable_win`;
CREATE TABLE `cmf_turntable_win`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `logid` bigint(20) NOT NULL DEFAULT 0 COMMENT '转盘记录ID',
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '类型，0无奖1钻石2礼物',
  `type_val` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '类型值',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片',
  `nums` int(11) NOT NULL DEFAULT 0 COMMENT '数量',
  `addtime` bigint(20) NOT NULL DEFAULT 0 COMMENT '时间',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '处理状态，0未处理1已处理',
  `uptime` bigint(20) NOT NULL DEFAULT 0 COMMENT '处理时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user`;
CREATE TABLE `cmf_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT 0 COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT 0 COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `score` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户积分',
  `coin` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '金币',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '注册时间',
  `user_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户状态;0:禁用,1:正常,3:已注销',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  `avatar_thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '小头像',
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展属性',
  `consumption` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '消费总额',
  `votes` decimal(20, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '映票余额',
  `votestotal` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '映票总额',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '省份',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '城市',
  `isrecommend` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 未推荐 1 推荐',
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '三方标识',
  `login_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'phone' COMMENT '注册方式',
  `iszombie` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否开启僵尸粉',
  `isrecord` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否开起回放',
  `iszombiep` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否僵尸粉',
  `issuper` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否超管',
  `ishot` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否热门显示',
  `goodnum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '当前装备靓号',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pc' COMMENT '注册来源',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '个人中心设置所在地',
  `end_bantime` bigint(20) NOT NULL DEFAULT 0 COMMENT '禁用到期时间',
  `balance` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '用户商城人民币账户金额',
  `balance_total` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '用户商城累计收入人民币',
  `balance_consumption` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '用户商城累计消费人民币',
  `recommend_time` int(1) NOT NULL DEFAULT 0 COMMENT '推荐时间',
  `country_code` int(11) NOT NULL DEFAULT 86 COMMENT '国家代号',
  `is_ad` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否为广告视频发布者 0 否 1 是',
  `firstcharge_used` tinyint(1) NOT NULL DEFAULT 0 COMMENT '首充是否已经使用 0 否 1 是',
  `praise_num` int(11) NOT NULL DEFAULT 0 COMMENT '视频总点赞数',
  `bg_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '背景图片地址',
  `live_window` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否开启直播小窗 0 否 1 是',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_login`(`user_login`) USING BTREE,
  INDEX `user_nicename`(`user_nickname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user
-- ----------------------------
INSERT INTO `cmf_user` VALUES (1, 1, 0, -28800, 1712712927, 0, 0, 1571800517, 1, 'admin', '###66bc82ebde1af7c7a129adf2a2eb4f57', 'admin', 'admin@163.com', '', '/default.jpg', '/default_thumb.jpg', '', '124.130.165.27', '', '', NULL, 0, 15.00, 15, '', '', 0, '', 'phone', 0, 0, 0, 0, 1, '0', 'pc', '', 0, 15427.20, 15427.20, 0.00, 0, 86, 0, 0, 0, '/default.jpg', 0);

-- ----------------------------
-- Table structure for cmf_user_action
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action`;
CREATE TABLE `cmf_user_action`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT 0 COMMENT '奖励次数',
  `cycle_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '周期时间值',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '执行操作的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户操作表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user_action
-- ----------------------------
INSERT INTO `cmf_user_action` VALUES (1, 0, 0, 0, 2, 1, '用户登录', 'login', 'user', '');

-- ----------------------------
-- Table structure for cmf_user_action_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action_log`;
CREATE TABLE `cmf_user_action_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '访问次数',
  `last_visit_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后访问时间',
  `object` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_object_action`(`user_id`, `object`, `action`) USING BTREE,
  INDEX `user_object_action_ip`(`user_id`, `object`, `action`, `ip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '访问记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_attention
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_attention`;
CREATE TABLE `cmf_user_attention`  (
  `uid` int(12) NOT NULL COMMENT '用户ID',
  `touid` int(12) NOT NULL COMMENT '关注人ID',
  `addtime` int(12) NOT NULL DEFAULT 0 COMMENT '时间',
  INDEX `uid_touid_index`(`uid`, `touid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_attention_messages
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_attention_messages`;
CREATE TABLE `cmf_user_attention_messages`  (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `uid` int(12) NOT NULL,
  `touid` int(12) NOT NULL DEFAULT 0 COMMENT '被关注用户ID',
  `addtime` int(12) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cmf_user_auth
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_auth`;
CREATE TABLE `cmf_user_auth`  (
  `uid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `real_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '电话',
  `cer_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '身份证号',
  `front_view` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '正面',
  `back_view` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '反面',
  `handset_view` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '手持',
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '审核说明',
  `addtime` int(12) NOT NULL DEFAULT 0 COMMENT '提交时间',
  `uptime` int(12) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态 0 处理中 1 成功 2 失败',
  `reason_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '英文说明',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_balance_cashrecord
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_balance_cashrecord`;
CREATE TABLE `cmf_user_balance_cashrecord`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `money` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '提现金额',
  `orderno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `trade_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '三方订单号',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态，0审核中，1审核通过，2审核拒绝',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '申请时间',
  `uptime` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '账号类型 1 支付宝 2 微信 3 银行卡',
  `account_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '银行名称',
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '帐号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_balance_record
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_balance_record`;
CREATE TABLE `cmf_user_balance_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL COMMENT '用户id',
  `touid` bigint(20) NOT NULL COMMENT '对方用户id',
  `balance` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '操作的余额数',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '收支类型,0支出1收入',
  `action` tinyint(1) NOT NULL DEFAULT 0 COMMENT '收支行为 1 买家使用余额付款 2 系统自动结算货款给卖家  3 卖家超时未发货,退款给买家 4 买家发起退款，卖家超时未处理,系统自动退款 5买家发起退款，卖家同意 6 买家发起退款，平台介入后同意 7 用户使用余额购买付费项目  8 付费项目收入 9 代售平台商品佣金 10 分享商品给其他用户购买后获得佣金',
  `orderid` bigint(20) NOT NULL DEFAULT 0 COMMENT '对应的订单ID',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_banrecord
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_banrecord`;
CREATE TABLE `cmf_user_banrecord`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ban_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '被禁用原因',
  `ban_long` int(10) NULL DEFAULT 0 COMMENT '用户禁用时长：单位：分钟',
  `uid` int(10) NULL DEFAULT 0 COMMENT '禁用 用户ID',
  `addtime` int(10) NULL DEFAULT 0 COMMENT '提交时间',
  `end_time` int(10) NULL DEFAULT 0 COMMENT '禁用到期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_beauty_params
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_beauty_params`;
CREATE TABLE `cmf_user_beauty_params`  (
  `uid` bigint(20) NOT NULL COMMENT '用户id',
  `params` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '美颜参数json字符串',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_black
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_black`;
CREATE TABLE `cmf_user_black`  (
  `uid` int(12) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `touid` int(12) NOT NULL DEFAULT 0 COMMENT '被拉黑人ID',
  INDEX `uid_touid_index`(`uid`, `touid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_coinrecord
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_coinrecord`;
CREATE TABLE `cmf_user_coinrecord`  (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '收支类型,0支出1收入',
  `action` tinyint(1) NOT NULL DEFAULT 0 COMMENT '收支行为，1赠送礼物,2弹幕,3登录奖励,4购买VIP,5购买坐骑,6房间扣费,7计时扣费,8发送红包,9抢红包,10开通守护,11注册奖励,12礼物中奖,13奖池中奖,14缴纳保证金,15退还保证金,16转盘游戏,17转盘中奖,18购买靓号,19游戏下注,20游戏退还,21每日任务奖励',
  `uid` int(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `touid` int(20) NOT NULL DEFAULT 0 COMMENT '对方ID',
  `giftid` int(20) NOT NULL DEFAULT 0 COMMENT '行为对应ID',
  `giftcount` int(20) NOT NULL DEFAULT 0 COMMENT '数量',
  `totalcoin` int(20) NOT NULL DEFAULT 0 COMMENT '总价',
  `showid` int(12) NOT NULL DEFAULT 0 COMMENT '直播标识',
  `addtime` int(12) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `mark` tinyint(1) NOT NULL DEFAULT 0 COMMENT '标识，1表示热门礼物，2表示守护礼物',
  `ispack` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否为背包礼物 0 否 1 是',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `action_uid_addtime`(`action`, `uid`, `addtime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_daily_tasks
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_daily_tasks`;
CREATE TABLE `cmf_user_daily_tasks`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(12) NOT NULL DEFAULT 0 COMMENT '用户uid',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '任务类型 1观看直播, 2观看视频, 3直播奖励, 4打赏奖励, 5分享奖励',
  `target` int(11) NOT NULL DEFAULT 0 COMMENT '目标(单位为分钟)',
  `schedule` int(11) NOT NULL DEFAULT 0 COMMENT '当前进度(时间计算的都是以秒为单位记录)',
  `reward` int(5) NOT NULL DEFAULT 0 COMMENT '奖励钻石数量',
  `addtime` int(12) NOT NULL DEFAULT 0 COMMENT '生成时间',
  `uptime` int(12) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态 0未达成  1可领取  2已领取',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`, `type`) USING BTREE,
  INDEX `uid_2`(`uid`) USING BTREE,
  INDEX `uid_3`(`uid`, `type`, `addtime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '每日任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_goods_collect
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_goods_collect`;
CREATE TABLE `cmf_user_goods_collect`  (
  `uid` int(12) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `goodsid` int(12) NOT NULL COMMENT '商品id',
  `goodsuid` int(12) NOT NULL COMMENT '商品所有者用户id',
  `addtime` int(12) NOT NULL COMMENT '时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_goods_visit
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_goods_visit`;
CREATE TABLE `cmf_user_goods_visit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `uid` bigint(11) NOT NULL DEFAULT 0 COMMENT '用户id',
  `goodsid` int(11) NOT NULL DEFAULT 0 COMMENT '商品id',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `time_format` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_like
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_like`;
CREATE TABLE `cmf_user_like`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户 id',
  `object_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '内容原来的主键id',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '内容以前所在表,不带前缀',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '内容的原文地址，不带域名',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '内容的标题',
  `thumbnail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容的描述',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户点赞表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_score_log`;
CREATE TABLE `cmf_user_score_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户操作积分等奖励日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_scorerecord
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_scorerecord`;
CREATE TABLE `cmf_user_scorerecord`  (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '收支类型,0支出1收入',
  `action` tinyint(1) NOT NULL DEFAULT 0 COMMENT '收支行为，4购买VIP,5购买坐骑,18购买靓号,21游戏获胜,22 首充送积分',
  `uid` int(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `touid` int(20) NOT NULL DEFAULT 0 COMMENT '对方ID',
  `giftid` int(20) NOT NULL DEFAULT 0 COMMENT '行为对应ID',
  `giftcount` int(20) NOT NULL DEFAULT 0 COMMENT '数量',
  `totalcoin` int(20) NOT NULL DEFAULT 0 COMMENT '总价',
  `showid` int(12) NOT NULL DEFAULT 0 COMMENT '直播标识',
  `addtime` int(12) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `game_action` tinyint(1) NOT NULL DEFAULT 0 COMMENT '游戏类型',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `action_uid_addtime`(`action`, `uid`, `addtime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_sign
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_sign`;
CREATE TABLE `cmf_user_sign`  (
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `bonus_day` int(11) NOT NULL DEFAULT 0 COMMENT '登录天数',
  `bonus_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `count_day` int(11) NOT NULL DEFAULT 0 COMMENT '连续登陆天数',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_super
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_super`;
CREATE TABLE `cmf_user_super`  (
  `uid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '时间',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_teenager
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_teenager`;
CREATE TABLE `cmf_user_teenager`  (
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户id',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '青少年模式密码',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态 0 关闭 1 开启',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `edittime` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_teenager_time
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_teenager_time`;
CREATE TABLE `cmf_user_teenager_time`  (
  `uid` int(11) NOT NULL,
  `length` int(11) NOT NULL DEFAULT 0,
  `addtime` int(11) NOT NULL DEFAULT 0,
  `uptime` int(11) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_token
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户id',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT ' 过期时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户客户端登录 token 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_voterecord
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_voterecord`;
CREATE TABLE `cmf_user_voterecord`  (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '收支类型,0支出，1收入',
  `action` tinyint(1) NOT NULL DEFAULT 0 COMMENT '收支行为,1收礼物2弹幕3分销收益4家族长收益6房间收费7计时收费10守护',
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `fromid` bigint(20) NOT NULL DEFAULT 0 COMMENT '来源用户ID',
  `actionid` bigint(20) NOT NULL DEFAULT 0 COMMENT '行为对应ID',
  `nums` bigint(20) NOT NULL DEFAULT 0 COMMENT '数量',
  `total` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '总价',
  `showid` bigint(20) NOT NULL DEFAULT 0 COMMENT '直播标识',
  `votes` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '收益映票',
  `addtime` bigint(20) NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `action_uid_addtime`(`action`, `uid`, `addtime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_zombie
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_zombie`;
CREATE TABLE `cmf_user_zombie`  (
  `uid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_verification_code
-- ----------------------------
DROP TABLE IF EXISTS `cmf_verification_code`;
CREATE TABLE `cmf_verification_code`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当天已经发送成功的次数',
  `send_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后发送成功时间',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '手机邮箱数字验证码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_video
-- ----------------------------
DROP TABLE IF EXISTS `cmf_video`;
CREATE TABLE `cmf_video`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '封面图片',
  `thumb_s` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '封面小图',
  `href` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '视频地址',
  `href_w` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '水印视频',
  `likes` int(11) NOT NULL DEFAULT 0 COMMENT '点赞数',
  `views` int(11) NOT NULL DEFAULT 1 COMMENT '浏览数（涉及到推荐排序机制，所以默认为1）',
  `comments` int(11) NOT NULL DEFAULT 0 COMMENT '评论数',
  `steps` int(11) NOT NULL DEFAULT 0 COMMENT '踩总数',
  `shares` int(11) NOT NULL DEFAULT 0 COMMENT '分享数量',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '发布时间',
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '维度',
  `lng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '经度',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '城市',
  `isdel` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除 1删除（下架）0不下架',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '视频状态 0未审核 1通过 2拒绝',
  `music_id` int(12) NOT NULL DEFAULT 0 COMMENT '背景音乐ID',
  `xiajia_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '下架原因',
  `nopass_time` int(12) NOT NULL DEFAULT 0 COMMENT '审核不通过时间（第一次审核不通过时更改此值，用于判断是否发送极光IM）',
  `watch_ok` int(12) NOT NULL DEFAULT 1 COMMENT '视频完整看完次数(涉及到推荐排序机制，所以默认为1)',
  `is_ad` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否为广告视频 0 否 1 是',
  `ad_endtime` int(12) NOT NULL DEFAULT 0 COMMENT '广告显示到期时间',
  `ad_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '广告外链',
  `orderno` int(12) NOT NULL DEFAULT 0 COMMENT '权重值，数字越大越靠前',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '视频绑定类型 0 未绑定 1 商品  2 付费内容',
  `goodsid` bigint(20) NOT NULL DEFAULT 0 COMMENT '商品ID',
  `classid` int(11) NOT NULL DEFAULT 0 COMMENT '分类ID',
  `anyway` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1.1' COMMENT '横竖屏(封面-高/宽)，大于1表示竖屏,小于1表示横屏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_video_black
-- ----------------------------
DROP TABLE IF EXISTS `cmf_video_black`;
CREATE TABLE `cmf_video_black`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `videoid` int(10) NOT NULL DEFAULT 0 COMMENT '视频ID',
  `addtime` int(10) NOT NULL DEFAULT 0 COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_video_class
-- ----------------------------
DROP TABLE IF EXISTS `cmf_video_class`;
CREATE TABLE `cmf_video_class`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类名',
  `list_order` int(11) NOT NULL DEFAULT 9999 COMMENT '序号',
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_video_class
-- ----------------------------
INSERT INTO `cmf_video_class` VALUES (1, '美食', 2, 'Gourmet food');
INSERT INTO `cmf_video_class` VALUES (2, '旅行', 3, 'Travel');
INSERT INTO `cmf_video_class` VALUES (3, '摄影', 4, 'Photography');
INSERT INTO `cmf_video_class` VALUES (4, '穿搭', 5, 'Outfit');
INSERT INTO `cmf_video_class` VALUES (5, '美妆', 1, 'Makeups');
INSERT INTO `cmf_video_class` VALUES (6, '宠物', 0, 'Pet');
INSERT INTO `cmf_video_class` VALUES (7, '搞笑', 6, 'Funny');

-- ----------------------------
-- Table structure for cmf_video_comments
-- ----------------------------
DROP TABLE IF EXISTS `cmf_video_comments`;
CREATE TABLE `cmf_video_comments`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT 0 COMMENT '评论用户ID',
  `touid` int(10) NOT NULL DEFAULT 0 COMMENT '被评论的用户ID',
  `videoid` int(10) NOT NULL DEFAULT 0 COMMENT '视频ID',
  `commentid` int(10) NOT NULL DEFAULT 0 COMMENT '所属评论ID',
  `parentid` int(10) NOT NULL DEFAULT 0 COMMENT '上级评论ID',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '评论内容',
  `likes` int(11) NOT NULL DEFAULT 0 COMMENT '点赞数',
  `addtime` int(10) NOT NULL DEFAULT 0 COMMENT '时间',
  `at_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '评论时被@用户的信息（json串）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_video_comments_at_messages
-- ----------------------------
DROP TABLE IF EXISTS `cmf_video_comments_at_messages`;
CREATE TABLE `cmf_video_comments_at_messages`  (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `uid` int(12) NOT NULL DEFAULT 0 COMMENT '用户id',
  `videoid` int(12) NOT NULL DEFAULT 0 COMMENT '视频id',
  `touid` int(12) NOT NULL DEFAULT 0 COMMENT '被@的用户id',
  `addtime` int(12) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否显示 0否 1 是  （根据视频是否下架决定）',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '消息类型 0视频评论@用户 1 帮他人视频上热门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cmf_video_comments_like
-- ----------------------------
DROP TABLE IF EXISTS `cmf_video_comments_like`;
CREATE TABLE `cmf_video_comments_like`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `commentid` int(10) NOT NULL DEFAULT 0 COMMENT '评论ID',
  `addtime` int(10) NOT NULL DEFAULT 0 COMMENT '时间',
  `touid` int(12) NOT NULL DEFAULT 0 COMMENT '被喜欢的评论者id',
  `videoid` int(12) NOT NULL DEFAULT 0 COMMENT '评论所属视频id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_video_comments_messages
-- ----------------------------
DROP TABLE IF EXISTS `cmf_video_comments_messages`;
CREATE TABLE `cmf_video_comments_messages`  (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `uid` int(12) NOT NULL DEFAULT 0 COMMENT '用户id',
  `videoid` int(12) NOT NULL DEFAULT 0 COMMENT '视频id',
  `touid` int(12) NOT NULL DEFAULT 0 COMMENT '被@的用户id',
  `addtime` int(12) NOT NULL DEFAULT 0,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '评论内容',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否显示 0否 1 是  （根据视频是否下架决定）',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '评论消息的类型 0 对视频的评论 1 对评论内容的评论/回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cmf_video_like
-- ----------------------------
DROP TABLE IF EXISTS `cmf_video_like`;
CREATE TABLE `cmf_video_like`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `videoid` int(10) NOT NULL DEFAULT 0 COMMENT '视频ID',
  `addtime` int(10) NOT NULL DEFAULT 0 COMMENT '时间',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '视频是否被删除或被拒绝 0被删除或被拒绝 1 正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_video_report
-- ----------------------------
DROP TABLE IF EXISTS `cmf_video_report`;
CREATE TABLE `cmf_video_report`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `touid` int(11) NOT NULL DEFAULT 0 COMMENT '被举报用户ID',
  `videoid` int(11) NOT NULL DEFAULT 0 COMMENT '视频ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '内容',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0处理中 1已处理  2审核失败',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '提交时间',
  `uptime` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_video_report_classify
-- ----------------------------
DROP TABLE IF EXISTS `cmf_video_report_classify`;
CREATE TABLE `cmf_video_report_classify`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `list_order` int(10) NOT NULL DEFAULT 9999 COMMENT '排序',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '举报类型名称',
  `addtime` int(10) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_video_report_classify
-- ----------------------------
INSERT INTO `cmf_video_report_classify` VALUES (1, 0, '骗取点击', 1659597034, 'defraud clicks');
INSERT INTO `cmf_video_report_classify` VALUES (2, 0, '低俗色情', 1659597034, 'Vulgar porn');
INSERT INTO `cmf_video_report_classify` VALUES (3, 0, '侮辱谩骂', 1659597034, 'Insult and abuse');
INSERT INTO `cmf_video_report_classify` VALUES (4, 0, '盗用他人作品', 1659597034, 'Misappropriation of other people\'s works');
INSERT INTO `cmf_video_report_classify` VALUES (5, 0, '引人不适', 1659597034, 'causing discomfort');
INSERT INTO `cmf_video_report_classify` VALUES (6, 0, '任性打抱不平，就爱举报', 1659597034, 'Willfully fight against injustice and love to report it');
INSERT INTO `cmf_video_report_classify` VALUES (7, 0, '其他', 1659597034, 'other');

-- ----------------------------
-- Table structure for cmf_video_view
-- ----------------------------
DROP TABLE IF EXISTS `cmf_video_view`;
CREATE TABLE `cmf_video_view`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `videoid` int(10) NOT NULL DEFAULT 0 COMMENT '视频ID',
  `addtime` int(10) NOT NULL DEFAULT 0 COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_vip
-- ----------------------------
DROP TABLE IF EXISTS `cmf_vip`;
CREATE TABLE `cmf_vip`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '价格',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `length` int(11) NOT NULL DEFAULT 1 COMMENT '时长（月）',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '积分价格',
  `list_order` int(11) NOT NULL DEFAULT 9999 COMMENT '序号',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_vip
-- ----------------------------
INSERT INTO `cmf_vip` VALUES (1, 100, 'VIP1', 1, 100, 3, 1659597034);
INSERT INTO `cmf_vip` VALUES (2, 300, 'vip3', 3, 300, 2, 1659597034);
INSERT INTO `cmf_vip` VALUES (3, 100, 'vip6', 6, 10, 1, 1659597034);

-- ----------------------------
-- Table structure for cmf_vip_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_vip_user`;
CREATE TABLE `cmf_vip_user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `addtime` int(10) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `endtime` int(10) NOT NULL DEFAULT 0 COMMENT '到期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_voicelive_applymic
-- ----------------------------
DROP TABLE IF EXISTS `cmf_voicelive_applymic`;
CREATE TABLE `cmf_voicelive_applymic`  (
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户id',
  `liveuid` bigint(20) NOT NULL DEFAULT 0 COMMENT '主播ID',
  `stream` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '流名',
  `index` tinyint(1) NOT NULL DEFAULT 0 COMMENT '申请麦位（待用）',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '申请上麦时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_voicelive_mic
-- ----------------------------
DROP TABLE IF EXISTS `cmf_voicelive_mic`;
CREATE TABLE `cmf_voicelive_mic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `liveuid` bigint(20) NOT NULL DEFAULT 0 COMMENT '主播ID',
  `live_stream` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '主播房间流名',
  `stream` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户连麦的流名',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '麦位状态 -1 关麦；  0无人； 1开麦 ； 2 禁麦；',
  `mic_closeuid` bigint(20) NOT NULL DEFAULT 0 COMMENT '关麦用户ID【主播或当前麦位用户自己】',
  `position` tinyint(1) NOT NULL DEFAULT -1 COMMENT '麦序 0代表第一个 以此类推',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '上麦时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_xqtb_gift
-- ----------------------------
DROP TABLE IF EXISTS `cmf_xqtb_gift`;
CREATE TABLE `cmf_xqtb_gift`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '奖品类型 0 钻石 1 礼物',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '奖励钻石数',
  `giftid` int(11) NOT NULL DEFAULT 0 COMMENT '礼物id',
  `gift_num` int(11) NOT NULL DEFAULT 0 COMMENT '礼物数量',
  `show_win_prob` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '展示中奖概率区间值',
  `real_win_mwx` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '冥王星实际中奖概率',
  `real_win_twx` decimal(11, 2) NOT NULL COMMENT '天王星实际中奖概率',
  `real_win_hwx` decimal(11, 2) NOT NULL COMMENT '海王星实际中奖概率',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `edittime` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `list_order` int(11) NOT NULL DEFAULT 0 COMMENT '排序号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_xqtb_gift
-- ----------------------------
INSERT INTO `cmf_xqtb_gift` VALUES (1, 0, 10, 0, 0, '6-8', 8.00, 6.00, 6.00, 1673682669, 1678789853, 1);
INSERT INTO `cmf_xqtb_gift` VALUES (2, 0, 20, 0, 0, '4.5-6', 6.00, 5.00, 4.50, 1673682947, 1678520442, 2);
INSERT INTO `cmf_xqtb_gift` VALUES (3, 0, 30, 0, 0, '3.2-4', 4.00, 3.50, 3.20, 1673682981, 1678520469, 4);
INSERT INTO `cmf_xqtb_gift` VALUES (4, 1, 0, 74, 2, '30-43', 30.00, 33.00, 43.00, 1673683159, 1678520486, 5);
INSERT INTO `cmf_xqtb_gift` VALUES (5, 1, 0, 2, 1, '1-1.5', 1.50, 1.18, 1.00, 1673684399, 1678520531, 8);
INSERT INTO `cmf_xqtb_gift` VALUES (6, 1, 0, 6, 1, '0.28-0.57', 0.50, 0.32, 0.28, 1673684594, 1678850835, 0);
INSERT INTO `cmf_xqtb_gift` VALUES (7, 1, 0, 21, 2, '33-43', 40.00, 43.00, 33.00, 1673684664, 1678520499, 6);
INSERT INTO `cmf_xqtb_gift` VALUES (8, 1, 0, 28, 1, '2-4.02', 2.00, 2.00, 4.02, 1673684939, 1678520516, 7);
INSERT INTO `cmf_xqtb_gift` VALUES (9, 1, 0, 16, 1, '5-8', 8.00, 6.00, 5.00, 1673685185, 1678520456, 3);

-- ----------------------------
-- Table structure for cmf_xqtb_total
-- ----------------------------
DROP TABLE IF EXISTS `cmf_xqtb_total`;
CREATE TABLE `cmf_xqtb_total`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户id',
  `total` bigint(20) NOT NULL DEFAULT 0 COMMENT '中奖总价值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_xqtb_win_list
-- ----------------------------
DROP TABLE IF EXISTS `cmf_xqtb_win_list`;
CREATE TABLE `cmf_xqtb_win_list`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户id',
  `liveuid` int(11) NOT NULL DEFAULT 0 COMMENT '主播id',
  `stream` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '流名',
  `star_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '星球类型 mwx 冥王星 twx 天王星 hwx 海王星 ',
  `spend_coin` int(11) NOT NULL DEFAULT 0 COMMENT '花费钻石数',
  `win_coin` int(11) NOT NULL DEFAULT 0 COMMENT '中奖礼物总价值',
  `nums` int(11) NOT NULL DEFAULT 0 COMMENT '寻宝次数 1 / 10 / 50',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `gift_list` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '中奖礼物json字符串',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_xydzp_gift
-- ----------------------------
DROP TABLE IF EXISTS `cmf_xydzp_gift`;
CREATE TABLE `cmf_xydzp_gift`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '奖品类型 0 钻石 1 礼物',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '奖励钻石数',
  `giftid` int(11) NOT NULL DEFAULT 0 COMMENT '礼物id',
  `gift_num` int(11) NOT NULL DEFAULT 0 COMMENT '礼物数量',
  `show_win_prob` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '展示中奖概率区间值',
  `real_win_one` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '单击实际中奖概率',
  `real_win_ten` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '10连击实际中奖概率',
  `real_win_hundred` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '100连击实际中奖概率',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `edittime` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `list_order` int(11) NOT NULL DEFAULT 0 COMMENT '排序号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_xydzp_gift
-- ----------------------------
INSERT INTO `cmf_xydzp_gift` VALUES (1, 1, 0, 11, 20, '40-42', 40.00, 40.00, 42.00, 1673682669, 1678689165, 2);
INSERT INTO `cmf_xydzp_gift` VALUES (2, 0, 25, 0, 0, '20-25', 20.00, 25.00, 20.00, 1673682947, 1678519107, 1);
INSERT INTO `cmf_xydzp_gift` VALUES (3, 0, 35, 0, 0, '13-15', 15.00, 15.00, 13.00, 1673682981, 1678519118, 4);
INSERT INTO `cmf_xydzp_gift` VALUES (4, 1, 0, 12, 2, '10', 10.00, 10.00, 10.00, 1673683159, 1678519174, 5);
INSERT INTO `cmf_xydzp_gift` VALUES (5, 1, 0, 118, 1, '1.5-5', 5.00, 1.50, 2.50, 1673684399, 1696832705, 8);
INSERT INTO `cmf_xydzp_gift` VALUES (6, 1, 0, 1, 1, '0.5-2', 1.00, 0.50, 0.50, 1673684594, 1678858718, 0);
INSERT INTO `cmf_xydzp_gift` VALUES (7, 1, 0, 22, 2, '5-7', 7.00, 5.00, 7.00, 1673684664, 1678519186, 6);
INSERT INTO `cmf_xydzp_gift` VALUES (8, 1, 0, 4, 1, '2-5', 2.00, 3.00, 5.00, 1673684939, 1678519196, 7);

-- ----------------------------
-- Table structure for cmf_xydzp_total
-- ----------------------------
DROP TABLE IF EXISTS `cmf_xydzp_total`;
CREATE TABLE `cmf_xydzp_total`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户id',
  `total` bigint(20) NOT NULL DEFAULT 0 COMMENT '中奖总价值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_xydzp_win_list
-- ----------------------------
DROP TABLE IF EXISTS `cmf_xydzp_win_list`;
CREATE TABLE `cmf_xydzp_win_list`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户id',
  `liveuid` int(11) NOT NULL DEFAULT 0 COMMENT '主播id',
  `stream` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '流名',
  `btn_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '点击类型 one 单击 ten 10连击 hundred 100连击 ',
  `spend_coin` int(11) NOT NULL DEFAULT 0 COMMENT '花费钻石数',
  `win_coin` int(11) NOT NULL DEFAULT 0 COMMENT '中奖礼物总价值',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `gift_list` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '中奖礼物json字符串',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Function structure for getDistance
-- ----------------------------
DROP FUNCTION IF EXISTS `getDistance`;
delimiter ;;
CREATE FUNCTION `getDistance`(lat1 FLOAT, lon1 FLOAT, lat2 FLOAT, lon2 FLOAT)
 RETURNS float
  DETERMINISTIC
BEGIN
    RETURN ROUND(6378.138 * 2 * ASIN(SQRT(POW(SIN((lat1 * PI() / 180 - lat2 * PI() / 180) / 2), 2)
           + COS(lat1 * PI() / 180) * COS(lat2 * PI() / 180)
           * POW(SIN(( lon1 * PI() / 180 - lon2 * PI() / 180 ) / 2),2))),2);
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
