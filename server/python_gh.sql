/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_gh

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 09/06/2024 15:18:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1717902315951.jpeg', 'https://www.gitapp.cn', '2024-06-09 11:05:20.105405');
INSERT INTO `b_ad` VALUES (2, 'ad/1717902334269.jpeg', 'https://www.csdn.net', '2024-06-09 11:05:46.838499');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '泌尿外科', '2024-06-08 21:29:56.771524');
INSERT INTO `b_classification` VALUES (2, '耳鼻喉科', '2024-06-08 21:30:04.389001');
INSERT INTO `b_classification` VALUES (3, '肛肠科', '2024-06-08 21:30:09.963539');
INSERT INTO `b_classification` VALUES (4, '内分泌科', '2024-06-08 21:30:22.204754');
INSERT INTO `b_classification` VALUES (5, '肾内科', '2024-06-08 21:30:39.791376');
INSERT INTO `b_classification` VALUES (6, '心血管内科', '2024-06-08 21:30:47.122119');
INSERT INTO `b_classification` VALUES (7, '普通外科', '2024-06-08 21:30:55.327503');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '1111', '2024-06-09 10:16:54.386855', 1, 12, 2);
INSERT INTO `b_comment` VALUES (2, '333', '2024-06-09 11:00:24.126415', 0, 12, 2);
INSERT INTO `b_comment` VALUES (3, '啊啊啊啊', '2024-06-09 11:00:26.518729', 0, 12, 2);
INSERT INTO `b_comment` VALUES (4, '顶顶顶', '2024-06-09 11:00:46.243254', 0, 12, 2);
INSERT INTO `b_comment` VALUES (5, 'ssdfa', '2024-06-09 11:00:54.536595', 0, 11, 2);
INSERT INTO `b_comment` VALUES (6, 'ddd', '2024-06-09 11:00:56.074520', 0, 11, 2);
INSERT INTO `b_comment` VALUES (7, 'ff', '2024-06-09 11:00:57.289971', 0, 11, 2);
INSERT INTO `b_comment` VALUES (8, 'ff', '2024-06-09 11:00:58.514623', 0, 11, 2);
INSERT INTO `b_comment` VALUES (9, 'ddd', '2024-06-09 11:00:59.640899', 0, 11, 2);
INSERT INTO `b_comment` VALUES (10, '333', '2024-06-09 11:01:01.093492', 0, 11, 2);
INSERT INTO `b_comment` VALUES (11, 'as', '2024-06-09 11:01:07.830947', 0, 11, 2);
INSERT INTO `b_comment` VALUES (12, 'fd', '2024-06-09 11:01:09.614806', 0, 11, 2);
INSERT INTO `b_comment` VALUES (13, 'dff', '2024-06-09 11:01:11.121516', 0, 11, 2);
INSERT INTO `b_comment` VALUES (14, 'sss', '2024-06-09 11:01:12.942408', 0, 11, 2);
INSERT INTO `b_comment` VALUES (15, 'dd', '2024-06-09 11:01:14.270180', 0, 11, 2);
INSERT INTO `b_comment` VALUES (16, 'dsss', '2024-06-09 11:01:20.439081', 0, 10, 2);
INSERT INTO `b_comment` VALUES (17, 'fff', '2024-06-09 11:01:21.533002', 0, 10, 2);
INSERT INTO `b_comment` VALUES (18, 'dssf', '2024-06-09 11:01:27.828318', 0, 9, 2);
INSERT INTO `b_comment` VALUES (19, 'dss', '2024-06-09 11:01:34.547737', 0, 7, 2);
INSERT INTO `b_comment` VALUES (20, 'daas', '2024-06-09 11:01:39.925592', 0, 5, 2);
INSERT INTO `b_comment` VALUES (21, 'dssd', '2024-06-09 11:01:45.984355', 0, 4, 2);
INSERT INTO `b_comment` VALUES (22, 'fd', '2024-06-09 11:01:47.350301', 0, 4, 2);
INSERT INTO `b_comment` VALUES (23, 'sddf', '2024-06-09 11:01:52.974322', 0, 2, 2);
INSERT INTO `b_comment` VALUES (24, '3333', '2024-06-09 11:01:58.851872', 0, 3, 2);
INSERT INTO `b_comment` VALUES (25, 'dsas', '2024-06-09 11:02:05.232715', 0, 1, 2);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------
INSERT INTO `b_error_log` VALUES (1, '127.0.0.1', '/myapp/admin/thing/update', 'POST', '参数错误', '2024-06-08 21:42:22.740590');
INSERT INTO `b_error_log` VALUES (2, '127.0.0.1', '/myapp/admin/thing/update', 'POST', '参数错误', '2024-06-08 21:45:45.898601');
INSERT INTO `b_error_log` VALUES (3, '127.0.0.1', '/myapp/admin/thing/update', 'POST', '参数错误', '2024-06-08 21:49:13.101411');
INSERT INTO `b_error_log` VALUES (4, '127.0.0.1', '/myapp/admin/thing/update', 'POST', '参数错误', '2024-06-08 21:49:38.569349');

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', 'dddfasdf', '刘文文', '111ezww2011@gmail.com', '13381651534', '2024-06-09 11:08:08.791952');
INSERT INTO `b_feedback` VALUES (2, '测试反馈111', '红红火火恍恍惚惚哈哈哈哈', '王明', '1233@qq.com', '18900009999', '2024-06-09 11:08:34.693092');
INSERT INTO `b_feedback` VALUES (3, '哈哈哈哈哈2223', 'hhhh尽快看看究竟dds', '李美丽', '33333011@gmail.com', '1223651534', '2024-06-09 11:09:11.506279');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-08 21:26:00.843757');
INSERT INTO `b_login_log` VALUES (2, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-08 21:29:11.818510');
INSERT INTO `b_login_log` VALUES (3, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-09 10:15:14.255143');
INSERT INTO `b_login_log` VALUES (4, 'test003', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-09 11:10:55.610622');
INSERT INTO `b_login_log` VALUES (5, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-09 11:12:22.513753');
INSERT INTO `b_login_log` VALUES (6, 'test004', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-09 11:14:25.904501');
INSERT INTO `b_login_log` VALUES (7, 'test004', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-09 14:55:53.633105');
INSERT INTO `b_login_log` VALUES (8, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-09 15:10:19.688289');
INSERT INTO `b_login_log` VALUES (9, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-09 15:14:57.871397');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试景区111', '哈哈哈哈哈', '2024-06-09 11:06:33.109378');
INSERT INTO `b_notice` VALUES (2, '测试通知888', '哈哈哈哈哈哈哈888777', '2024-06-09 11:06:44.959714');
INSERT INTO `b_notice` VALUES (3, '测试通知988', '0998哈哈哈哈哈哈', '2024-06-09 11:06:54.634510');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1377 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-06-08 21:24:59.173563', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-06-08 21:24:59.198545', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-06-08 21:24:59.214307', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-06-08 21:25:02.060213', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-06-08 21:25:02.064223', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-06-08 21:25:02.067209', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-06-08 21:25:05.082323', '/myapp/index/thing/list', 'GET', NULL, '3038');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-06-08 21:25:05.188409', '/myapp/index/user/info', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-06-08 21:25:05.823497', '/myapp/admin/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-06-08 21:25:05.827493', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-06-08 21:25:11.458590', '/myapp/admin/adminLogin', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-06-08 21:26:00.852793', '/myapp/admin/adminLogin', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-06-08 21:26:01.411818', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-06-08 21:26:01.414820', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-06-08 21:29:01.599376', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-06-08 21:29:01.603392', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-06-08 21:29:01.632513', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-06-08 21:29:01.697827', '/myapp/index/thing/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-06-08 21:29:06.775413', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-06-08 21:29:06.799767', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-06-08 21:29:09.381310', '/myapp/admin/adminLogin', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-06-08 21:29:11.827500', '/myapp/admin/adminLogin', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-06-08 21:29:12.101477', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-06-08 21:29:12.104479', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-06-08 21:29:40.485688', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-06-08 21:29:41.047023', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-06-08 21:29:41.050694', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-06-08 21:29:47.244284', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-06-08 21:29:56.788212', '/myapp/admin/classification/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-06-08 21:29:56.859488', '/myapp/admin/classification/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-06-08 21:30:04.403169', '/myapp/admin/classification/create', 'POST', NULL, '69');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-06-08 21:30:04.443042', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-06-08 21:30:09.977822', '/myapp/admin/classification/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-06-08 21:30:10.042943', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-06-08 21:30:22.221246', '/myapp/admin/classification/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-06-08 21:30:22.272037', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-06-08 21:30:39.803880', '/myapp/admin/classification/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-06-08 21:30:39.870238', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-06-08 21:30:47.138024', '/myapp/admin/classification/create', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-06-08 21:30:47.189580', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-06-08 21:30:55.333475', '/myapp/admin/classification/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-06-08 21:30:55.405750', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-06-08 21:30:56.905786', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-06-08 21:30:56.908820', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-06-08 21:31:22.787100', '/myapp/admin/thing/create', 'POST', NULL, '559');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-06-08 21:31:22.899883', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-06-08 21:38:32.309080', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-06-08 21:38:32.337004', '/myapp/admin/classification/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-06-08 21:38:32.633738', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-06-08 21:38:32.656737', '/myapp/index/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-06-08 21:38:32.672919', '/myapp/index/classification/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-06-08 21:38:32.754899', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-06-08 21:38:32.773176', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-06-08 21:38:36.032514', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-06-08 21:38:36.054887', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-06-08 21:39:52.632287', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-06-08 21:39:52.660417', '/myapp/admin/classification/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-06-08 21:40:24.362043', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-06-08 21:40:24.753422', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-06-08 21:40:24.778523', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-06-08 21:40:27.860093', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-06-08 21:40:38.638700', '/myapp/admin/thing/update', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-06-08 21:40:38.729262', '/myapp/admin/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-06-08 21:40:41.783337', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-06-08 21:40:42.372907', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-06-08 21:40:42.394153', '/myapp/admin/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-06-08 21:41:07.624298', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-06-08 21:41:07.728832', '/myapp/admin/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-06-08 21:42:01.821326', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-06-08 21:42:01.845363', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-06-08 21:42:03.050636', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-06-08 21:42:06.635042', '/myapp/admin/thing/update', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-06-08 21:42:06.741294', '/myapp/admin/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-06-08 21:42:22.751598', '/myapp/admin/thing/update', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-06-08 21:44:43.260198', '/myapp/admin/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-06-08 21:44:43.282142', '/myapp/admin/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-06-08 21:45:37.551572', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-06-08 21:45:37.567675', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-06-08 21:45:39.836017', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-06-08 21:45:45.917626', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-06-08 21:48:52.658957', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-06-08 21:48:52.669766', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-06-08 21:49:04.188211', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-06-08 21:49:04.225701', '/myapp/admin/classification/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-06-08 21:49:07.464914', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-06-08 21:49:13.112186', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-06-08 21:49:31.721915', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-06-08 21:49:31.731393', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-06-08 21:49:33.085286', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-06-08 21:49:38.576340', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-06-08 21:50:04.758978', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-06-08 21:50:04.777153', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-06-08 21:50:06.157805', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-06-08 21:50:27.748307', '/myapp/admin/thing/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-06-08 21:50:27.833926', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-06-08 21:55:44.942182', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-06-08 21:55:44.954692', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-06-08 21:56:37.150713', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-06-08 21:56:37.169720', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-06-08 21:56:42.070755', '/myapp/admin/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-06-08 21:56:42.074319', '/myapp/admin/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-06-08 21:56:43.346315', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-06-08 21:56:50.711395', '/myapp/admin/thing/update', 'POST', NULL, '71');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-06-08 21:56:50.813370', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-06-08 21:59:33.302212', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-06-08 21:59:33.314504', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-06-08 21:59:34.027354', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-06-08 22:03:08.606266', '/myapp/admin/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-06-08 22:03:08.628413', '/myapp/admin/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-06-08 22:03:12.235145', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-06-08 22:03:12.254373', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-06-08 22:03:13.787610', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-06-08 22:03:20.156067', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-06-08 22:03:20.268770', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-06-08 22:04:09.300237', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-06-08 22:04:09.397648', '/myapp/admin/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-06-08 22:05:47.517862', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-06-08 22:05:47.534088', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-06-08 22:05:48.611619', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-06-08 22:05:56.487603', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-06-08 22:05:56.600132', '/myapp/admin/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-06-08 22:06:32.419016', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-06-08 22:06:32.437296', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-06-08 22:06:36.071230', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-06-08 22:06:36.075232', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-06-08 22:06:38.229677', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-06-08 22:07:17.257143', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-06-08 22:07:17.276464', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-06-08 22:07:18.416253', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-06-08 22:07:23.239724', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-06-08 22:07:23.322979', '/myapp/admin/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-06-08 22:08:23.628266', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-06-08 22:08:23.633411', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-06-08 22:08:30.459640', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-06-08 22:08:30.482738', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-06-08 22:08:31.618808', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-06-08 22:08:37.412080', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-06-08 22:08:37.520018', '/myapp/admin/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-06-08 22:09:09.063651', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-06-08 22:09:09.074743', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-06-08 22:09:10.403162', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-06-08 22:09:16.009678', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-06-08 22:09:16.103912', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-06-08 22:10:53.446374', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-06-08 22:10:53.471955', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-06-08 22:10:56.414918', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-06-08 22:10:56.426162', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-06-08 22:10:57.743351', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-06-08 22:11:46.132663', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-06-08 22:11:46.145092', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-06-08 22:11:49.281477', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-06-08 22:11:49.289262', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-06-08 22:11:50.669088', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-06-08 22:11:55.387084', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-06-08 22:11:55.469137', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-06-08 22:12:31.713706', '/myapp/admin/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-06-08 22:12:31.724230', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-06-08 22:12:32.169910', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-06-08 22:12:32.728462', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-06-08 22:12:32.739094', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-06-08 22:12:34.456306', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-06-08 22:15:12.082979', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-06-08 22:15:12.098737', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-06-08 22:15:15.739348', '/myapp/admin/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-06-08 22:15:15.753262', '/myapp/admin/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-06-08 22:15:17.127964', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-06-08 22:15:24.593927', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-06-08 22:15:24.717917', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-06-08 22:15:35.023968', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-06-08 22:15:35.141271', '/myapp/admin/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-06-08 22:16:20.947980', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-06-08 22:16:21.088460', '/myapp/admin/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-06-08 22:17:42.639268', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-06-08 22:17:42.656830', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-06-09 09:10:01.108538', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-06-09 09:10:01.116800', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-06-09 09:10:01.215076', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-06-09 09:10:01.217077', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-06-09 09:10:01.224075', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-06-09 09:10:01.258911', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-06-09 09:10:01.262931', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-06-09 09:25:04.306592', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-06-09 09:32:25.108326', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-06-09 09:32:25.112499', '/myapp/admin/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-06-09 09:32:29.412463', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-06-09 09:32:29.447441', '/myapp/admin/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-06-09 09:32:30.422484', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-06-09 09:32:40.908355', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-06-09 09:32:40.937108', '/myapp/admin/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-06-09 09:33:16.029978', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-06-09 09:33:16.035994', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-06-09 09:33:26.365641', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-06-09 09:34:07.551844', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-06-09 09:34:07.566439', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-06-09 09:34:08.947030', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-06-09 09:35:24.039914', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-06-09 09:35:24.053143', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-06-09 09:35:25.583685', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-06-09 09:36:05.388787', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-06-09 09:36:05.394117', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-06-09 09:36:09.769674', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-06-09 09:36:09.803746', '/myapp/admin/classification/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-06-09 09:36:10.936961', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-06-09 09:36:14.947843', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-06-09 09:36:15.053594', '/myapp/admin/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-06-09 09:36:42.947194', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-06-09 09:36:42.953937', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-06-09 09:36:44.139378', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-06-09 09:37:18.673449', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-06-09 09:37:18.782965', '/myapp/admin/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-06-09 09:38:48.013708', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-06-09 09:38:48.027320', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-06-09 09:39:20.361127', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-06-09 09:39:20.370479', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-06-09 09:39:25.080596', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-06-09 09:39:25.098198', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-06-09 09:39:25.864965', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-06-09 09:39:36.441841', '/myapp/admin/thing/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-06-09 09:39:36.547591', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-06-09 09:40:10.570180', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-06-09 09:40:10.671320', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-06-09 09:40:23.785165', '/myapp/admin/thing/update', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-06-09 09:40:23.873668', '/myapp/admin/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-06-09 09:40:54.538402', '/myapp/admin/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-06-09 09:40:54.556401', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-06-09 09:49:16.154984', '/myapp/admin/thing/create', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-06-09 09:49:16.292419', '/myapp/admin/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-06-09 09:49:21.446088', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-06-09 09:49:21.450575', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-06-09 09:49:21.491992', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-06-09 09:49:21.578971', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-06-09 09:49:21.591497', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-06-09 09:50:25.463415', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-06-09 09:50:37.183311', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-06-09 09:50:37.319244', '/myapp/admin/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-06-09 09:50:39.093825', '/upload/cover/1717853469638.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-06-09 09:50:48.119367', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-06-09 09:50:48.257669', '/myapp/admin/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-06-09 09:51:34.325107', '/myapp/admin/thing/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-06-09 09:51:34.444867', '/myapp/admin/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-06-09 09:52:06.674268', '/myapp/admin/thing/create', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-06-09 09:52:06.850385', '/myapp/admin/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-06-09 09:53:01.942225', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-06-09 09:53:01.975424', '/myapp/admin/classification/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-06-09 09:53:06.250215', '/myapp/admin/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-06-09 09:53:06.304455', '/myapp/admin/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-06-09 09:53:07.033674', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-06-09 09:53:56.330287', '/myapp/admin/thing/create', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-06-09 09:53:56.501571', '/myapp/admin/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-06-09 09:54:29.334481', '/myapp/admin/thing/create', 'POST', NULL, '71');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-06-09 09:54:29.567469', '/myapp/admin/thing/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-06-09 09:55:00.399846', '/myapp/admin/thing/create', 'POST', NULL, '73');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-06-09 09:55:00.611102', '/myapp/admin/thing/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-06-09 09:55:33.431329', '/myapp/admin/thing/create', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-06-09 09:55:33.661260', '/myapp/admin/thing/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-06-09 09:55:37.370052', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-06-09 09:55:37.428091', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-06-09 09:55:37.445331', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-06-09 09:55:37.445331', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-06-09 09:55:37.446350', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-06-09 09:55:37.454492', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-06-09 09:55:37.456492', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-06-09 09:55:37.474594', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-06-09 09:56:51.239458', '/myapp/admin/thing/create', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-06-09 09:56:51.468786', '/myapp/admin/thing/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-06-09 09:57:25.402973', '/myapp/admin/thing/create', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-06-09 09:57:25.621398', '/myapp/admin/thing/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-06-09 09:57:53.624816', '/myapp/admin/thing/create', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-06-09 09:57:53.876610', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-06-09 09:58:32.797238', '/myapp/admin/thing/create', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-06-09 09:58:33.046915', '/myapp/admin/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-06-09 09:58:38.501755', '/myapp/index/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-06-09 09:58:38.533083', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-06-09 09:58:38.618742', '/myapp/index/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-06-09 09:58:38.726517', '/upload/cover/1717898117620.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-06-09 09:58:38.757607', '/upload/cover/1717898117620.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-06-09 09:58:38.767606', '/upload/cover/1717898117620.jpeg', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-06-09 09:58:38.771609', '/upload/cover/1717898117620.jpeg', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-06-09 09:58:38.774078', '/upload/cover/1717898117620.jpeg', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-06-09 09:58:38.780562', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-06-09 09:58:38.824717', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-06-09 09:58:38.831637', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-06-09 09:58:38.833014', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-06-09 09:58:38.838560', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-06-09 09:58:38.841051', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-06-09 09:58:38.846418', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-06-09 09:58:38.858434', '/upload/cover/1717897842900.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-06-09 09:58:56.073750', '/myapp/admin/thing/create', 'POST', NULL, '77');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-06-09 09:58:56.340387', '/myapp/admin/thing/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-06-09 09:59:00.206807', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-06-09 09:59:04.003888', '/myapp/admin/thing/list', 'GET', NULL, '169');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-06-09 09:59:07.426275', '/myapp/admin/thing/delete', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-06-09 09:59:07.618413', '/myapp/admin/thing/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-06-09 10:00:34.347750', '/upload/cover/1717898296187.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-06-09 10:01:01.731303', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-06-09 10:01:01.979331', '/myapp/admin/thing/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-06-09 10:01:03.670346', '/upload/cover/1717898259968.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-06-09 10:01:19.436778', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-06-09 10:01:19.741103', '/myapp/admin/thing/list', 'GET', NULL, '189');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-06-09 10:01:21.050847', '/upload/cover/1717898229777.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-06-09 10:01:23.542054', '/myapp/admin/thing/update', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-06-09 10:01:23.817380', '/myapp/admin/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-06-09 10:01:24.789548', '/upload/cover/1717898194943.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-06-09 10:01:32.097804', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-06-09 10:01:32.354684', '/myapp/admin/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-06-09 10:01:33.587983', '/upload/cover/1717898117620.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-06-09 10:01:36.228437', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-06-09 10:01:36.484580', '/myapp/admin/thing/list', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-06-09 10:01:38.433593', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-06-09 10:01:41.258511', '/myapp/admin/thing/update', 'POST', NULL, '69');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-06-09 10:01:41.536307', '/myapp/admin/thing/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-06-09 10:01:42.712872', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-06-09 10:01:45.425887', '/myapp/admin/thing/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-06-09 10:01:45.696188', '/myapp/admin/thing/list', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-06-09 10:01:46.754478', '/upload/cover/1717898020571.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-06-09 10:01:49.412679', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-06-09 10:01:49.646862', '/myapp/admin/thing/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-06-09 10:01:51.037445', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-06-09 10:01:53.918987', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-06-09 10:01:54.244224', '/myapp/admin/thing/list', 'GET', NULL, '203');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-06-09 10:01:55.077165', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-06-09 10:01:57.868320', '/myapp/admin/thing/update', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-06-09 10:01:58.128777', '/myapp/admin/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-06-09 10:02:00.296174', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-06-09 10:02:03.092964', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-06-09 10:02:03.341396', '/myapp/admin/thing/list', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-06-09 10:02:04.123883', '/upload/cover/1717897842900.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-06-09 10:02:07.014111', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-06-09 10:02:07.272538', '/myapp/admin/thing/list', 'GET', NULL, '169');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-06-09 10:02:21.046724', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-06-09 10:02:21.282024', '/myapp/admin/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-06-09 10:02:27.005111', '/myapp/index/thing/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-06-09 10:02:27.016730', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-06-09 10:02:27.056777', '/myapp/index/thing/list', 'GET', NULL, '184');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-06-09 10:02:27.185428', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-06-09 10:02:27.188565', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-06-09 10:02:27.192360', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-06-09 10:02:27.203399', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-06-09 10:02:27.208851', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-06-09 10:02:27.212257', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-06-09 10:02:27.260252', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-06-09 10:02:27.270254', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-06-09 10:02:59.691144', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-06-09 10:03:00.347405', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-06-09 10:03:00.494406', '/myapp/admin/classification/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-06-09 10:03:04.444768', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-06-09 10:03:04.558269', '/myapp/admin/classification/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-06-09 10:03:11.574653', '/upload/cover/1717898296187.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-06-09 10:03:35.747533', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-06-09 10:03:35.877455', '/myapp/admin/thing/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-06-09 10:03:43.337523', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-06-09 10:03:44.271382', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-06-09 10:03:44.406626', '/myapp/admin/classification/list', 'GET', NULL, '171');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-06-09 10:03:57.311776', '/upload/cover/1717898296187.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-06-09 10:04:30.907697', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-06-09 10:04:31.040581', '/myapp/admin/classification/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-06-09 10:04:32.595133', '/upload/cover/1717898296187.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-06-09 10:04:38.209289', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-06-09 10:04:38.324801', '/myapp/admin/classification/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-06-09 10:04:45.910639', '/upload/cover/1717898259968.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-06-09 10:07:05.777614', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-06-09 10:07:05.809238', '/myapp/index/thing/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-06-09 10:07:05.843861', '/myapp/index/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-06-09 10:07:05.895326', '/myapp/index/thing/list', 'GET', NULL, '205');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-06-09 10:07:05.974669', '/upload/cover/1717898259968.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-06-09 10:07:05.976115', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-06-09 10:07:05.978741', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-06-09 10:07:05.979761', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-06-09 10:07:05.980753', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-06-09 10:07:05.990782', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-06-09 10:07:06.043390', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-06-09 10:07:06.048703', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-06-09 10:07:06.052036', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-06-09 10:07:06.055299', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-06-09 10:07:06.061294', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-06-09 10:07:06.063721', '/upload/cover/1717897842900.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-06-09 10:07:07.856471', '/myapp/index/thing/list', 'GET', NULL, '190');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-06-09 10:07:08.491977', '/myapp/index/thing/list', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-06-09 10:07:09.076529', '/myapp/index/thing/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-06-09 10:07:09.889064', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-06-09 10:07:32.323926', '/myapp/index/thing/list', 'GET', NULL, '177');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-06-09 10:07:33.287290', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-06-09 10:07:35.652135', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-06-09 10:07:36.798511', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-06-09 10:07:39.275406', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-06-09 10:07:39.919334', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-06-09 10:07:41.534354', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-06-09 10:07:42.646369', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-06-09 10:07:43.612188', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-06-09 10:07:44.434444', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-06-09 10:07:45.292630', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-06-09 10:07:46.306339', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-06-09 10:07:47.340370', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-06-09 10:07:47.929640', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-06-09 10:07:48.597240', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-06-09 10:07:49.154829', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-06-09 10:07:49.592751', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-06-09 10:07:50.216156', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-06-09 10:07:51.365794', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-06-09 10:07:52.077361', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-06-09 10:07:52.611763', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-06-09 10:07:54.923694', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-06-09 10:08:23.657851', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-06-09 10:08:24.361601', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-06-09 10:08:25.432061', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-06-09 10:08:26.168879', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-06-09 10:08:26.794444', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-06-09 10:08:27.336536', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-06-09 10:08:28.652262', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-06-09 10:08:29.243704', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-06-09 10:08:29.868993', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-06-09 10:08:30.727086', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-06-09 10:08:31.266023', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-06-09 10:08:31.874087', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-06-09 10:08:33.542762', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-06-09 10:08:34.388418', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-06-09 10:08:35.029752', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-06-09 10:08:36.143844', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-06-09 10:08:36.886054', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-06-09 10:08:37.849177', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-06-09 10:08:39.078492', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-06-09 10:08:40.220820', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-06-09 10:08:40.767829', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-06-09 10:08:42.172126', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-06-09 10:08:46.799050', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-06-09 10:08:54.576129', '/upload/cover/1717898020571.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-06-09 10:08:59.196240', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-06-09 10:08:59.433004', '/myapp/admin/thing/list', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-06-09 10:09:02.906476', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-06-09 10:09:02.962158', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-06-09 10:09:03.021504', '/myapp/index/thing/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-06-09 10:09:03.099954', '/upload/cover/1717898229777.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-06-09 10:09:03.107957', '/upload/cover/1717898194943.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-06-09 10:09:03.110955', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-06-09 10:09:03.119965', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-06-09 10:09:03.128956', '/upload/cover/1717898117620.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-06-09 10:09:03.171811', '/upload/cover/1717898194943.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-06-09 10:09:03.229184', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-06-09 10:09:03.279297', '/upload/cover/1717897842900.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-06-09 10:09:03.280515', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-06-09 10:09:03.282531', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-06-09 10:09:03.289387', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-06-09 10:09:03.902528', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-06-09 10:09:04.493055', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-06-09 10:09:05.154457', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-06-09 10:09:05.727781', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-06-09 10:09:07.521647', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-06-09 10:09:08.186904', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-06-09 10:09:08.552792', '/myapp/index/thing/list', 'GET', NULL, '402');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-06-09 10:09:08.703674', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-06-09 10:09:09.365107', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-06-09 10:09:09.837403', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-06-09 10:09:11.371934', '/myapp/index/thing/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-06-09 10:09:11.971635', '/myapp/index/thing/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-06-09 10:09:12.925796', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-06-09 10:09:14.546807', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-06-09 10:09:14.694338', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-06-09 10:09:14.708259', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-06-09 10:09:14.728240', '/myapp/index/comment/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-06-09 10:09:14.768632', '/myapp/index/comment/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-06-09 10:09:14.773663', '/myapp/index/comment/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-06-09 10:09:16.399016', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-06-09 10:09:16.413067', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-06-09 10:09:16.489689', '/myapp/index/thing/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-06-09 10:09:16.574489', '/myapp/index/thing/list', 'GET', NULL, '192');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-06-09 10:09:17.337976', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-06-09 10:09:17.345825', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-06-09 10:09:17.417301', '/myapp/index/comment/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-06-09 10:09:17.435301', '/myapp/index/comment/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-06-09 10:09:17.493720', '/myapp/index/comment/list', 'GET', NULL, '180');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-06-09 10:09:17.571132', '/myapp/index/comment/list', 'GET', NULL, '257');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-06-09 10:09:18.422562', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-06-09 10:09:18.426332', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-06-09 10:09:18.507069', '/myapp/index/thing/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-06-09 10:09:18.588374', '/myapp/index/thing/list', 'GET', NULL, '186');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-06-09 10:09:19.858326', '/myapp/index/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-06-09 10:09:20.563656', '/myapp/index/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-06-09 10:09:21.498017', '/myapp/index/thing/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-06-09 10:09:23.192990', '/myapp/index/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-06-09 10:09:30.377006', '/myapp/index/thing/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-06-09 10:09:30.402507', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-06-09 10:09:30.459145', '/myapp/index/thing/detail', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-06-09 10:09:30.535660', '/myapp/index/thing/detail', 'GET', NULL, '172');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-06-09 10:09:30.590135', '/myapp/index/thing/detail', 'GET', NULL, '225');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-06-09 10:09:30.663781', '/myapp/index/thing/detail', 'GET', NULL, '301');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-06-09 10:09:31.412007', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-06-09 10:09:31.418642', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-06-09 10:09:31.498004', '/myapp/index/thing/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-06-09 10:09:31.575627', '/myapp/index/thing/list', 'GET', NULL, '186');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-06-09 10:09:32.363081', '/myapp/index/thing/detail', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-06-09 10:09:32.376080', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-06-09 10:09:32.413207', '/myapp/index/thing/detail', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-06-09 10:09:32.460574', '/myapp/index/thing/detail', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-06-09 10:09:32.471973', '/myapp/index/thing/detail', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-06-09 10:09:32.527353', '/myapp/index/thing/detail', 'GET', NULL, '167');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-06-09 10:09:33.213005', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-06-09 10:09:33.218817', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-06-09 10:09:33.307458', '/myapp/index/thing/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-06-09 10:09:33.380410', '/myapp/index/thing/list', 'GET', NULL, '186');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-06-09 10:09:34.089911', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-06-09 10:09:34.093115', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-06-09 10:09:34.121668', '/myapp/index/thing/detail', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-06-09 10:09:34.172820', '/myapp/index/thing/detail', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-06-09 10:09:34.219421', '/myapp/index/thing/detail', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-06-09 10:09:34.287775', '/myapp/index/thing/detail', 'GET', NULL, '211');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-06-09 10:09:34.961222', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-06-09 10:09:34.969213', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-06-09 10:09:35.062988', '/myapp/index/thing/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-06-09 10:09:35.151773', '/myapp/index/thing/list', 'GET', NULL, '208');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-06-09 10:09:35.636064', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-06-09 10:09:35.650636', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-06-09 10:09:35.710864', '/myapp/index/thing/detail', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-06-09 10:09:35.747152', '/myapp/index/thing/detail', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-06-09 10:09:35.811500', '/myapp/index/thing/detail', 'GET', NULL, '192');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-06-09 10:09:35.879576', '/myapp/index/thing/detail', 'GET', NULL, '261');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-06-09 10:09:36.480945', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-06-09 10:09:36.493516', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-06-09 10:09:36.584733', '/myapp/index/thing/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-06-09 10:09:36.668721', '/myapp/index/thing/list', 'GET', NULL, '206');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-06-09 10:09:37.217787', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-06-09 10:09:37.221786', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-06-09 10:09:37.286832', '/myapp/index/comment/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-06-09 10:09:37.347986', '/myapp/index/comment/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-06-09 10:09:37.397198', '/myapp/index/comment/list', 'GET', NULL, '204');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-06-09 10:09:37.474893', '/myapp/index/comment/list', 'GET', NULL, '281');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-06-09 10:09:38.095698', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-06-09 10:09:38.104239', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-06-09 10:09:38.185563', '/myapp/index/thing/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-06-09 10:09:38.273472', '/myapp/index/thing/list', 'GET', NULL, '203');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-06-09 10:09:38.902585', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-06-09 10:09:38.939544', '/myapp/index/thing/detail', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-06-09 10:09:38.971071', '/myapp/index/thing/detail', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-06-09 10:09:39.030560', '/myapp/index/thing/detail', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-06-09 10:09:39.082019', '/myapp/index/thing/detail', 'GET', NULL, '192');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-06-09 10:09:39.152268', '/myapp/index/thing/detail', 'GET', NULL, '260');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-06-09 10:09:40.264062', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-06-09 10:09:40.271899', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-06-09 10:09:40.359260', '/myapp/index/user/info', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-06-09 10:09:40.440002', '/myapp/index/user/info', 'GET', NULL, '201');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-06-09 10:09:41.494082', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-06-09 10:09:41.504342', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-06-09 10:09:41.542265', '/myapp/index/thing/detail', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-06-09 10:09:41.613451', '/myapp/index/thing/detail', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-06-09 10:09:41.637724', '/myapp/index/thing/detail', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-06-09 10:09:41.727510', '/myapp/index/thing/detail', 'GET', NULL, '259');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-06-09 10:09:42.297790', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-06-09 10:09:42.305613', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-06-09 10:09:42.378629', '/myapp/index/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-06-09 10:09:42.461311', '/myapp/index/thing/list', 'GET', NULL, '188');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-06-09 10:09:43.885175', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-06-09 10:09:43.890910', '/myapp/index/thing/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-06-09 10:09:43.947420', '/myapp/index/thing/detail', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-06-09 10:09:43.990081', '/myapp/index/thing/detail', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-06-09 10:09:44.036352', '/myapp/index/thing/detail', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-06-09 10:09:44.102819', '/myapp/index/thing/detail', 'GET', NULL, '233');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-06-09 10:09:44.913222', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-06-09 10:09:44.917212', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-06-09 10:09:44.990893', '/myapp/index/thing/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-06-09 10:09:45.076008', '/myapp/index/thing/list', 'GET', NULL, '190');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-06-09 10:09:45.933039', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-06-09 10:09:45.940164', '/myapp/index/thing/detail', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-06-09 10:09:45.964584', '/myapp/index/thing/detail', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-06-09 10:09:46.158862', '/myapp/index/thing/detail', 'GET', NULL, '248');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-06-09 10:09:46.181167', '/myapp/index/thing/detail', 'GET', NULL, '269');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-06-09 10:09:46.255317', '/myapp/index/thing/detail', 'GET', NULL, '345');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-06-09 10:09:46.822314', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-06-09 10:09:46.828274', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-06-09 10:09:46.904344', '/myapp/index/thing/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-06-09 10:09:46.984397', '/myapp/index/thing/list', 'GET', NULL, '181');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-06-09 10:09:47.997150', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-06-09 10:09:48.004464', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-06-09 10:09:48.055961', '/myapp/index/comment/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-06-09 10:09:48.121812', '/myapp/index/comment/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-06-09 10:09:48.139375', '/myapp/index/comment/list', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-06-09 10:09:48.228980', '/myapp/index/comment/list', 'GET', NULL, '245');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-06-09 10:09:49.063725', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-06-09 10:09:49.074917', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-06-09 10:09:49.160211', '/myapp/index/thing/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-06-09 10:09:49.230179', '/myapp/index/thing/list', 'GET', NULL, '183');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-06-09 10:09:52.571046', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-06-09 10:09:52.605759', '/myapp/index/thing/detail', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-06-09 10:09:52.635060', '/myapp/index/thing/detail', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-06-09 10:09:52.679368', '/myapp/index/thing/detail', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-06-09 10:09:52.722843', '/myapp/index/thing/detail', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-06-09 10:09:52.795238', '/myapp/index/thing/detail', 'GET', NULL, '243');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-06-09 10:09:53.568834', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-06-09 10:09:53.580161', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-06-09 10:09:53.666639', '/myapp/index/thing/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-06-09 10:09:53.752759', '/myapp/index/thing/list', 'GET', NULL, '202');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-06-09 10:09:55.001696', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-06-09 10:09:55.755851', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-06-09 10:09:56.505304', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-06-09 10:09:57.775199', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-06-09 10:09:58.426436', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-06-09 10:09:59.209377', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-06-09 10:09:59.656611', '/myapp/index/thing/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-06-09 10:10:00.290943', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-06-09 10:10:02.497217', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-06-09 10:10:09.674758', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-06-09 10:10:09.680449', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-06-09 10:10:09.754101', '/myapp/index/thing/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-06-09 10:10:09.826772', '/upload/cover/1717898296187.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-06-09 10:10:09.830300', '/upload/cover/1717898296187.jpeg', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-06-09 10:10:23.466479', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-06-09 10:10:23.474819', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-06-09 10:10:23.488812', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-06-09 10:10:23.564830', '/myapp/admin/ad/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-06-09 10:10:23.591294', '/myapp/admin/ad/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-06-09 10:10:23.656988', '/myapp/admin/ad/list', 'GET', NULL, '200');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-06-09 10:10:25.922755', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-06-09 10:10:25.938140', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-06-09 10:10:25.965040', '/myapp/index/comment/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-06-09 10:10:26.025888', '/myapp/index/comment/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-06-09 10:10:26.054886', '/upload/cover/1717898194943.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-06-09 10:10:26.068001', '/upload/cover/1717898194943.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-06-09 10:10:26.148149', '/upload/cover/1717898229777.jpeg', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-06-09 10:10:26.149153', '/upload/cover/1717898229777.jpeg', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-06-09 10:10:29.904622', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-06-09 10:10:29.913226', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-06-09 10:10:29.945489', '/myapp/index/thing/getRecommend', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-06-09 10:10:29.980255', '/myapp/index/thing/getRecommend', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-06-09 10:10:30.023039', '/myapp/index/thing/getRecommend', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-06-09 10:10:30.079060', '/myapp/index/thing/getRecommend', 'GET', NULL, '184');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-06-09 10:10:31.606675', '/myapp/index/thing/rate', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-06-09 10:10:33.709705', '/myapp/index/thing/rate', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-06-09 10:10:36.462937', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-06-09 10:10:36.469457', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-06-09 10:10:36.478312', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-06-09 10:10:36.568800', '/myapp/admin/ad/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-06-09 10:10:36.611399', '/myapp/admin/ad/list', 'GET', NULL, '164');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-06-09 10:10:36.690935', '/myapp/admin/ad/list', 'GET', NULL, '242');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-06-09 10:10:38.385577', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-06-09 10:10:38.398938', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-06-09 10:10:38.476434', '/myapp/index/classification/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-06-09 10:10:38.590949', '/upload/cover/1717898020571.jpeg', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-06-09 10:10:38.591941', '/upload/cover/1717898020571.jpeg', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-06-09 10:10:38.593234', '/upload/cover/1717898020571.jpeg', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-06-09 10:10:38.594470', '/upload/cover/1717898020571.jpeg', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-06-09 10:10:38.599498', '/upload/cover/1717898020571.jpeg', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-06-09 10:10:38.601644', '/upload/cover/1717898020571.jpeg', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-06-09 10:10:40.387696', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-06-09 10:10:41.412494', '/myapp/index/thing/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-06-09 10:12:24.318897', '/myapp/admin/thing/update', 'POST', NULL, '395');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-06-09 10:12:24.571414', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-06-09 10:12:28.244842', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-06-09 10:12:28.251927', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-06-09 10:12:28.371251', '/myapp/index/thing/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-06-09 10:12:28.376709', '/myapp/index/thing/list', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-06-09 10:12:28.426430', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-06-09 10:12:28.427425', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-06-09 10:12:28.431030', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-06-09 10:12:28.432042', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-06-09 10:12:28.433298', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-06-09 10:12:28.442532', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-06-09 10:12:28.476802', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-06-09 10:12:28.483606', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-06-09 10:12:28.487785', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-06-09 10:12:28.493790', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-06-09 10:12:28.579500', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-06-09 10:12:28.604606', '/upload/cover/1717897842900.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-06-09 10:12:36.530757', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-06-09 10:12:36.535451', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-06-09 10:12:36.555064', '/myapp/index/user/info', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-06-09 10:12:36.729866', '/myapp/index/user/info', 'GET', NULL, '214');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-06-09 10:12:36.776076', '/myapp/index/user/info', 'GET', NULL, '260');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-06-09 10:12:36.864187', '/myapp/index/user/info', 'GET', NULL, '347');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-06-09 10:12:38.010756', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-06-09 10:12:38.040807', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-06-09 10:12:38.102263', '/myapp/index/thing/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-06-09 10:12:38.193356', '/myapp/index/thing/list', 'GET', NULL, '199');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-06-09 10:12:43.626456', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-06-09 10:12:43.630469', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-06-09 10:12:43.651398', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-06-09 10:12:43.729399', '/myapp/index/comment/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-06-09 10:12:43.771040', '/myapp/index/comment/list', 'GET', NULL, '165');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-06-09 10:12:43.847458', '/myapp/index/comment/list', 'GET', NULL, '241');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-06-09 10:14:05.876481', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-06-09 10:14:05.872357', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-06-09 10:14:05.890166', '/myapp/index/user/info', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-06-09 10:14:05.965533', '/myapp/index/user/info', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-06-09 10:14:06.012256', '/upload/cover/1717898259968.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-06-09 10:14:06.025298', '/upload/cover/1717898259968.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-06-09 10:14:06.137798', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-06-09 10:14:06.139796', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-06-09 10:14:06.143449', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-06-09 10:14:06.144476', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-06-09 10:14:28.010705', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-06-09 10:14:28.031104', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-06-09 10:14:28.082144', '/myapp/index/comment/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-06-09 10:14:28.125705', '/myapp/index/comment/list', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-06-09 10:14:28.165130', '/myapp/index/comment/list', 'GET', NULL, '180');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-06-09 10:14:28.260621', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-06-09 10:14:28.266650', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-06-09 10:15:02.348952', '/myapp/index/thing/addWishUser', 'POST', NULL, '132');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-06-09 10:15:04.182419', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-06-09 10:15:04.187461', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-06-09 10:15:04.245783', '/myapp/index/classification/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-06-09 10:15:04.308276', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-06-09 10:15:04.309290', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-06-09 10:15:04.310273', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-06-09 10:15:04.312289', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-06-09 10:15:04.315999', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-06-09 10:15:04.322019', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-06-09 10:15:04.348201', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-06-09 10:15:04.351205', '/upload/cover/1717897842900.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-06-09 10:15:11.331510', '/myapp/index/user/register', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-06-09 10:15:14.266146', '/myapp/index/user/login', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-06-09 10:15:14.349976', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-06-09 10:15:14.359725', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-06-09 10:15:14.374676', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-06-09 10:15:14.415871', '/myapp/index/user/info', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-06-09 10:15:16.097770', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-06-09 10:15:16.108822', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-06-09 10:15:16.117984', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-06-09 10:15:16.136161', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-06-09 10:15:16.169156', '/myapp/index/comment/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-06-09 10:15:16.216162', '/myapp/index/comment/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-06-09 10:15:20.899243', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-06-09 10:15:20.906041', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-06-09 10:15:20.914646', '/myapp/admin/ad/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-06-09 10:15:20.911116', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-06-09 10:15:20.969878', '/myapp/admin/ad/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-06-09 10:15:21.001697', '/myapp/admin/ad/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-06-09 10:15:21.061162', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-06-09 10:15:22.628062', '/myapp/index/thing/addCollectUser', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-06-09 10:15:22.708437', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-06-09 10:15:23.165233', '/myapp/index/thing/addWishUser', 'POST', NULL, '70');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-06-09 10:15:23.220112', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-06-09 10:15:40.341866', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-06-09 10:15:40.380429', '/myapp/admin/ad/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-06-09 10:15:40.401728', '/myapp/admin/ad/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-06-09 10:15:40.456724', '/myapp/admin/ad/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-06-09 10:16:13.238137', '/myapp/admin/thing/update', 'POST', NULL, '70');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-06-09 10:16:13.500362', '/myapp/admin/thing/list', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-06-09 10:16:19.595645', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-06-09 10:16:19.598907', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-06-09 10:16:19.605505', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-06-09 10:16:19.651450', '/myapp/index/classification/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-06-09 10:16:19.694451', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-06-09 10:16:19.695514', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-06-09 10:16:19.697453', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-06-09 10:16:19.715552', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-06-09 10:16:21.614891', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-06-09 10:16:21.623136', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-06-09 10:16:21.642470', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-06-09 10:16:21.651458', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-06-09 10:16:21.706256', '/myapp/index/comment/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-06-09 10:16:21.758843', '/myapp/index/comment/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-06-09 10:16:54.394902', '/myapp/index/comment/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-06-09 10:16:54.446934', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-06-09 10:16:56.075968', '/myapp/index/comment/like', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-06-09 10:16:56.106966', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-06-09 10:16:59.701047', '/myapp/index/thing/getWishThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-06-09 10:16:59.721433', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-06-09 10:16:59.734626', '/myapp/index/thing/getWishThingList', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-06-09 10:16:59.753347', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-06-09 10:16:59.764490', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-06-09 10:16:59.787061', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-06-09 10:17:07.884998', '/myapp/index/user/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-06-09 10:17:08.982601', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-06-09 10:17:08.987496', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-06-09 10:17:08.991175', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-06-09 10:17:08.993589', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-06-09 10:17:09.018228', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-06-09 10:17:09.043234', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-06-09 10:17:09.045231', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-06-09 10:17:10.707606', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-06-09 10:17:10.712814', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-06-09 10:17:10.722821', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-06-09 10:17:10.771038', '/myapp/index/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-06-09 10:17:10.816580', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-06-09 10:17:10.815582', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-06-09 10:17:10.818584', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-06-09 10:17:10.820075', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-06-09 10:17:10.823854', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-06-09 10:17:12.936810', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-06-09 10:17:12.943794', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-06-09 10:17:12.950803', '/myapp/admin/ad/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-06-09 10:17:12.993001', '/myapp/admin/ad/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-06-09 10:17:13.030240', '/myapp/admin/ad/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-06-09 10:17:13.077654', '/myapp/admin/ad/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-06-09 10:17:14.510278', '/myapp/index/thing/rate', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-06-09 10:17:17.176399', '/myapp/index/thing/addWishUser', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2024-06-09 10:17:17.255431', '/myapp/index/thing/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2024-06-09 10:17:18.118881', '/myapp/index/thing/addCollectUser', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2024-06-09 10:17:18.192036', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2024-06-09 10:17:34.533035', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2024-06-09 10:17:34.541036', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2024-06-09 10:17:34.551055', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2024-06-09 10:17:34.603973', '/myapp/index/thing/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2024-06-09 10:19:21.193073', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2024-06-09 10:19:21.204719', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2024-06-09 10:19:21.211724', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2024-06-09 10:19:21.219635', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2024-06-09 10:19:21.296693', '/myapp/index/comment/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2024-06-09 10:19:21.333558', '/myapp/index/comment/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2024-06-09 10:20:55.475433', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2024-06-09 10:20:55.482826', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2024-06-09 10:20:55.511782', '/myapp/index/user/info', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2024-06-09 10:20:55.552755', '/myapp/index/user/info', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2024-06-09 10:21:11.066325', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2024-06-09 10:21:11.079547', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2024-06-09 10:21:11.128080', '/myapp/index/thing/getRecommend', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2024-06-09 10:21:38.241986', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2024-06-09 10:21:38.253266', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2024-06-09 10:21:38.293441', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2024-06-09 10:21:38.299428', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2024-06-09 10:21:38.346157', '/upload/cover/1717897842900.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2024-06-09 10:21:38.346157', '/upload/cover/1717898229777.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2024-06-09 10:21:38.347461', '/upload/cover/1717897842900.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2024-06-09 10:21:38.348476', '/upload/cover/1717897842900.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2024-06-09 10:21:38.351888', '/upload/cover/1717897842900.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2024-06-09 10:21:38.365506', '/upload/cover/1717897842900.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2024-06-09 10:21:38.397095', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2024-06-09 10:21:38.398107', '/upload/cover/1717898117620.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2024-06-09 10:21:38.404502', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2024-06-09 10:21:38.406500', '/upload/cover/1717898117620.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2024-06-09 10:21:38.409504', '/upload/cover/1717898117620.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2024-06-09 10:21:38.416127', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2024-06-09 10:22:00.829954', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2024-06-09 10:22:00.832955', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2024-06-09 10:22:00.849972', '/myapp/index/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2024-06-09 10:22:00.889738', '/myapp/index/classification/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2024-06-09 10:22:27.483996', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2024-06-09 10:22:27.488002', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2024-06-09 10:22:27.496930', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2024-06-09 10:22:27.539343', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2024-06-09 10:22:27.554851', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2024-06-09 10:22:28.791823', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2024-06-09 10:22:28.805340', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2024-06-09 10:22:28.842565', '/myapp/index/thing/getRecommend', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2024-06-09 10:22:32.840386', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2024-06-09 10:22:32.852932', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2024-06-09 10:22:32.860978', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2024-06-09 10:22:32.914527', '/myapp/index/user/info', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2024-06-09 10:22:39.814107', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2024-06-09 10:22:39.824240', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2024-06-09 10:22:39.876397', '/myapp/index/thing/getRecommend', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2024-06-09 10:22:42.691081', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2024-06-09 10:22:42.701111', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2024-06-09 10:22:42.722802', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2024-06-09 10:22:42.766271', '/myapp/index/thing/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2024-06-09 10:22:56.224552', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2024-06-09 10:22:56.258729', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2024-06-09 10:22:56.262716', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2024-06-09 10:23:25.708678', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2024-06-09 10:23:25.714004', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2024-06-09 10:23:25.731720', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2024-06-09 10:23:25.773843', '/myapp/index/thing/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2024-06-09 10:23:25.805414', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2024-06-09 10:23:35.290393', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2024-06-09 10:23:35.297889', '/myapp/index/thing/getRecommend', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2024-06-09 10:23:35.305101', '/myapp/index/thing/getRecommend', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2024-06-09 10:23:35.347799', '/myapp/index/thing/getRecommend', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2024-06-09 10:23:35.365456', '/myapp/index/thing/getRecommend', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2024-06-09 10:23:35.384859', '/myapp/index/thing/getRecommend', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2024-06-09 10:24:40.216828', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2024-06-09 10:24:40.228851', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2024-06-09 10:24:40.238843', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2024-06-09 10:24:40.297175', '/myapp/index/thing/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2024-06-09 10:24:42.658615', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2024-06-09 10:24:44.043733', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2024-06-09 10:24:44.049914', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2024-06-09 10:24:44.056973', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2024-06-09 10:24:44.060971', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2024-06-09 10:24:44.118746', '/myapp/index/comment/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2024-06-09 10:24:44.133732', '/myapp/index/comment/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2024-06-09 10:24:46.302789', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2024-06-09 10:24:46.307411', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2024-06-09 10:24:46.332612', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2024-06-09 10:24:46.373085', '/myapp/index/thing/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2024-06-09 10:24:53.455745', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2024-06-09 10:24:53.476665', '/myapp/index/thing/getRecommend', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2024-06-09 10:24:53.492351', '/myapp/index/thing/getRecommend', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2024-06-09 10:24:53.498628', '/myapp/index/thing/getRecommend', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2024-06-09 10:24:53.561534', '/myapp/index/thing/getRecommend', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2024-06-09 10:24:53.566539', '/myapp/index/thing/getRecommend', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2024-06-09 10:24:54.994236', '/myapp/index/thing/addWishUser', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2024-06-09 10:24:55.068071', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2024-06-09 10:24:55.435520', '/myapp/index/thing/addCollectUser', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2024-06-09 10:24:55.496344', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2024-06-09 10:24:56.562602', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2024-06-09 10:24:56.617986', '/myapp/admin/ad/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2024-06-09 10:24:56.655790', '/myapp/admin/ad/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2024-06-09 10:24:56.669026', '/myapp/admin/ad/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2024-06-09 10:24:57.628216', '/myapp/index/thing/addWishUser', 'POST', NULL, '79');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2024-06-09 10:24:57.686362', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2024-06-09 10:24:58.008274', '/myapp/index/thing/addCollectUser', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2024-06-09 10:24:58.093579', '/myapp/index/thing/detail', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2024-06-09 10:24:59.268215', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2024-06-09 10:24:59.283481', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2024-06-09 10:24:59.324119', '/myapp/admin/ad/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2024-06-09 10:24:59.347344', '/myapp/admin/ad/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2024-06-09 10:25:00.108738', '/myapp/index/thing/addWishUser', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2024-06-09 10:25:00.179040', '/myapp/index/thing/detail', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2024-06-09 10:25:00.495081', '/myapp/index/thing/addCollectUser', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2024-06-09 10:25:00.559250', '/myapp/index/thing/detail', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2024-06-09 10:25:03.277081', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2024-06-09 10:25:03.314334', '/myapp/index/thing/getWishThingList', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2024-06-09 10:25:03.342883', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2024-06-09 10:25:03.352140', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2024-06-09 10:25:03.362432', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2024-06-09 10:25:03.398905', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2024-06-09 10:25:05.549798', '/myapp/index/thing/listUserThing', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2024-06-09 10:25:05.555088', '/myapp/index/thing/listUserThing', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2024-06-09 10:25:06.421615', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2024-06-09 10:25:06.463937', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2024-06-09 10:25:06.463937', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2024-06-09 10:25:06.464943', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2024-06-09 10:25:06.462923', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2024-06-09 10:25:06.478550', '/upload/cover/1717897878669.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2024-06-09 10:25:07.186845', '/myapp/index/thing/getWishThingList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2024-06-09 10:25:08.182804', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2024-06-09 10:26:05.628415', '/myapp/index/thing/removeCollectUser', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2024-06-09 10:26:05.678708', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2024-06-09 10:26:34.694042', '/myapp/index/thing/getWishThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2024-06-09 10:26:36.191543', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2024-06-09 10:26:37.799521', '/myapp/index/thing/getWishThingList', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2024-06-09 10:26:39.387300', '/myapp/index/thing/removeWishUser', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2024-06-09 10:26:39.466739', '/myapp/index/thing/getWishThingList', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2024-06-09 10:26:45.998506', '/myapp/index/thing/listUserThing', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2024-06-09 10:26:46.003566', '/myapp/index/thing/listUserThing', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2024-06-09 10:26:47.237284', '/myapp/index/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2024-06-09 10:26:53.398975', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2024-06-09 10:26:53.405994', '/myapp/index/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2024-06-09 10:26:53.423120', '/myapp/index/classification/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2024-06-09 10:26:53.470901', '/myapp/index/classification/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2024-06-09 10:26:53.519154', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2024-06-09 10:26:53.549570', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2024-06-09 10:26:53.550618', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2024-06-09 10:26:53.552961', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2024-06-09 10:26:53.556554', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2024-06-09 10:26:53.561263', '/upload/cover/1717897842900.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2024-06-09 10:26:53.572543', '/upload/cover/1717897842900.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2024-06-09 10:26:55.979141', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2024-06-09 10:26:55.997810', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2024-06-09 10:26:56.013811', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2024-06-09 10:26:56.028821', '/myapp/index/comment/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2024-06-09 10:26:56.072230', '/myapp/index/comment/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2024-06-09 10:26:56.080229', '/myapp/index/comment/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2024-06-09 10:27:20.669659', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2024-06-09 10:27:20.686232', '/myapp/index/thing/getRecommend', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2024-06-09 10:27:20.693255', '/myapp/index/thing/getRecommend', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2024-06-09 10:27:20.706522', '/myapp/index/thing/getRecommend', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2024-06-09 10:27:20.734133', '/myapp/index/thing/getRecommend', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2024-06-09 10:27:20.742167', '/myapp/index/thing/getRecommend', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2024-06-09 10:27:25.334517', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2024-06-09 10:27:25.356346', '/myapp/admin/ad/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2024-06-09 10:27:25.348518', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2024-06-09 10:27:25.407396', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2024-06-09 10:27:25.423405', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2024-06-09 10:27:25.437392', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2024-06-09 10:27:25.455415', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2024-06-09 10:28:04.270064', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2024-06-09 10:28:04.282553', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2024-06-09 10:28:04.298497', '/myapp/admin/ad/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2024-06-09 10:28:04.291937', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2024-06-09 10:28:04.352839', '/myapp/admin/ad/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2024-06-09 10:28:04.358168', '/myapp/admin/ad/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2024-06-09 10:28:04.395473', '/upload/cover/1717898259968.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2024-06-09 10:28:05.844391', '/myapp/index/notice/list_api', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2024-06-09 10:28:05.853382', '/myapp/index/notice/list_api', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2024-06-09 10:28:05.864378', '/myapp/index/notice/list_api', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2024-06-09 10:28:05.874496', '/myapp/index/notice/list_api', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2024-06-09 10:28:05.916363', '/myapp/index/notice/list_api', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2024-06-09 10:28:05.921368', '/myapp/index/notice/list_api', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2024-06-09 10:38:13.163845', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2024-06-09 10:38:13.167031', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2024-06-09 10:38:13.170045', '/myapp/index/notice/list_api', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2024-06-09 10:38:13.180399', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2024-06-09 10:38:13.609342', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2024-06-09 10:38:13.649338', '/myapp/admin/classification/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2024-06-09 10:43:03.194543', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2024-06-09 10:43:03.206656', '/myapp/index/user/info', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2024-06-09 10:43:20.205639', '/myapp/index/order/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2024-06-09 10:43:20.411056', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2024-06-09 10:43:20.421065', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2024-06-09 10:44:28.680413', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2024-06-09 10:44:28.691675', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2024-06-09 10:44:28.752340', '/myapp/admin/ad/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2024-06-09 10:44:28.773868', '/myapp/admin/ad/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2024-06-09 10:44:28.783143', '/myapp/admin/ad/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2024-06-09 10:44:28.794449', '/myapp/admin/ad/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2024-06-09 10:44:28.855201', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2024-06-09 10:44:28.855201', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2024-06-09 10:44:28.877893', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2024-06-09 10:44:28.890893', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2024-06-09 10:44:31.219796', '/myapp/index/notice/list_api', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2024-06-09 10:44:31.224815', '/myapp/index/notice/list_api', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2024-06-09 10:44:31.256447', '/myapp/index/notice/list_api', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2024-06-09 10:44:31.266443', '/myapp/index/notice/list_api', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2024-06-09 10:44:31.291039', '/myapp/index/notice/list_api', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2024-06-09 10:44:31.304023', '/myapp/index/notice/list_api', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2024-06-09 10:44:33.477165', '/upload/cover/1717898259968.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2024-06-09 10:44:33.483860', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2024-06-09 10:44:33.491011', '/myapp/index/notice/list_api', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2024-06-09 10:44:33.521337', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2024-06-09 10:50:36.826838', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2024-06-09 10:50:36.834246', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2024-06-09 10:50:39.759178', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2024-06-09 10:50:39.767797', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2024-06-09 10:50:50.913092', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2024-06-09 10:50:50.928002', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2024-06-09 10:50:50.937009', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2024-06-09 10:50:50.967279', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2024-06-09 10:50:50.988411', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2024-06-09 10:50:51.044108', '/upload/cover/1717898194943.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2024-06-09 10:50:51.049117', '/upload/cover/1717898194943.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2024-06-09 10:50:51.057644', '/upload/cover/1717898117620.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2024-06-09 10:50:51.059798', '/upload/cover/1717898117620.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2024-06-09 10:50:51.060779', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2024-06-09 10:50:51.068005', '/upload/cover/1717898194943.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2024-06-09 10:50:51.081151', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2024-06-09 10:50:51.100055', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2024-06-09 10:50:51.105509', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2024-06-09 10:50:51.106585', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2024-06-09 10:50:51.108093', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2024-06-09 10:50:51.111347', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2024-06-09 10:50:52.562386', '/myapp/admin/ad/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1020, '127.0.0.1', '2024-06-09 10:50:52.567384', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1021, '127.0.0.1', '2024-06-09 10:50:52.613584', '/myapp/admin/ad/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1022, '127.0.0.1', '2024-06-09 10:50:52.630936', '/myapp/admin/ad/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (1023, '127.0.0.1', '2024-06-09 10:50:52.633349', '/myapp/admin/ad/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (1024, '127.0.0.1', '2024-06-09 10:50:52.637339', '/myapp/admin/ad/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1025, '127.0.0.1', '2024-06-09 10:50:53.840345', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1026, '127.0.0.1', '2024-06-09 10:50:53.847993', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1027, '127.0.0.1', '2024-06-09 10:50:53.860023', '/myapp/index/user/info', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1028, '127.0.0.1', '2024-06-09 10:50:53.907005', '/myapp/index/user/info', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (1029, '127.0.0.1', '2024-06-09 10:50:53.912019', '/myapp/index/user/info', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (1030, '127.0.0.1', '2024-06-09 10:50:53.941134', '/myapp/index/user/info', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (1031, '127.0.0.1', '2024-06-09 10:52:57.332627', '/myapp/index/order/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (1032, '127.0.0.1', '2024-06-09 10:52:57.801794', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1033, '127.0.0.1', '2024-06-09 10:52:57.806841', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1034, '127.0.0.1', '2024-06-09 10:53:00.318700', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1035, '127.0.0.1', '2024-06-09 10:53:00.337578', '/myapp/admin/ad/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1036, '127.0.0.1', '2024-06-09 10:53:00.343139', '/myapp/admin/ad/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1037, '127.0.0.1', '2024-06-09 10:53:00.381472', '/myapp/admin/ad/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1038, '127.0.0.1', '2024-06-09 10:53:00.417649', '/myapp/admin/ad/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (1039, '127.0.0.1', '2024-06-09 10:53:00.439498', '/myapp/admin/ad/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (1040, '127.0.0.1', '2024-06-09 10:53:01.745892', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1041, '127.0.0.1', '2024-06-09 10:53:01.749917', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1042, '127.0.0.1', '2024-06-09 10:53:01.776954', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1043, '127.0.0.1', '2024-06-09 10:53:01.792050', '/myapp/admin/ad/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1044, '127.0.0.1', '2024-06-09 10:53:01.846481', '/myapp/admin/ad/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (1045, '127.0.0.1', '2024-06-09 10:53:01.852715', '/myapp/admin/ad/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (1046, '127.0.0.1', '2024-06-09 10:54:33.947758', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1047, '127.0.0.1', '2024-06-09 10:54:33.951155', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1048, '127.0.0.1', '2024-06-09 10:54:39.253046', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1049, '127.0.0.1', '2024-06-09 10:54:39.257049', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1050, '127.0.0.1', '2024-06-09 10:54:39.287738', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1051, '127.0.0.1', '2024-06-09 10:55:08.338621', '/myapp/index/order/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (1052, '127.0.0.1', '2024-06-09 10:55:08.422161', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1053, '127.0.0.1', '2024-06-09 10:55:08.427174', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1054, '127.0.0.1', '2024-06-09 10:55:13.574830', '/myapp/index/order/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1055, '127.0.0.1', '2024-06-09 10:55:13.622092', '/myapp/index/order/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (1056, '127.0.0.1', '2024-06-09 10:55:13.646886', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1057, '127.0.0.1', '2024-06-09 10:55:13.650885', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1058, '127.0.0.1', '2024-06-09 10:55:13.673977', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1059, '127.0.0.1', '2024-06-09 10:55:13.687408', '/myapp/index/user/info', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1060, '127.0.0.1', '2024-06-09 10:55:16.119870', '/myapp/index/comment/listMyComments', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1061, '127.0.0.1', '2024-06-09 10:55:16.599965', '/myapp/index/order/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1062, '127.0.0.1', '2024-06-09 10:55:29.680823', '/myapp/index/order/cancel_order', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (1063, '127.0.0.1', '2024-06-09 10:55:29.752079', '/myapp/index/order/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1064, '127.0.0.1', '2024-06-09 10:56:09.748486', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1065, '127.0.0.1', '2024-06-09 10:56:09.755754', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1066, '127.0.0.1', '2024-06-09 10:56:09.759757', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1067, '127.0.0.1', '2024-06-09 10:56:09.797016', '/myapp/admin/ad/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1068, '127.0.0.1', '2024-06-09 10:56:09.819265', '/myapp/admin/ad/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1069, '127.0.0.1', '2024-06-09 10:56:09.822284', '/myapp/admin/ad/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (1070, '127.0.0.1', '2024-06-09 10:56:09.854540', '/upload/cover/1717898296187.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1071, '127.0.0.1', '2024-06-09 10:56:09.874632', '/upload/cover/1717898296187.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1072, '127.0.0.1', '2024-06-09 10:56:50.091147', '/myapp/admin/order/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1073, '127.0.0.1', '2024-06-09 10:57:16.562325', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1074, '127.0.0.1', '2024-06-09 10:57:17.067723', '/myapp/admin/order/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1075, '127.0.0.1', '2024-06-09 10:57:19.483196', '/myapp/admin/order/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1076, '127.0.0.1', '2024-06-09 10:57:58.602244', '/myapp/admin/order/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1077, '127.0.0.1', '2024-06-09 10:58:31.082146', '/myapp/admin/order/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1078, '127.0.0.1', '2024-06-09 10:58:35.771865', '/myapp/admin/order/cancel_order', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (1079, '127.0.0.1', '2024-06-09 10:58:35.880432', '/myapp/admin/order/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1080, '127.0.0.1', '2024-06-09 10:59:00.834543', '/myapp/admin/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1081, '127.0.0.1', '2024-06-09 10:59:38.815294', '/myapp/admin/order/cancel_order', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (1082, '127.0.0.1', '2024-06-09 10:59:38.950769', '/myapp/admin/order/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1083, '127.0.0.1', '2024-06-09 10:59:43.266857', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1084, '127.0.0.1', '2024-06-09 10:59:43.276202', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1085, '127.0.0.1', '2024-06-09 10:59:43.348159', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1086, '127.0.0.1', '2024-06-09 10:59:43.352294', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1087, '127.0.0.1', '2024-06-09 10:59:43.374958', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1088, '127.0.0.1', '2024-06-09 10:59:43.402764', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1089, '127.0.0.1', '2024-06-09 10:59:43.421171', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1090, '127.0.0.1', '2024-06-09 10:59:43.482867', '/upload/cover/1717898259968.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1091, '127.0.0.1', '2024-06-09 10:59:51.549695', '/myapp/admin/order/delete', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (1092, '127.0.0.1', '2024-06-09 10:59:51.626530', '/myapp/admin/order/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1093, '127.0.0.1', '2024-06-09 11:00:05.685779', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1094, '127.0.0.1', '2024-06-09 11:00:05.815388', '/myapp/admin/classification/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (1095, '127.0.0.1', '2024-06-09 11:00:07.078670', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1096, '127.0.0.1', '2024-06-09 11:00:09.936699', '/myapp/admin/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1097, '127.0.0.1', '2024-06-09 11:00:13.351021', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1098, '127.0.0.1', '2024-06-09 11:00:13.973628', '/myapp/admin/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1099, '127.0.0.1', '2024-06-09 11:00:18.570079', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1100, '127.0.0.1', '2024-06-09 11:00:18.577283', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1101, '127.0.0.1', '2024-06-09 11:00:18.586739', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1102, '127.0.0.1', '2024-06-09 11:00:18.637425', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1103, '127.0.0.1', '2024-06-09 11:00:18.712457', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1104, '127.0.0.1', '2024-06-09 11:00:18.715711', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1105, '127.0.0.1', '2024-06-09 11:00:18.727169', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1106, '127.0.0.1', '2024-06-09 11:00:18.748451', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1107, '127.0.0.1', '2024-06-09 11:00:18.749454', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1108, '127.0.0.1', '2024-06-09 11:00:18.761966', '/upload/cover/1717897911139.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1109, '127.0.0.1', '2024-06-09 11:00:18.780392', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1110, '127.0.0.1', '2024-06-09 11:00:18.780392', '/upload/cover/1717897737150.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1111, '127.0.0.1', '2024-06-09 11:00:18.782743', '/upload/cover/1717897842900.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1112, '127.0.0.1', '2024-06-09 11:00:19.804688', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1113, '127.0.0.1', '2024-06-09 11:00:19.824965', '/myapp/admin/ad/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1114, '127.0.0.1', '2024-06-09 11:00:19.847065', '/myapp/admin/ad/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (1115, '127.0.0.1', '2024-06-09 11:00:19.864977', '/myapp/admin/ad/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (1116, '127.0.0.1', '2024-06-09 11:00:19.892851', '/myapp/admin/ad/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (1117, '127.0.0.1', '2024-06-09 11:00:19.898872', '/myapp/admin/ad/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (1118, '127.0.0.1', '2024-06-09 11:00:24.146712', '/myapp/index/comment/create', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (1119, '127.0.0.1', '2024-06-09 11:00:24.212561', '/myapp/index/comment/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1120, '127.0.0.1', '2024-06-09 11:00:26.535350', '/myapp/index/comment/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (1121, '127.0.0.1', '2024-06-09 11:00:26.601266', '/myapp/index/comment/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1122, '127.0.0.1', '2024-06-09 11:00:28.492211', '/myapp/index/comment/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (1123, '127.0.0.1', '2024-06-09 11:00:46.256777', '/myapp/index/comment/create', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (1124, '127.0.0.1', '2024-06-09 11:00:46.314475', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1125, '127.0.0.1', '2024-06-09 11:00:49.892745', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1126, '127.0.0.1', '2024-06-09 11:00:49.906575', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1127, '127.0.0.1', '2024-06-09 11:00:49.914563', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1128, '127.0.0.1', '2024-06-09 11:00:49.945888', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1129, '127.0.0.1', '2024-06-09 11:00:50.650543', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1130, '127.0.0.1', '2024-06-09 11:00:50.653533', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1131, '127.0.0.1', '2024-06-09 11:00:50.666167', '/myapp/admin/ad/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1132, '127.0.0.1', '2024-06-09 11:00:50.677218', '/myapp/admin/ad/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1133, '127.0.0.1', '2024-06-09 11:00:50.706602', '/myapp/admin/ad/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1134, '127.0.0.1', '2024-06-09 11:00:50.709596', '/myapp/admin/ad/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1135, '127.0.0.1', '2024-06-09 11:00:54.541173', '/myapp/index/comment/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (1136, '127.0.0.1', '2024-06-09 11:00:54.579017', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1137, '127.0.0.1', '2024-06-09 11:00:56.090325', '/myapp/index/comment/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1138, '127.0.0.1', '2024-06-09 11:00:56.159165', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1139, '127.0.0.1', '2024-06-09 11:00:57.303609', '/myapp/index/comment/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (1140, '127.0.0.1', '2024-06-09 11:00:57.369845', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1141, '127.0.0.1', '2024-06-09 11:00:58.526731', '/myapp/index/comment/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (1142, '127.0.0.1', '2024-06-09 11:00:58.604506', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1143, '127.0.0.1', '2024-06-09 11:00:59.655130', '/myapp/index/comment/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1144, '127.0.0.1', '2024-06-09 11:00:59.720074', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1145, '127.0.0.1', '2024-06-09 11:01:01.109158', '/myapp/index/comment/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (1146, '127.0.0.1', '2024-06-09 11:01:01.178959', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1147, '127.0.0.1', '2024-06-09 11:01:03.287131', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1148, '127.0.0.1', '2024-06-09 11:01:03.308019', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1149, '127.0.0.1', '2024-06-09 11:01:03.316628', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1150, '127.0.0.1', '2024-06-09 11:01:03.376182', '/myapp/admin/ad/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1151, '127.0.0.1', '2024-06-09 11:01:03.387324', '/myapp/admin/ad/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (1152, '127.0.0.1', '2024-06-09 11:01:03.420420', '/myapp/admin/ad/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (1153, '127.0.0.1', '2024-06-09 11:01:03.442441', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1154, '127.0.0.1', '2024-06-09 11:01:07.844496', '/myapp/index/comment/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (1155, '127.0.0.1', '2024-06-09 11:01:07.924033', '/myapp/index/comment/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1156, '127.0.0.1', '2024-06-09 11:01:09.620897', '/myapp/index/comment/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1157, '127.0.0.1', '2024-06-09 11:01:09.686514', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1158, '127.0.0.1', '2024-06-09 11:01:11.137595', '/myapp/index/comment/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (1159, '127.0.0.1', '2024-06-09 11:01:11.213492', '/myapp/index/comment/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (1160, '127.0.0.1', '2024-06-09 11:01:12.948422', '/myapp/index/comment/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (1161, '127.0.0.1', '2024-06-09 11:01:13.049458', '/myapp/index/comment/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (1162, '127.0.0.1', '2024-06-09 11:01:14.287378', '/myapp/index/comment/create', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (1163, '127.0.0.1', '2024-06-09 11:01:14.390636', '/myapp/index/comment/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (1164, '127.0.0.1', '2024-06-09 11:01:15.924050', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1165, '127.0.0.1', '2024-06-09 11:01:15.922028', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1166, '127.0.0.1', '2024-06-09 11:01:15.932522', '/myapp/index/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1167, '127.0.0.1', '2024-06-09 11:01:15.990911', '/myapp/index/classification/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (1168, '127.0.0.1', '2024-06-09 11:01:16.953605', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1169, '127.0.0.1', '2024-06-09 11:01:16.960809', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1170, '127.0.0.1', '2024-06-09 11:01:16.972167', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1171, '127.0.0.1', '2024-06-09 11:01:16.997167', '/myapp/index/comment/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1172, '127.0.0.1', '2024-06-09 11:01:17.039774', '/myapp/index/comment/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1173, '127.0.0.1', '2024-06-09 11:01:17.046767', '/myapp/index/comment/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (1174, '127.0.0.1', '2024-06-09 11:01:20.453255', '/myapp/index/comment/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (1175, '127.0.0.1', '2024-06-09 11:01:20.492910', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1176, '127.0.0.1', '2024-06-09 11:01:21.546891', '/myapp/index/comment/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1177, '127.0.0.1', '2024-06-09 11:01:21.608060', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1178, '127.0.0.1', '2024-06-09 11:01:22.913705', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1179, '127.0.0.1', '2024-06-09 11:01:22.931314', '/myapp/index/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1180, '127.0.0.1', '2024-06-09 11:01:22.939318', '/myapp/index/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1181, '127.0.0.1', '2024-06-09 11:01:22.998493', '/myapp/index/classification/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1182, '127.0.0.1', '2024-06-09 11:01:23.901912', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1183, '127.0.0.1', '2024-06-09 11:01:23.908904', '/myapp/index/thing/getRecommend', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1184, '127.0.0.1', '2024-06-09 11:01:23.920543', '/myapp/index/thing/getRecommend', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1185, '127.0.0.1', '2024-06-09 11:01:23.929120', '/myapp/index/thing/getRecommend', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1186, '127.0.0.1', '2024-06-09 11:01:23.969354', '/myapp/index/thing/getRecommend', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (1187, '127.0.0.1', '2024-06-09 11:01:23.987939', '/myapp/index/thing/getRecommend', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (1188, '127.0.0.1', '2024-06-09 11:01:27.842090', '/myapp/index/comment/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (1189, '127.0.0.1', '2024-06-09 11:01:27.890814', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1190, '127.0.0.1', '2024-06-09 11:01:29.427888', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1191, '127.0.0.1', '2024-06-09 11:01:29.434254', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1192, '127.0.0.1', '2024-06-09 11:01:29.464998', '/myapp/index/user/info', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1193, '127.0.0.1', '2024-06-09 11:01:29.497096', '/myapp/index/user/info', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1194, '127.0.0.1', '2024-06-09 11:01:31.315709', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1195, '127.0.0.1', '2024-06-09 11:01:31.324719', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1196, '127.0.0.1', '2024-06-09 11:01:31.342961', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1197, '127.0.0.1', '2024-06-09 11:01:31.376290', '/myapp/admin/ad/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (1198, '127.0.0.1', '2024-06-09 11:01:31.394588', '/myapp/admin/ad/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1199, '127.0.0.1', '2024-06-09 11:01:31.410024', '/myapp/admin/ad/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (1200, '127.0.0.1', '2024-06-09 11:01:34.564740', '/myapp/index/comment/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (1201, '127.0.0.1', '2024-06-09 11:01:34.629620', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1202, '127.0.0.1', '2024-06-09 11:01:35.862735', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1203, '127.0.0.1', '2024-06-09 11:01:35.868655', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1204, '127.0.0.1', '2024-06-09 11:01:35.876264', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1205, '127.0.0.1', '2024-06-09 11:01:35.937011', '/myapp/index/thing/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (1206, '127.0.0.1', '2024-06-09 11:01:37.018677', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1207, '127.0.0.1', '2024-06-09 11:01:37.028680', '/myapp/index/thing/getRecommend', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1208, '127.0.0.1', '2024-06-09 11:01:37.056329', '/myapp/index/thing/getRecommend', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1209, '127.0.0.1', '2024-06-09 11:01:37.048566', '/myapp/index/thing/getRecommend', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (1210, '127.0.0.1', '2024-06-09 11:01:37.111652', '/myapp/index/thing/getRecommend', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (1211, '127.0.0.1', '2024-06-09 11:01:37.124754', '/myapp/index/thing/getRecommend', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (1212, '127.0.0.1', '2024-06-09 11:01:39.939960', '/myapp/index/comment/create', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (1213, '127.0.0.1', '2024-06-09 11:01:39.990972', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1214, '127.0.0.1', '2024-06-09 11:01:41.296863', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1215, '127.0.0.1', '2024-06-09 11:01:41.308482', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1216, '127.0.0.1', '2024-06-09 11:01:41.324486', '/myapp/index/user/info', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1217, '127.0.0.1', '2024-06-09 11:01:41.377620', '/myapp/index/user/info', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (1218, '127.0.0.1', '2024-06-09 11:01:42.451522', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1219, '127.0.0.1', '2024-06-09 11:01:42.469030', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1220, '127.0.0.1', '2024-06-09 11:01:42.479518', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1221, '127.0.0.1', '2024-06-09 11:01:42.498771', '/myapp/index/thing/detail', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1222, '127.0.0.1', '2024-06-09 11:01:42.523127', '/myapp/index/thing/detail', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (1223, '127.0.0.1', '2024-06-09 11:01:42.544461', '/myapp/index/thing/detail', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (1224, '127.0.0.1', '2024-06-09 11:01:45.992386', '/myapp/index/comment/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (1225, '127.0.0.1', '2024-06-09 11:01:46.056325', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1226, '127.0.0.1', '2024-06-09 11:01:47.355598', '/myapp/index/comment/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (1227, '127.0.0.1', '2024-06-09 11:01:47.393509', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1228, '127.0.0.1', '2024-06-09 11:01:48.797953', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1229, '127.0.0.1', '2024-06-09 11:01:48.812262', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1230, '127.0.0.1', '2024-06-09 11:01:48.835744', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1231, '127.0.0.1', '2024-06-09 11:01:48.881803', '/myapp/index/thing/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (1232, '127.0.0.1', '2024-06-09 11:01:49.977220', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1233, '127.0.0.1', '2024-06-09 11:01:49.989762', '/myapp/admin/ad/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1234, '127.0.0.1', '2024-06-09 11:01:49.995795', '/myapp/admin/ad/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1235, '127.0.0.1', '2024-06-09 11:01:49.999786', '/myapp/admin/ad/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1236, '127.0.0.1', '2024-06-09 11:01:50.061573', '/myapp/admin/ad/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1237, '127.0.0.1', '2024-06-09 11:01:50.074559', '/myapp/admin/ad/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (1238, '127.0.0.1', '2024-06-09 11:01:52.986884', '/myapp/index/comment/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (1239, '127.0.0.1', '2024-06-09 11:01:53.044521', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1240, '127.0.0.1', '2024-06-09 11:01:53.890853', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1241, '127.0.0.1', '2024-06-09 11:01:53.899855', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1242, '127.0.0.1', '2024-06-09 11:01:53.904780', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1243, '127.0.0.1', '2024-06-09 11:01:53.962566', '/myapp/index/thing/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (1244, '127.0.0.1', '2024-06-09 11:01:54.903149', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1245, '127.0.0.1', '2024-06-09 11:01:54.986481', '/myapp/admin/ad/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1246, '127.0.0.1', '2024-06-09 11:01:54.992065', '/myapp/admin/ad/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (1247, '127.0.0.1', '2024-06-09 11:01:55.020434', '/myapp/admin/ad/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (1248, '127.0.0.1', '2024-06-09 11:01:55.066311', '/myapp/admin/ad/list', 'GET', NULL, '188');
INSERT INTO `b_op_log` VALUES (1249, '127.0.0.1', '2024-06-09 11:01:55.079731', '/myapp/admin/ad/list', 'GET', NULL, '202');
INSERT INTO `b_op_log` VALUES (1250, '127.0.0.1', '2024-06-09 11:01:58.864657', '/myapp/index/comment/create', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (1251, '127.0.0.1', '2024-06-09 11:01:58.894982', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1252, '127.0.0.1', '2024-06-09 11:01:59.965974', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1253, '127.0.0.1', '2024-06-09 11:01:59.985068', '/myapp/index/classification/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1254, '127.0.0.1', '2024-06-09 11:02:00.005974', '/myapp/index/classification/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1255, '127.0.0.1', '2024-06-09 11:02:00.053072', '/myapp/index/classification/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (1256, '127.0.0.1', '2024-06-09 11:02:00.085068', '/upload/cover/1717898296187.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1257, '127.0.0.1', '2024-06-09 11:02:01.589246', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1258, '127.0.0.1', '2024-06-09 11:02:01.600248', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1259, '127.0.0.1', '2024-06-09 11:02:01.608898', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1260, '127.0.0.1', '2024-06-09 11:02:01.654059', '/myapp/index/comment/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (1261, '127.0.0.1', '2024-06-09 11:02:01.665054', '/myapp/index/comment/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (1262, '127.0.0.1', '2024-06-09 11:02:01.670062', '/myapp/index/comment/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (1263, '127.0.0.1', '2024-06-09 11:02:05.240557', '/myapp/index/comment/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (1264, '127.0.0.1', '2024-06-09 11:02:05.288678', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1265, '127.0.0.1', '2024-06-09 11:02:07.558722', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1266, '127.0.0.1', '2024-06-09 11:02:07.569551', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1267, '127.0.0.1', '2024-06-09 11:02:07.582541', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1268, '127.0.0.1', '2024-06-09 11:02:07.628654', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1269, '127.0.0.1', '2024-06-09 11:02:12.890400', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1270, '127.0.0.1', '2024-06-09 11:02:13.550941', '/myapp/admin/comment/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (1271, '127.0.0.1', '2024-06-09 11:02:21.157914', '/myapp/admin/user/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1272, '127.0.0.1', '2024-06-09 11:02:35.846710', '/myapp/admin/user/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (1273, '127.0.0.1', '2024-06-09 11:02:35.940626', '/myapp/admin/user/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1274, '127.0.0.1', '2024-06-09 11:02:43.410051', '/myapp/admin/comment/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1275, '127.0.0.1', '2024-06-09 11:02:43.435777', '/myapp/admin/user/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1276, '127.0.0.1', '2024-06-09 11:02:53.296041', '/myapp/admin/user/create', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (1277, '127.0.0.1', '2024-06-09 11:02:53.354070', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1278, '127.0.0.1', '2024-06-09 11:03:06.705765', '/myapp/admin/user/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (1279, '127.0.0.1', '2024-06-09 11:03:06.769733', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1280, '127.0.0.1', '2024-06-09 11:03:21.272353', '/myapp/admin/user/create', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (1281, '127.0.0.1', '2024-06-09 11:03:21.355877', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1282, '127.0.0.1', '2024-06-09 11:03:28.326696', '/myapp/admin/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1283, '127.0.0.1', '2024-06-09 11:03:31.541249', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1284, '127.0.0.1', '2024-06-09 11:03:31.564838', '/myapp/admin/ad/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1285, '127.0.0.1', '2024-06-09 11:03:31.569835', '/myapp/admin/ad/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1286, '127.0.0.1', '2024-06-09 11:03:31.642419', '/myapp/admin/ad/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (1287, '127.0.0.1', '2024-06-09 11:03:31.663013', '/myapp/admin/ad/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (1288, '127.0.0.1', '2024-06-09 11:03:31.668985', '/myapp/admin/ad/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (1289, '127.0.0.1', '2024-06-09 11:03:32.898836', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1290, '127.0.0.1', '2024-06-09 11:03:32.912921', '/myapp/index/thing/getRecommend', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1291, '127.0.0.1', '2024-06-09 11:03:32.914936', '/myapp/index/thing/getRecommend', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1292, '127.0.0.1', '2024-06-09 11:03:32.933306', '/myapp/index/thing/getRecommend', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1293, '127.0.0.1', '2024-06-09 11:03:32.949729', '/myapp/index/thing/getRecommend', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1294, '127.0.0.1', '2024-06-09 11:03:32.954849', '/myapp/index/thing/getRecommend', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1295, '127.0.0.1', '2024-06-09 11:03:50.160797', '/myapp/index/order/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (1296, '127.0.0.1', '2024-06-09 11:03:50.254879', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1297, '127.0.0.1', '2024-06-09 11:03:50.266336', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1298, '127.0.0.1', '2024-06-09 11:03:51.932249', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1299, '127.0.0.1', '2024-06-09 11:03:51.940255', '/myapp/index/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1300, '127.0.0.1', '2024-06-09 11:03:51.950252', '/myapp/index/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1301, '127.0.0.1', '2024-06-09 11:03:52.017651', '/myapp/index/classification/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (1302, '127.0.0.1', '2024-06-09 11:03:53.742259', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1303, '127.0.0.1', '2024-06-09 11:03:53.752691', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1304, '127.0.0.1', '2024-06-09 11:03:53.755210', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1305, '127.0.0.1', '2024-06-09 11:03:53.793707', '/myapp/index/user/info', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1306, '127.0.0.1', '2024-06-09 11:03:53.804709', '/myapp/index/user/info', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1307, '127.0.0.1', '2024-06-09 11:03:53.824726', '/myapp/index/user/info', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (1308, '127.0.0.1', '2024-06-09 11:03:55.136080', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1309, '127.0.0.1', '2024-06-09 11:03:55.151097', '/myapp/index/notice/list_api', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1310, '127.0.0.1', '2024-06-09 11:03:55.161004', '/myapp/index/notice/list_api', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1311, '127.0.0.1', '2024-06-09 11:03:55.189763', '/myapp/index/notice/list_api', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1312, '127.0.0.1', '2024-06-09 11:03:55.213727', '/myapp/index/notice/list_api', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (1313, '127.0.0.1', '2024-06-09 11:03:55.217751', '/myapp/index/notice/list_api', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1314, '127.0.0.1', '2024-06-09 11:04:20.590504', '/myapp/index/order/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1315, '127.0.0.1', '2024-06-09 11:04:20.656518', '/myapp/index/notice/list_api', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1316, '127.0.0.1', '2024-06-09 11:04:20.688910', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1317, '127.0.0.1', '2024-06-09 11:04:22.970920', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1318, '127.0.0.1', '2024-06-09 11:04:23.731366', '/myapp/admin/order/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1319, '127.0.0.1', '2024-06-09 11:04:31.480945', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1320, '127.0.0.1', '2024-06-09 11:04:31.487895', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1321, '127.0.0.1', '2024-06-09 11:04:31.491246', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1322, '127.0.0.1', '2024-06-09 11:04:31.548740', '/myapp/index/thing/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (1323, '127.0.0.1', '2024-06-09 11:04:33.225710', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1324, '127.0.0.1', '2024-06-09 11:04:33.248081', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1325, '127.0.0.1', '2024-06-09 11:04:33.254144', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1326, '127.0.0.1', '2024-06-09 11:04:33.283555', '/myapp/index/comment/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1327, '127.0.0.1', '2024-06-09 11:04:33.313912', '/myapp/index/comment/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (1328, '127.0.0.1', '2024-06-09 11:04:33.327196', '/myapp/index/comment/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (1329, '127.0.0.1', '2024-06-09 11:04:34.374707', '/myapp/index/notice/list_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1330, '127.0.0.1', '2024-06-09 11:04:34.383321', '/myapp/index/notice/list_api', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1331, '127.0.0.1', '2024-06-09 11:04:34.390381', '/myapp/index/notice/list_api', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1332, '127.0.0.1', '2024-06-09 11:04:34.434845', '/myapp/index/notice/list_api', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (1333, '127.0.0.1', '2024-06-09 11:04:34.444647', '/myapp/index/notice/list_api', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (1334, '127.0.0.1', '2024-06-09 11:04:34.452741', '/myapp/index/notice/list_api', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (1335, '127.0.0.1', '2024-06-09 11:04:57.016635', '/myapp/index/order/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (1336, '127.0.0.1', '2024-06-09 11:04:57.071036', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1337, '127.0.0.1', '2024-06-09 11:04:57.080366', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1338, '127.0.0.1', '2024-06-09 11:04:59.533273', '/myapp/admin/user/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1339, '127.0.0.1', '2024-06-09 11:05:00.110307', '/myapp/admin/order/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (1340, '127.0.0.1', '2024-06-09 11:05:05.250502', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1341, '127.0.0.1', '2024-06-09 11:05:20.111406', '/myapp/admin/ad/create', 'POST', NULL, '258');
INSERT INTO `b_op_log` VALUES (1342, '127.0.0.1', '2024-06-09 11:05:20.147412', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1343, '127.0.0.1', '2024-06-09 11:05:20.208984', '/upload/ad/1717902315951.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1344, '127.0.0.1', '2024-06-09 11:05:46.844440', '/myapp/admin/ad/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (1345, '127.0.0.1', '2024-06-09 11:05:46.912441', '/myapp/admin/ad/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1346, '127.0.0.1', '2024-06-09 11:05:46.983874', '/upload/ad/1717902334269.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1347, '127.0.0.1', '2024-06-09 11:05:54.545794', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1348, '127.0.0.1', '2024-06-09 11:05:54.549742', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1349, '127.0.0.1', '2024-06-09 11:05:54.555743', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1350, '127.0.0.1', '2024-06-09 11:05:54.588262', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1351, '127.0.0.1', '2024-06-09 11:06:25.045348', '/myapp/admin/notice/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1352, '127.0.0.1', '2024-06-09 11:06:33.125434', '/myapp/admin/notice/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (1353, '127.0.0.1', '2024-06-09 11:06:33.170286', '/myapp/admin/notice/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1354, '127.0.0.1', '2024-06-09 11:06:44.962711', '/myapp/admin/notice/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (1355, '127.0.0.1', '2024-06-09 11:06:45.004272', '/myapp/admin/notice/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1356, '127.0.0.1', '2024-06-09 11:06:54.646492', '/myapp/admin/notice/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (1357, '127.0.0.1', '2024-06-09 11:06:54.704887', '/myapp/admin/notice/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1358, '127.0.0.1', '2024-06-09 11:06:56.595576', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1359, '127.0.0.1', '2024-06-09 11:06:56.655021', '/upload/ad/1717902315951.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1360, '127.0.0.1', '2024-06-09 11:06:56.657035', '/upload/ad/1717902315951.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1361, '127.0.0.1', '2024-06-09 11:07:00.681274', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1362, '127.0.0.1', '2024-06-09 11:07:00.684519', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1363, '127.0.0.1', '2024-06-09 11:07:00.693737', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1364, '127.0.0.1', '2024-06-09 11:07:00.722749', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1365, '127.0.0.1', '2024-06-09 11:07:00.729275', '/upload/avatar/1717899424130.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1366, '127.0.0.1', '2024-06-09 11:07:00.770529', '/upload/cover/1717898229777.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1367, '127.0.0.1', '2024-06-09 11:07:00.771528', '/upload/cover/1717898229777.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1368, '127.0.0.1', '2024-06-09 11:07:00.787407', '/upload/cover/1717898117620.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1369, '127.0.0.1', '2024-06-09 11:07:00.791634', '/upload/cover/1717899140740.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1370, '127.0.0.1', '2024-06-09 11:07:00.797628', '/upload/cover/1717898085654.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1371, '127.0.0.1', '2024-06-09 11:07:00.797628', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1372, '127.0.0.1', '2024-06-09 11:07:00.798626', '/upload/cover/1717898053533.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1373, '127.0.0.1', '2024-06-09 11:07:03.267850', '/myapp/admin/notice/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1374, '127.0.0.1', '2024-06-09 11:07:05.453782', '/myapp/admin/loginLog/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1375, '127.0.0.1', '2024-06-09 11:07:06.420258', '/myapp/admin/opLog/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1376, '127.0.0.1', '2024-06-09 11:07:08.540015', '/myapp/admin/loginLog/list', 'GET', NULL, '12');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `receiver_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1717901000171', 1, '1', '2024-06-09 10:43:20.186652', '刘德华', '12233', 'aaa', 11, 2, '3211111', '周三');
INSERT INTO `b_order` VALUES (2, '1717901577300', 1, '2', '2024-06-09 10:52:57.312802', '刘德华', '322222', 'bsdas', 12, 2, '123333', '周五');
INSERT INTO `b_order` VALUES (4, '1717902230126', 1, '1', '2024-06-09 11:03:50.139363', '王小利', '12333', '', 10, 2, '376666187790998876', '周五');
INSERT INTO `b_order` VALUES (5, '1717902260561', 1, '1', '2024-06-09 11:04:20.573028', '刘光泽', '13877665566', '', 5, 2, '371266778877665569', '周四');
INSERT INTO `b_order` VALUES (6, '1717902296990', 1, '1', '2024-06-09 11:04:57.001781', '王海平', '138777779999', '', 4, 2, '371289887788901876', '周四');
INSERT INTO `b_order` VALUES (7, '1717917098951', 1, '1', '2024-06-09 15:11:38.958183', '肖秦', '12344', '', 12, 7, '1233222', '周日');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 11, 26, '127.0.0.1');
INSERT INTO `b_record` VALUES (2, 12, 16, '127.0.0.1');
INSERT INTO `b_record` VALUES (3, 10, 9, '127.0.0.1');
INSERT INTO `b_record` VALUES (4, 9, 6, '127.0.0.1');
INSERT INTO `b_record` VALUES (5, 8, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (6, 7, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (7, 6, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (8, 5, 3, '127.0.0.2');
INSERT INTO `b_record` VALUES (9, 4, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (10, 3, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (11, 2, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (12, 1, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (13, 2, 4, '127.0.0.1');
INSERT INTO `b_record` VALUES (14, 3, 4, '127.0.0.1');
INSERT INTO `b_record` VALUES (15, 5, 3, '127.0.0.1');
INSERT INTO `b_record` VALUES (16, 4, 6, '127.0.0.1');
INSERT INTO `b_record` VALUES (17, 1, 3, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhicheng` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `expert` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zzsj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '王明阳', 'cover/1717897842900.jpeg', '一位备受尊重和信赖的医生，拥有超过25年的临床经验。他毕业于顶尖医学院，获得内科医学博士学位，并曾在多家医院担任主治医生和医务主管职务。该医生深谙内科学术精髓，擅长诊断和治疗各种复杂疾病，包括心血管疾病、糖尿病、肾脏疾病等。他在疾病的早期筛查和防治方面具有独到见解，始终坚持对每位患者进行全面评估和个性化治疗。', '122', '1233222', '22', '男', '主任医师', '0', '2024-06-08 21:31:22.755615', 4, 0, 0, 0, 7, NULL, 3, '是', '周三,周五,周六,周日');
INSERT INTO `b_thing` VALUES (2, '周杰伦', 'cover/1717897737150.jpeg', '一位备受尊重和信赖的医生，拥有超过25年的临床经验。他毕业于顶尖医学院，获得内科医学博士学位，并曾在多家医院担任主治医生和医务主管职务。该医生深谙内科学术精髓，擅长诊断和治疗各种复杂疾病，包括心血管疾病、糖尿病、肾脏疾病等。他在疾病的早期筛查和防治方面具有独到见解，始终坚持对每位患者进行全面评估和个性化治疗。', '322', '12322222222', '24', '男', '主任医师', '0', '2024-06-09 09:49:16.126676', 5, 0, 1, 1, 6, NULL, 3, '是', '周五,周三,周六');
INSERT INTO `b_thing` VALUES (3, '周平', 'cover/1717897878669.jpeg', '一位备受尊重和信赖的医生，拥有超过25年的临床经验。他毕业于顶尖医学院，获得内科医学博士学位，并曾在多家医院担任主治医生和医务主管职务。该医生深谙内科学术精髓，擅长诊断和治疗各种复杂疾病，包括心血管疾病、糖尿病、肾脏疾病等。他在疾病的早期筛查和防治方面具有独到见解，始终坚持对每位患者进行全面评估和个性化治疗。', '23', '12322222', '33', '男', '副主任医师', '0', '2024-06-09 09:51:34.303830', 5, 0, 0, 1, 5, NULL, 3, '是', '周三,周二,周日');
INSERT INTO `b_thing` VALUES (4, '吴家明', 'cover/1717897911139.jpeg', '一位备受尊重和信赖的医生，拥有超过25年的临床经验。他毕业于顶尖医学院，获得内科医学博士学位，并曾在多家医院担任主治医生和医务主管职务。该医生深谙内科学术精髓，擅长诊断和治疗各种复杂疾病，包括心血管疾病、糖尿病、肾脏疾病等。他在疾病的早期筛查和防治方面具有独到见解，始终坚持对每位患者进行全面评估和个性化治疗。', '33', '123333', '23', '男', '主任医师', '0', '2024-06-09 09:52:06.643205', 7, 0, 1, 1, 4, NULL, 3, '是', '周三,周四,周日');
INSERT INTO `b_thing` VALUES (5, '张晓同', 'cover/1717899140740.jpeg', '一位备受尊重和信赖的医生，拥有超过25年的临床经验。他毕业于顶尖医学院，获得内科医学博士学位，并曾在多家医院担任主治医生和医务主管职务。该医生深谙内科学术精髓，擅长诊断和治疗各种复杂疾病，包括心血管疾病、糖尿病、肾脏疾病等。他在疾病的早期筛查和防治方面具有独到见解，始终坚持对每位患者进行全面评估和个性化治疗。', '33', '123222', '34', '女', '医师', '0', '2024-06-09 09:53:56.304026', 6, 0, 0, 0, 3, NULL, 3, '否', '周四,周五,周日');
INSERT INTO `b_thing` VALUES (6, '王庆民', 'cover/1717898053533.jpeg', '一位备受尊重和信赖的医生，拥有超过25年的临床经验。他毕业于顶尖医学院，获得内科医学博士学位，并曾在多家医院担任主治医生和医务主管职务。该医生深谙内科学术精髓，擅长诊断和治疗各种复杂疾病，包括心血管疾病、糖尿病、肾脏疾病等。他在疾病的早期筛查和防治方面具有独到见解，始终坚持对每位患者进行全面评估和个性化治疗。', '45', '2311222', '45', '男', '主任医师', '0', '2024-06-09 09:54:29.304857', 1, 0, 0, 0, 2, NULL, 3, '是', '周五,周六,周日');
INSERT INTO `b_thing` VALUES (7, '李庆利', 'cover/1717898085654.jpeg', '一位备受尊重和信赖的医生，拥有超过25年的临床经验。他毕业于顶尖医学院，获得内科医学博士学位，并曾在多家医院担任主治医生和医务主管职务。该医生深谙内科学术精髓，擅长诊断和治疗各种复杂疾病，包括心血管疾病、糖尿病、肾脏疾病等。他在疾病的早期筛查和防治方面具有独到见解，始终坚持对每位患者进行全面评估和个性化治疗。', '33', '3211222', '43', '男', '主治医师', '0', '2024-06-09 09:55:00.370805', 2, 0, 0, 0, 1, NULL, 3, '是', '周三,周日');
INSERT INTO `b_thing` VALUES (8, '赵明诚', 'cover/1717898117620.jpeg', '一位备受尊重和信赖的医生，拥有超过25年的临床经验。他毕业于顶尖医学院，获得内科医学博士学位，并曾在多家医院担任主治医生和医务主管职务。该医生深谙内科学术精髓，擅长诊断和治疗各种复杂疾病，包括心血管疾病、糖尿病、肾脏疾病等。他在疾病的早期筛查和防治方面具有独到见解，始终坚持对每位患者进行全面评估和个性化治疗。', '43', '3221111', '32', '男', '医师', '0', '2024-06-09 09:55:33.401199', 1, 0, 0, 0, 7, NULL, 3, '否', '周四,周五,周六,周日');
INSERT INTO `b_thing` VALUES (9, '周晓斌', 'cover/1717898194943.jpeg', '一位备受尊重和信赖的医生，拥有超过25年的临床经验。他毕业于顶尖医学院，获得内科医学博士学位，并曾在多家医院担任主治医生和医务主管职务。该医生深谙内科学术精髓，擅长诊断和治疗各种复杂疾病，包括心血管疾病、糖尿病、肾脏疾病等。他在疾病的早期筛查和防治方面具有独到见解，始终坚持对每位患者进行全面评估和个性化治疗。', '23', '123222', '32', '男', '主任医师', '0', '2024-06-09 09:56:51.205718', 6, 0, 0, 0, 7, NULL, 4, '是', '周一,周二,周三,周日');
INSERT INTO `b_thing` VALUES (10, '郑西坡', 'cover/1717898229777.jpeg', '该医生是一位备受尊重和信赖的医生，拥有超过25年的临床经验。他毕业于顶尖医学院，获得内科医学博士学位，并曾在多家医院担任主治医生和医务主管职务。该医生深谙内科学术精髓，擅长诊断和治疗各种复杂疾病，包括心血管疾病、糖尿病、肾脏疾病等。他在疾病的早期筛查和防治方面具有独到见解，始终坚持对每位患者进行全面评估和个性化治疗。', '32', '1232222', '32', '男', '副主任医师', '0', '2024-06-09 09:57:25.376755', 9, 0, 1, 1, 6, NULL, 3, '否', '周四,周五,周六,周日');
INSERT INTO `b_thing` VALUES (11, '徐连城', 'cover/1717898259968.jpeg', '该医生是一位备受尊重和信赖的医生，拥有超过25年的临床经验。他毕业于顶尖医学院，获得内科医学博士学位，并曾在多家医院担任主治医生和医务主管职务。该医生深谙内科学术精髓，擅长诊断和治疗各种复杂疾病，包括心血管疾病、糖尿病、肾脏疾病等。他在疾病的早期筛查和防治方面具有独到见解，始终坚持对每位患者进行全面评估和个性化治疗。', '55', '55554433', '55', '男', '主任医师', '0', '2024-06-09 09:57:53.604044', 26, 0, 1, 1, 5, NULL, 3, '是', '周五,周六,周日');
INSERT INTO `b_thing` VALUES (12, '李达康', 'cover/1717898296187.jpeg', '该医生是一位备受尊重和信赖的医生，拥有超过25年的临床经验。他毕业于顶尖医学院，获得内科医学博士学位，并曾在多家医院担任主治医生和医务主管职务。该医生深谙内科学术精髓，擅长诊断和治疗各种复杂疾病，包括心血管疾病、糖尿病、肾脏疾病等。他在疾病的早期筛查和防治方面具有独到见解，始终坚持对每位患者进行全面评估和个性化治疗。\r\n该医生以其卓越的医术和专业精神赢得了患者的一致好评。他是一位极具耐心和敬业精神的医生，总是倾听患者的需求和疑虑，为他们提供最贴心和细致的医疗服务。无论是制定治疗方案、解答疑问还是提供生活指导，该医生都展现出专业、亲切和关怀的态度，让患者感受到家庭般的温暖和安心。\r\n\r\n除了在临床工作中表现出色，该医生还积极参与医疗教育和学术研究，多次在国际学术期刊上发表论文和演讲。他不断更新医学知识，追求医学进步，致力于提升医疗水平和质量。作为一名敬业的医生，他始终将患者健康放在首位，为每一位患者提供最专业、最可靠的医疗帮助，成为患者心目中的良医良师。', '25', '22221111', '26', '男', '主治医师', '0', '2024-06-09 09:58:32.763805', 16, 0, 1, 0, 4, NULL, 3, '否', '周五,周六,周日');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (4, 2, 2);
INSERT INTO `b_thing_collect` VALUES (5, 3, 2);
INSERT INTO `b_thing_collect` VALUES (6, 4, 2);
INSERT INTO `b_thing_collect` VALUES (3, 10, 2);
INSERT INTO `b_thing_collect` VALUES (1, 11, 2);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (4, 2, 2);
INSERT INTO `b_thing_wish` VALUES (6, 4, 2);
INSERT INTO `b_thing_wish` VALUES (3, 10, 2);
INSERT INTO `b_thing_wish` VALUES (1, 11, 2);
INSERT INTO `b_thing_wish` VALUES (2, 12, 2);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', 'dasdf333', 'avatar/1717899424130.jpeg', NULL, NULL, NULL, NULL, '2024-06-09 10:15:11.322679', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (3, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-09 11:02:35.832322', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (4, 'test003', 'db270e0074bad27c1177f31627818618', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-09 11:02:53.287482', 0, NULL, 0, NULL, 'db270e0074bad27c1177f31627818618');
INSERT INTO `b_user` VALUES (5, 'bbb', '08f8e0260c64418510cefb2b06eee5cd', '2', '1', NULL, '', NULL, NULL, NULL, NULL, '2024-06-09 11:03:06.690799', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (6, 'qqq', 'b2ca678b4c936f905fb82f2733f5297f', '2', '1', NULL, '', NULL, NULL, NULL, NULL, '2024-06-09 11:03:21.254671', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (7, 'test004', 'b990a1577e88882a43f26b232d85632b', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-09 11:14:24.286854', 0, NULL, 0, NULL, 'b990a1577e88882a43f26b232d85632b');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-06-08 21:11:52.690429');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-06-08 21:11:53.190934');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-06-08 21:11:53.304326');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-06-08 21:11:53.325829');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-08 21:11:53.349100');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-06-08 21:11:53.521719');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-06-08 21:11:53.607128');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-06-08 21:11:53.697975');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-06-08 21:11:53.713713');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-06-08 21:11:53.792732');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-06-08 21:11:53.800437');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-08 21:11:53.815758');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-06-08 21:11:53.881493');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-08 21:11:53.949656');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-06-08 21:11:54.035482');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-06-08 21:11:54.055135');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-08 21:11:54.146609');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-06-08 21:11:55.562721');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-06-08 21:11:55.647478');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-06-08 21:11:56.061660');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-06-08 21:11:56.279482');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240608_2111', '2024-06-08 21:11:56.795092');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-06-08 21:11:56.866891');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0006_auto_20240608_2121', '2024-06-08 21:21:11.975447');
INSERT INTO `django_migrations` VALUES (25, 'myapp', '0007_auto_20240609_1041', '2024-06-09 10:41:20.551281');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
