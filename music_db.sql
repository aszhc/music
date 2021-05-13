/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : music_db

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 13/05/2021 11:11:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (1, '普通管理员');
INSERT INTO `auth_group` VALUES (2, '超级管理员');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES (6, 1, 21);
INSERT INTO `auth_group_permissions` VALUES (7, 1, 22);
INSERT INTO `auth_group_permissions` VALUES (8, 1, 23);
INSERT INTO `auth_group_permissions` VALUES (9, 1, 24);
INSERT INTO `auth_group_permissions` VALUES (10, 1, 25);
INSERT INTO `auth_group_permissions` VALUES (11, 1, 26);
INSERT INTO `auth_group_permissions` VALUES (12, 1, 27);
INSERT INTO `auth_group_permissions` VALUES (13, 1, 28);
INSERT INTO `auth_group_permissions` VALUES (14, 1, 29);
INSERT INTO `auth_group_permissions` VALUES (15, 1, 30);
INSERT INTO `auth_group_permissions` VALUES (16, 1, 31);
INSERT INTO `auth_group_permissions` VALUES (1, 1, 32);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 33);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 34);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 35);
INSERT INTO `auth_group_permissions` VALUES (5, 1, 36);
INSERT INTO `auth_group_permissions` VALUES (17, 2, 1);
INSERT INTO `auth_group_permissions` VALUES (18, 2, 2);
INSERT INTO `auth_group_permissions` VALUES (19, 2, 3);
INSERT INTO `auth_group_permissions` VALUES (20, 2, 4);
INSERT INTO `auth_group_permissions` VALUES (21, 2, 5);
INSERT INTO `auth_group_permissions` VALUES (22, 2, 6);
INSERT INTO `auth_group_permissions` VALUES (23, 2, 7);
INSERT INTO `auth_group_permissions` VALUES (24, 2, 8);
INSERT INTO `auth_group_permissions` VALUES (25, 2, 9);
INSERT INTO `auth_group_permissions` VALUES (26, 2, 10);
INSERT INTO `auth_group_permissions` VALUES (27, 2, 11);
INSERT INTO `auth_group_permissions` VALUES (28, 2, 12);
INSERT INTO `auth_group_permissions` VALUES (29, 2, 13);
INSERT INTO `auth_group_permissions` VALUES (30, 2, 14);
INSERT INTO `auth_group_permissions` VALUES (31, 2, 15);
INSERT INTO `auth_group_permissions` VALUES (32, 2, 16);
INSERT INTO `auth_group_permissions` VALUES (33, 2, 17);
INSERT INTO `auth_group_permissions` VALUES (34, 2, 18);
INSERT INTO `auth_group_permissions` VALUES (35, 2, 19);
INSERT INTO `auth_group_permissions` VALUES (36, 2, 20);
INSERT INTO `auth_group_permissions` VALUES (37, 2, 21);
INSERT INTO `auth_group_permissions` VALUES (38, 2, 22);
INSERT INTO `auth_group_permissions` VALUES (39, 2, 23);
INSERT INTO `auth_group_permissions` VALUES (40, 2, 24);
INSERT INTO `auth_group_permissions` VALUES (41, 2, 25);
INSERT INTO `auth_group_permissions` VALUES (42, 2, 26);
INSERT INTO `auth_group_permissions` VALUES (43, 2, 27);
INSERT INTO `auth_group_permissions` VALUES (44, 2, 28);
INSERT INTO `auth_group_permissions` VALUES (45, 2, 29);
INSERT INTO `auth_group_permissions` VALUES (46, 2, 30);
INSERT INTO `auth_group_permissions` VALUES (47, 2, 31);
INSERT INTO `auth_group_permissions` VALUES (48, 2, 32);
INSERT INTO `auth_group_permissions` VALUES (49, 2, 33);
INSERT INTO `auth_group_permissions` VALUES (50, 2, 34);
INSERT INTO `auth_group_permissions` VALUES (51, 2, 35);
INSERT INTO `auth_group_permissions` VALUES (52, 2, 36);
INSERT INTO `auth_group_permissions` VALUES (53, 2, 37);
INSERT INTO `auth_group_permissions` VALUES (54, 2, 38);
INSERT INTO `auth_group_permissions` VALUES (55, 2, 39);
INSERT INTO `auth_group_permissions` VALUES (56, 2, 40);

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 歌曲分类', 6, 'add_label');
INSERT INTO `auth_permission` VALUES (22, 'Can change 歌曲分类', 6, 'change_label');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 歌曲分类', 6, 'delete_label');
INSERT INTO `auth_permission` VALUES (24, 'Can view 歌曲分类', 6, 'view_label');
INSERT INTO `auth_permission` VALUES (25, 'Can add 歌曲信息', 7, 'add_song');
INSERT INTO `auth_permission` VALUES (26, 'Can change 歌曲信息', 7, 'change_song');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 歌曲信息', 7, 'delete_song');
INSERT INTO `auth_permission` VALUES (28, 'Can view 歌曲信息', 7, 'view_song');
INSERT INTO `auth_permission` VALUES (29, 'Can add 歌曲动态', 8, 'add_dynamic');
INSERT INTO `auth_permission` VALUES (30, 'Can change 歌曲动态', 8, 'change_dynamic');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 歌曲动态', 8, 'delete_dynamic');
INSERT INTO `auth_permission` VALUES (32, 'Can view 歌曲动态', 8, 'view_dynamic');
INSERT INTO `auth_permission` VALUES (33, 'Can add 歌曲评论', 9, 'add_comment');
INSERT INTO `auth_permission` VALUES (34, 'Can change 歌曲评论', 9, 'change_comment');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 歌曲评论', 9, 'delete_comment');
INSERT INTO `auth_permission` VALUES (36, 'Can view 歌曲评论', 9, 'view_comment');
INSERT INTO `auth_permission` VALUES (37, 'Can add user', 10, 'add_myuser');
INSERT INTO `auth_permission` VALUES (38, 'Can change user', 10, 'change_myuser');
INSERT INTO `auth_permission` VALUES (39, 'Can delete user', 10, 'delete_myuser');
INSERT INTO `auth_permission` VALUES (40, 'Can view user', 10, 'view_myuser');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_user_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `user_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2021-04-19 17:17:26.885722', '14', '曾经的你', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (2, '2021-04-19 17:28:32.212118', '2', 'user01', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"QQ\\u53f7\\u7801\", \"\\u5fae\\u4fe1\\u8d26\\u53f7\", \"Last login\"]}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (3, '2021-04-19 17:30:04.244648', '5', 'Comment object (5)', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (4, '2021-04-19 17:33:13.581815', '14', '曾经的你', 2, '[{\"changed\": {\"fields\": [\"\\u6b4c\\u8bcd\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (5, '2021-04-19 17:35:15.324017', '14', '曾经的你', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (6, '2021-04-19 17:36:33.861908', '15', '曾经的你', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (7, '2021-04-19 17:38:59.263656', '15', '曾经的你', 2, '[{\"changed\": {\"fields\": [\"\\u6b4c\\u8bcd\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (8, '2021-04-19 17:39:27.591686', '15', '曾经的你', 2, '[{\"changed\": {\"fields\": [\"\\u6b4c\\u8bcd\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (9, '2021-04-19 17:39:58.068661', '15', '曾经的你', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (10, '2021-04-19 17:40:54.451717', '16', '曾经的你', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (11, '2021-04-20 03:29:09.131551', '17', 'Bohemian Rhapsody', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (12, '2021-04-20 04:30:25.911161', '18', 'The Dark Side of the Moon', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (13, '2021-04-20 04:32:06.967574', '17', 'Dynamic object (17)', 2, '[{\"changed\": {\"fields\": [\"\\u64ad\\u653e\\u6b21\\u6570\", \"\\u641c\\u7d22\\u6b21\\u6570\", \"\\u4e0b\\u8f7d\\u6b21\\u6570\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (14, '2021-04-20 04:37:02.105786', '16', '曾经的你', 2, '[{\"changed\": {\"fields\": [\"\\u6b4c\\u66f2\\u6587\\u4ef6\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (15, '2021-04-20 05:56:12.042809', '19', 'Wish You Were Here', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (16, '2021-04-20 06:06:50.556428', '20', '分身', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (17, '2021-04-20 06:21:51.115643', '21', 'DRESS', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (18, '2021-04-21 00:37:33.087714', '1', '普通管理员', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (19, '2021-04-21 01:51:22.301701', '1', '流行音乐', 2, '[{\"changed\": {\"fields\": [\"\\u5206\\u7c7b\\u6807\\u7b7e\"]}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (20, '2021-04-21 01:51:49.373438', '4', '网络歌曲', 2, '[{\"changed\": {\"fields\": [\"\\u5206\\u7c7b\\u6807\\u7b7e\"]}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (21, '2021-04-21 01:52:12.669394', '5', '现场音乐', 2, '[{\"changed\": {\"fields\": [\"\\u5206\\u7c7b\\u6807\\u7b7e\"]}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (22, '2021-04-21 01:52:40.567563', '6', 'KTV热歌', 2, '[{\"changed\": {\"fields\": [\"\\u5206\\u7c7b\\u6807\\u7b7e\"]}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (23, '2021-04-21 01:53:07.412495', '7', '背景音乐', 2, '[{\"changed\": {\"fields\": [\"\\u5206\\u7c7b\\u6807\\u7b7e\"]}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (24, '2021-04-24 14:01:29.692145', '2', '超级管理员', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (25, '2021-04-24 14:01:36.138445', '2', '超级管理员', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (26, '2021-04-27 06:28:28.118533', '1', 'Comment object (1)', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (27, '2021-04-27 06:28:28.123531', '2', 'Comment object (2)', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (28, '2021-04-27 06:28:28.125530', '3', 'Comment object (3)', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (29, '2021-04-27 06:28:28.128531', '4', 'Comment object (4)', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (30, '2021-04-27 06:28:28.133565', '6', 'Comment object (6)', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (31, '2021-04-27 06:28:28.138563', '7', 'Comment object (7)', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (32, '2021-04-27 06:28:28.143534', '8', 'Comment object (8)', 3, '', 9, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (9, 'index', 'comment');
INSERT INTO `django_content_type` VALUES (8, 'index', 'dynamic');
INSERT INTO `django_content_type` VALUES (6, 'index', 'label');
INSERT INTO `django_content_type` VALUES (7, 'index', 'song');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (10, 'user', 'myuser');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-06-20 11:04:13.746045');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2019-06-20 11:04:15.699413');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2019-06-20 11:04:17.242360');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2019-06-20 11:04:26.447042');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2019-06-20 11:04:26.671419');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2019-06-20 11:04:26.769740');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2019-06-20 11:04:26.846948');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2019-06-20 11:04:26.954237');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2019-06-20 11:04:27.151771');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2019-06-20 11:04:27.283412');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2019-06-20 11:04:27.326532');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2019-06-20 11:04:27.923633');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2019-06-20 11:04:28.127804');
INSERT INTO `django_migrations` VALUES (14, 'user', '0001_initial', '2019-06-20 11:04:29.393868');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0001_initial', '2019-06-20 11:04:39.438369');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0002_logentry_remove_auto_add', '2019-06-20 11:04:43.028060');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0003_logentry_add_action_flag_choices', '2019-06-20 11:04:43.068169');
INSERT INTO `django_migrations` VALUES (18, 'index', '0001_initial', '2019-06-20 11:04:44.912538');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2019-06-20 11:04:50.644553');
INSERT INTO `django_migrations` VALUES (20, 'auth', '0012_alter_user_first_name_max_length', '2021-04-20 08:24:26.725814');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0w3q5mcf658ss6n83bf96ketpy6nh0go', '.eJxVjMsOwiAURP-FtSFgeYhL9_0Gwn0gVQNJaVfGf7dNutBZzjkzbxHTupS4dp7jROIqtDj9dpDwyXUH9Ej13iS2uswTyF2RB-1ybMSv2-H-HZTUy7b2qLwxObBFk63NiQcHKjhEyOQDsPMmUw5gDSHqwSGYLYrPl6SBlPh8AQTbOMo:1laHYo:MjaIQTw99Iex6b3F5DqH31GvuXglQFLaLYEUpYL2uAw', '2021-05-08 12:38:58.115450');
INSERT INTO `django_session` VALUES ('1ybmuwsk52azcjinx9fr6ioewgcqyga6', '.eJyFk9tq20AQhl9F6KYtGLPngy5DUnqT0sZpQqmL2WOs2pGCbBFCyLt3NkmzuxRaXQyrndE3_xz02G7MfNxu5kOYNr1vuxa3i_LOGrcLQ3L4X2a4GZduHI5Tb5cpZPnqPSzPRx_2J6-xFWBrDlv4WjokGYs6cMci59EEKizSwjkbvdQ2CMmij9py5p3DVDjL4EGBKIOtRwDd3Y9TEnLfA3HR3u3Nw2bfH45t9-OxTdqxXLSHfrgJE0R9nUMYIGwwtwFeT8ZtuO3N0Fxszd1h9A_gOvbPLtQx0T4tXhikQKxnFlRYz4Ir-WIzD3yR0_WspSAFinWMvLGwKmBf-mHXfNyPDz5DLrehOTXTrln1PjRjbI5wcT6OQyYy0vGsTlTqOKNsPSsSOJwDcqU6TogFi5WHCGsRWC9lpRSxrLQuW0gNBWvsUtmW0ArsKIZbQSIgo9dwVrQE8w7TNzAruJdm2NUNxAaycAkkrgnkkkKxVIpUcNYqVnJpbiz9FzUg0MRFhMIFYrYuObcSo3rS0SQBnKIMuxr3Ziq-px0vhlvPAnoMorl3vhQjRIT9kcHFP8WxKFAx3Y7gTNT_WZdrWPzm-zg312EKzScwmcQ7gvIS17VxynnKrH3SYmK9J0iA-mBsqQrlCWJasyJBqbEBPS8BL1mSpNVQMa0N_DmiSamdSuEo_LUnkEVnxbjI8vnbu7PVZfN-PVsioWdOPltiwHpi1Yec9PTibLWqRpSW7-fTbzHRbtA:1lYjmo:Z1fEjpELG6iDqJ3t31gqG4gngK940rR-qFrH_imHnjQ', '2021-05-04 06:23:02.823368');
INSERT INTO `django_session` VALUES ('3pee1xplqb3znvzgx9fwslfsnblb3ui7', '.eJxVkD9vhDAMxb-LZ4QCJE7I2L1rl6NC-eMctBROQIbqdN-9oZzE4cHDe_bPT77DbTC_7dAvK-jLHXoPusxg6ccrzaChiZwUNRGFknuHDEbzQ7sXRNXEWmKZ1LX_VxnXvIRHtrMKPMGUtaqJwjv_ikEM6YQkF1JHxTcwsgPJdVkcRHaOF0wKJkXFDuLHNJj5JVGlRUr0mUFr4tq1caG53VBQwEmzxn3TuBn-y4zXKXfTuM69zbeR_Oku-fvkaXh7zp4AnVm6tC0dk5yHmoRLHxLBUIWW1eicDV7WllDy4ENtBffOFRU6y1MxKpUprGfw-AM6XX1G:1lYfxw:9NsPOKqjF7KWTpIU5T-tGmN1nlgZEpvrJnm-KYDtemE', '2021-05-04 02:18:16.092202');
INSERT INTO `django_session` VALUES ('6zf1l6l78ffgse249zxmq4o6cfikk0ci', '.eJwlyUsKgCAABcC7vLUL8dPHq2SEoYZgEpmLEO9e1Ham4ojmXmLIF9RUESwUowQ5pM2dUNBFcil1EX60uvTOeBAks7v_GO10GZxZX73Cp0JRjja3By0cG8Y:1lZQ1t:T3g1WQkkrvfgA40ZpozxxGtiV10Wo4t6DVlXQFu7LCM', '2021-05-06 03:29:25.272370');
INSERT INTO `django_session` VALUES ('7ljyi4kqqryd5sgz27bea27ovood71vu', '.eJxNzbEOwiAYBOBXMf-iJh2AIkVmuzrYOokxUMAQa2NsGUzTd5fUxLLccLl8N8KrVZ9b6_sBxGUEb0BglkHvu7t9gwAZuNZchp1pDGTQqaedW8aclaGwjYvJOJWBOobiYvDzggqCYcp-Yp6AteoeKUQt2keeORNRRPVCICoQ-xsEJ8jxvC6rerWRQZMifjfFnETFNETz7fJwOJVVlaC5wDlM1-kL_WdJRw:1lYjzq:PZSguxfeB3GBQ1IMafw3U4n-UcnDvNb4XkrQfxbUdnw', '2021-05-04 06:36:30.255221');
INSERT INTO `django_session` VALUES ('c2rgyuav6m645wfmezw1306e1w57tdv8', '.eJx9lE2P0zAQhv9KlXPV9efYzpED4oLEAbFCFFX-GG9DS4LaRmi14r8z7rZNvLuQw6vIHj-emXeSp2b3ezikpm3Wo3YmkeYoSQWD9QhChWbZ_Nr7x82-O56a9ttT01E0d8vm2PUPeKCTn7p-t3i_Hx4Txfb-J9LafXfcLr4O4-IeD7j4QEJ7p-68p1vBmj_LCwlmpPVoQ7B0e4ozFuUBGdejwZhJwar1qDKwiahawW9EUwEdT5yw0uIcaITkV5QLmhRi0hOQyZZPRC4qJBhnCjiSQhByDtaxgAEEZWpzcvRupZmBdcvlBGYVWGVPSKMlm5Bfhr0_VIlpcTsvZ8c_-343z0Qho9s1ZPIU2NnHK0O1DG6Muv9aSWqGFajpHVmsahMikHKbzj4x0mRMzVU3rvpfbpl76qA2uUydMFcrNBpy3zibK6qcKuayTjcLVspDdm66fu2xzcUmhRYWFC6jLeEMX_lCubvplnomGfKSJ8sv8YSk1XQ1XIfsnkupwLNpd28MO3B4Y5BAS7zWACzqs6GsqKDWaaZMNRRiaryuh9XaQtC2jKzJ8o6g0pKPTiEWnK8-DMBSa9GqBDXhed2cZ5gWrmiw-a50GUT5hvFyZTVD__rHTKUwatf3ZbPx42m7GY942JRrm5LQbC34uMO-bKQfvn8YVnHoT4curErI6rJ7XH0cEu7fXWIrwNYft3TaRGaUyg51VFnr7FFCYA5iDDkZFxCMyimXn0SKkUuIQdHDUFjPQ6Jc_wIUW4uF:1lZ0pg:VuhQpsPqnOKJdB5m_ign5B1-o93pGrhhtQAvPC7__Rc', '2021-05-05 00:35:08.456928');
INSERT INTO `django_session` VALUES ('c70wsbag25r8kkzjjgp2hz49agbors5i', '.eJxNzLEOgjAURuFXMf_coUIL2tE3wNUac00v0gQKEToQ0ne30QHHk5N8G6ae1kfv5wXmtsE7mGMtMPvw4jcMmsgcIBBo4JyXsePBUzhcO5rm0a15Lf67pFEVkvgZhfwzbNSl1jaq9uxsrJnaHcyvkJWNJ6bnbikjS6R7-gCn4zCe:1laVMq:Vt-gF4dqp4MODlvUJtDADNWIunmtAZDFGcYPtQ6m8L0', '2021-05-09 03:23:32.480289');
INSERT INTO `django_session` VALUES ('l7k1lp7b7yful88v8kl0xqlw1gk21lp4', '.eJxVjjFvgzAQhf8KuhkhjHFsM3aoulTqFlWlQmf7CG6oqTAeooj_XtJESrPc8L73Pt0ZfkY8daOPCzQfZ_AOmqrMIfpwoBkaaJPgQrSp7rVrkyTsIYeA33RlVblrkyI0W7r4v7RuSg5rfnUx_c_15sMxex6nk7s79j4O2fuUsj3NlL1s524S2yuwfubQYVqGLkWau4sUJDxkBu2RwgW4LwyHqbBTWGZvikuluNFYvE6Oxqdb90EwYBy2NfGS10IyUs46piRTDIlpw7R1fKd7q2ypjKgMQy6F3khNmkmje1QVZwbWX_3RaMM:1lbHFy:LPpIYQHZQsfiiR-8ISlF1Y3FSlNhrX-Tuub2-2gkOZw', '2021-05-11 06:31:38.846765');

-- ----------------------------
-- Table structure for index_comment
-- ----------------------------
DROP TABLE IF EXISTS `index_comment`;
CREATE TABLE `index_comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `text` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` date NOT NULL,
  `song_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_comment_song_id_e60ecaa2_fk_index_song_id`(`song_id`) USING BTREE,
  CONSTRAINT `index_comment_song_id_e60ecaa2_fk_index_song_id` FOREIGN KEY (`song_id`) REFERENCES `index_song` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of index_comment
-- ----------------------------
INSERT INTO `index_comment` VALUES (11, '好听，好汀', 'user001', '2021-04-27', 20);
INSERT INTO `index_comment` VALUES (12, 'good song', 'user001', '2021-04-27', 20);
INSERT INTO `index_comment` VALUES (13, '很不错', 'user001', '2021-04-27', 20);
INSERT INTO `index_comment` VALUES (14, '皇后乐队这首单曲当年在英国排行榜上迅速升到冠军的位置，并且在这个位置上停留了足有 9 个星期，并最终打破了英国单曲排行榜上冠军停留时间最长的记录。\r\n在美国这首歌和整张专辑也获得了巨大的成功，进入了排行榜前 10 位并同时成为白金单曲和白金专辑，甚至在十多年后的时间里，这首歌还在美国单曲排行榜上获得过数周的亚军成绩。', 'user002', '2021-04-27', 17);
INSERT INTO `index_comment` VALUES (15, '最好的版本', 'user002', '2021-04-27', 17);
INSERT INTO `index_comment` VALUES (16, '这张专辑是为了纪念乐队以前的领头人syd，后来syd因为过度沉迷于毒品，药物，导致精神出了些问题，但乐队成员一直不离不弃，就算时候后来吉尔莫的加入让syd嫉妒无比，可是乐队其他成员也不离不弃，当他们在录制animals专辑时，儿时的伙伴syd出现了在他们面前，说了一句“吉他部分完成了吗”他们都哭了，那时的syd已经变了，精神彻底失常，所以，纪念syd吧！\r\n', 'user003', '2021-04-27', 19);
INSERT INTO `index_comment` VALUES (17, '几经岁月沉淀下来的音乐永远不会没人欣赏\r\n', 'user003', '2021-04-27', 19);

-- ----------------------------
-- Table structure for index_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `index_dynamic`;
CREATE TABLE `index_dynamic`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `plays` int(0) NOT NULL,
  `search` int(0) NOT NULL,
  `download` int(0) NOT NULL,
  `song_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_dynamic_song_id_21bb9711_fk_index_song_id`(`song_id`) USING BTREE,
  CONSTRAINT `index_dynamic_song_id_21bb9711_fk_index_song_id` FOREIGN KEY (`song_id`) REFERENCES `index_song` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of index_dynamic
-- ----------------------------
INSERT INTO `index_dynamic` VALUES (1, 18, 0, 9, 1);
INSERT INTO `index_dynamic` VALUES (2, 19, 0, 6, 2);
INSERT INTO `index_dynamic` VALUES (3, 6, 0, 0, 3);
INSERT INTO `index_dynamic` VALUES (4, 5, 0, 0, 4);
INSERT INTO `index_dynamic` VALUES (5, 3, 0, 0, 5);
INSERT INTO `index_dynamic` VALUES (6, 5, 0, 0, 6);
INSERT INTO `index_dynamic` VALUES (7, 2, 0, 0, 7);
INSERT INTO `index_dynamic` VALUES (8, 1, 0, 0, 8);
INSERT INTO `index_dynamic` VALUES (9, 3, 0, 0, 9);
INSERT INTO `index_dynamic` VALUES (10, 8, 0, 0, 10);
INSERT INTO `index_dynamic` VALUES (11, 2, 1, 0, 11);
INSERT INTO `index_dynamic` VALUES (12, 11, 0, 0, 12);
INSERT INTO `index_dynamic` VALUES (13, 4, 0, 0, 13);
INSERT INTO `index_dynamic` VALUES (16, 14, 1, 2, 16);
INSERT INTO `index_dynamic` VALUES (17, 23, 5, 10, 17);
INSERT INTO `index_dynamic` VALUES (18, 3, 2, 3, 18);
INSERT INTO `index_dynamic` VALUES (19, 9, 1, 0, 19);
INSERT INTO `index_dynamic` VALUES (20, 7, 0, 0, 20);
INSERT INTO `index_dynamic` VALUES (21, 3, 0, 0, 21);

-- ----------------------------
-- Table structure for index_label
-- ----------------------------
DROP TABLE IF EXISTS `index_label`;
CREATE TABLE `index_label`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of index_label
-- ----------------------------
INSERT INTO `index_label` VALUES (1, '流行音乐');
INSERT INTO `index_label` VALUES (2, '摇滚金属');
INSERT INTO `index_label` VALUES (3, '经典流行');
INSERT INTO `index_label` VALUES (4, '网络歌曲');
INSERT INTO `index_label` VALUES (5, '现场音乐');
INSERT INTO `index_label` VALUES (6, 'KTV热歌');
INSERT INTO `index_label` VALUES (7, '背景音乐');

-- ----------------------------
-- Table structure for index_song
-- ----------------------------
DROP TABLE IF EXISTS `index_song`;
CREATE TABLE `index_song`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `singer` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `album` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `languages` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `release` date NOT NULL,
  `img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lyrics` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `label_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_song_label_id_9b9b68ed_fk_index_label_id`(`label_id`) USING BTREE,
  CONSTRAINT `index_song_label_id_9b9b68ed_fk_index_label_id` FOREIGN KEY (`label_id`) REFERENCES `index_label` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of index_song
-- ----------------------------
INSERT INTO `index_song` VALUES (1, '爱 都是对的', '胡夏', '04:20', '胡 爱夏', '国语', '流行', '2010-12-08', 'songImg/1.jpg', '暂无歌词', 'songFile/1.m4a', 3);
INSERT INTO `index_song` VALUES (2, '体面', '于文文', '04:42', '《前任3：再见前任》电影插曲', '国语', '伤感', '2017-12-25', 'songImg/2.jpg', '暂无歌词', 'songFile/2.m4a', 4);
INSERT INTO `index_song` VALUES (3, '三国恋', 'Tank', '04:06', 'Fighting！生存之道', '国语', '摇滚', '2006-04-15', 'songImg/3.jpg', '暂无歌词', 'songFile/3.m4a', 2);
INSERT INTO `index_song` VALUES (4, '会长大的幸福', 'Tank', '04:32', '第三回合', '国语', '励志', '2009-05-29', 'songImg/4.jpg', '暂无歌词', 'songFile/4.m4a', 4);
INSERT INTO `index_song` VALUES (5, '满满', '梁文音/王铮亮', '04:44', '爱，一直存在', '国语', '甜蜜', '2009-11-20', 'songImg/5.jpg', '暂无歌词', 'songFile/5.m4a', 1);
INSERT INTO `index_song` VALUES (6, '别再记起', '吴若希', '04:04', '别再记起', '粤语', '场景', '2017-12-07', 'songImg/6.jpg', '暂无歌词', 'songFile/6.m4a', 4);
INSERT INTO `index_song` VALUES (7, '爱的魔法', '金莎', '03:11', '他不爱我', '国语', '甜蜜', '2012-03-19', 'songImg/7.jpg', '暂无歌词', 'songFile/7.m4a', 1);
INSERT INTO `index_song` VALUES (8, '演员', '薛之谦', '04:11', '演员', '国语', '流行', '2015-06-05', 'songImg/8.jpg', '暂无歌词', 'songFile/8.m4a', 3);
INSERT INTO `index_song` VALUES (9, '放爱情一个假', '许慧欣', '03:24', '谜', '国语', '安静', '2006-10-01', 'songImg/9.jpg', '暂无歌词', 'songFile/9.m4a', 4);
INSERT INTO `index_song` VALUES (10, 'Volar', '侧田', '03:52', 'No Protection', '粤语', '摇滚', '2006-07-05', 'songImg/10.jpg', '暂无歌词', 'songFile/10.m4a', 2);
INSERT INTO `index_song` VALUES (11, '好心分手', '王力宏/卢巧音', '03:00', '2 Love 致情挚爱', '国语', '伤感', '2015-07-24', 'songImg/11.jpg', 'songLyric/11.txt', 'songFile/11.m4a', 1);
INSERT INTO `index_song` VALUES (12, '就是这样', '林采欣', '05:13', '单曲', '国语', '流行', '2016-10-10', 'songImg/12.jpg', '暂无歌词', 'songFile/12.m4a', 3);
INSERT INTO `index_song` VALUES (13, '爱过了 又怎样', '张惠春', '04:09', '单曲', '国语', '流行', '2016-09-07', 'songImg/13.jpg', '暂无歌词', 'songFile/13.m4a', 3);
INSERT INTO `index_song` VALUES (16, '曾经的你', '许巍', '4:21', '每一刻都是崭新的', '华语', 'Rock', '2004-12-09', 'songImg/曾经的你.jpg', '暂无歌词', 'songFile/许巍_-_曾经的你.m4a', 2);
INSERT INTO `index_song` VALUES (17, 'Bohemian Rhapsody', 'Queen', '0:46', 'A Night At The Opera', '英语', 'Rock', '1975-11-21', 'songImg/Bohemian_Rhapsody.jpg', '暂无歌词', 'songFile/Bohemian_Rhapsody_-_Queen.mp2', 2);
INSERT INTO `index_song` VALUES (18, 'The Dark Side of the Moon', 'Pink Floyd', '42:56', 'The Dark Side of the Moon', '英语', 'Rock', '1973-03-01', 'songImg/The_Dark_Side_of_the_Moon.jpg', '暂无歌词', 'songFile/The_Dark_Side_of_the_Moon_-_Pink_Floyd.mp2', 2);
INSERT INTO `index_song` VALUES (19, 'Wish You Were Here', 'Pink Floyd', '5:20', 'Pink Floyd', 'Wish You Were Here', 'Rock', '1975-09-12', 'songImg/Wish_You_Were_Here.jpg', '暂无歌词', 'songFile/Wish_You_Were_Here_-_Pink_Floyd.mp2', 2);
INSERT INTO `index_song` VALUES (20, '分身', '单依纯', '4:03', '分身', '国语', 'Single', '2021-04-19', 'songImg/分身.jpg', '暂无歌词', 'songFile/单依纯_-_分身.mp3', 1);
INSERT INTO `index_song` VALUES (21, 'DRESS', 'NU\'EST (뉴이스트)', '03:13', 'Romanticize', '韩语', 'POP流行', '2021-04-19', 'songImg/Romanticize.jpg', '暂无歌词', 'songFile/NUEST_뉴이스트_-_DRESS.mp3', 4);

-- ----------------------------
-- Table structure for user_myuser
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser`;
CREATE TABLE `user_myuser`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `qq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `weChat` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_myuser
-- ----------------------------
INSERT INTO `user_myuser` VALUES (1, 'pbkdf2_sha256$260000$CXzKyiAB3rWdY9qR0AWIbW$4ArtAcc51wiSXrhwsIyrSK2YMKXSshsZBKFal5PZLwI=', '2021-04-24 12:38:58.108451', 1, 'admin', '', '', '', 1, 1, '2019-06-20 11:05:55.240164', '', '', '');
INSERT INTO `user_myuser` VALUES (2, 'pbkdf2_sha256$260000$Eoj8D3tSQV9UKMddPoBVmU$X3cBhx08TYpcBC/ovhwwx4skKJYu/5bKpG/jdrRnSIw=', '2021-04-19 17:25:00.000000', 0, 'user01', 'Jeff', 'Zhow', '2449434963@qq.com', 0, 1, '2021-04-19 17:25:00.000000', '2449434963@qq.com', 'wechat', '15840456232');
INSERT INTO `user_myuser` VALUES (3, 'pbkdf2_sha256$260000$H5bcdbHukDCUSQ1MP8onWm$rxy5AbhphbY8K+PmZRTsER7/cBHD5pPWCc8kKIpO7kM=', NULL, 0, 'user02', '', '', '', 0, 1, '2021-04-19 17:26:56.793783', '', '', '15840456233');
INSERT INTO `user_myuser` VALUES (4, 'pbkdf2_sha256$260000$vKFG8cXP5nwJvmjZyAco3L$E/PAJ1mp7plQ9jcrxz9rSk4CfPF3DUPBQwMISIkuZjE=', '2021-04-24 11:07:30.281526', 0, '001', '', '', '', 0, 1, '2021-04-24 11:07:21.581780', '', '', '15840456235');
INSERT INTO `user_myuser` VALUES (5, 'pbkdf2_sha256$260000$G1HXtDF5AxjfIV9sfZGezs$dILelkYpfYJyZr7dEPwEotQJmS+sGHbKJnAW8f+3C3Y=', '2021-04-27 06:28:41.110793', 0, 'user001', '', '', '', 0, 1, '2021-04-27 06:27:18.313866', '', '', '15840456234');
INSERT INTO `user_myuser` VALUES (6, 'pbkdf2_sha256$260000$HHxCatKwxWF7h8qzpJW4qx$EBS6hhjLTloFetghZgB8YuuUIa9aJrD6kWTo/x/RPKA=', '2021-04-27 06:29:47.579972', 0, 'user002', '', '', '', 0, 1, '2021-04-27 06:27:39.478095', '', '', '15840456230');
INSERT INTO `user_myuser` VALUES (7, 'pbkdf2_sha256$260000$2nqvOumjYL1bCXRSYCbgIZ$CT/lNQyhVXqkjiQFTYC+CQBy4hayebFefdl4GZdiWng=', '2021-04-27 06:31:33.854686', 0, 'user003', '', '', '', 0, 1, '2021-04-27 06:27:58.568637', '', '', '15840456243');

-- ----------------------------
-- Table structure for user_myuser_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser_groups`;
CREATE TABLE `user_myuser_groups`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_myuser_groups_myuser_id_group_id_680fbae2_uniq`(`myuser_id`, `group_id`) USING BTREE,
  INDEX `user_myuser_groups_group_id_e21a6dfd_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `user_myuser_groups_group_id_e21a6dfd_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_myuser_groups_myuser_id_dfd02c0f_fk_user_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `user_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_myuser_groups
-- ----------------------------

-- ----------------------------
-- Table structure for user_myuser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser_user_permissions`;
CREATE TABLE `user_myuser_user_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_myuser_user_permiss_myuser_id_permission_id_ae8df385_uniq`(`myuser_id`, `permission_id`) USING BTREE,
  INDEX `user_myuser_user_per_permission_id_d16c386c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `user_myuser_user_per_myuser_id_5d2dcfb0_fk_user_myus` FOREIGN KEY (`myuser_id`) REFERENCES `user_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_myuser_user_per_permission_id_d16c386c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_myuser_user_permissions
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
