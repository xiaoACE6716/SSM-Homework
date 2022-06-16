/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306_root
 Source Server Type    : MySQL
 Source Server Version : 100316
 Source Host           : localhost:3306
 Source Schema         : ssm_project

 Target Server Type    : MySQL
 Target Server Version : 100316
 File Encoding         : 65001

 Date: 16/06/2022 17:25:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色昵称',
  `information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'xiaoACE', '系统的开发者');
INSERT INTO `sys_role` VALUES (2, '管理员', '系统的管理员');
INSERT INTO `sys_role` VALUES (3, '老板', ' ');
INSERT INTO `sys_role` VALUES (4, '员工', ' ');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号名称',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户性别（0男 1女 2未知）',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `user_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户类型（0普通用户 1管理员用户）',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'admin01', 'admin', '1', '15888888888', 'admin01@test.com', '0', '0', '1');
INSERT INTO `sys_user` VALUES (2, 'xiaoACE', 'xiaoACE', 'xiaoACE', '0', '13800000000', 'xiaoACE@test.com', '0', '0', '1');
INSERT INTO `sys_user` VALUES (3, 'zhangsan', '张三', 'zhangsan', '0', '12345678910', 'zhangsan@test.com', '0', '0', '0');
INSERT INTO `sys_user` VALUES (4, 'lisi', '李四', 'sili', '0', '19876543210', 'lisi@test.com', '0', '0', '0');
INSERT INTO `sys_user` VALUES (5, 'wangwu', '王五', 'wangwu', '1', '12312312312', 'wangwu@test.com', '0', '1', '0');
INSERT INTO `sys_user` VALUES (6, 'dawangba', '大王八', 'test', '0', NULL, NULL, '0', '0', '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 2);
INSERT INTO `sys_user_role` VALUES (2, 1);
INSERT INTO `sys_user_role` VALUES (3, 3);
INSERT INTO `sys_user_role` VALUES (4, 4);
INSERT INTO `sys_user_role` VALUES (5, 4);

SET FOREIGN_KEY_CHECKS = 1;
