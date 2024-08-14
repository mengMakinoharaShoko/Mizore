/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : music

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 14/08/2024 13:52:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name_UNIQUE`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123');
INSERT INTO `admin` VALUES (2, 'admin1', '565');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(0) UNSIGNED NOT NULL,
  `type` tinyint(0) NOT NULL,
  `song_id` int(0) UNSIGNED NULL DEFAULT NULL,
  `song_list_id` int(0) UNSIGNED NULL DEFAULT NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (2, 1, 0, 21, NULL, '2019-01-07 03:17:42');
INSERT INTO `collect` VALUES (3, 94, 0, 22, NULL, '2019-01-07 16:38:23');
INSERT INTO `collect` VALUES (4, 94, 0, 23, NULL, '2019-01-07 16:41:44');
INSERT INTO `collect` VALUES (6, 94, 0, 21, NULL, '2019-01-07 16:43:45');
INSERT INTO `collect` VALUES (10, 94, 0, 3, NULL, '2019-01-07 16:58:59');
INSERT INTO `collect` VALUES (16, 94, 0, 24, NULL, '2019-01-07 17:34:07');
INSERT INTO `collect` VALUES (21, 5, 0, 24, NULL, '2019-01-08 15:18:33');
INSERT INTO `collect` VALUES (24, 5, 0, 8, NULL, '2019-01-08 16:07:57');
INSERT INTO `collect` VALUES (37, 1, 0, 9, NULL, '2019-04-24 18:10:51');
INSERT INTO `collect` VALUES (41, 1, 0, 16, NULL, '2019-04-24 18:14:31');
INSERT INTO `collect` VALUES (42, 1, 0, 17, NULL, '2019-04-24 18:14:35');
INSERT INTO `collect` VALUES (43, 5, 0, 7, NULL, '2019-04-26 01:06:20');
INSERT INTO `collect` VALUES (45, 26, 0, 44, NULL, '2020-03-21 22:26:37');
INSERT INTO `collect` VALUES (46, 26, 0, 36, NULL, '2020-03-21 22:28:24');
INSERT INTO `collect` VALUES (47, 26, 0, 69, NULL, '2020-03-22 01:56:54');
INSERT INTO `collect` VALUES (48, 26, 0, 45, NULL, '2020-03-22 02:08:36');
INSERT INTO `collect` VALUES (49, 26, 0, 21, NULL, '2020-03-22 02:08:41');
INSERT INTO `collect` VALUES (50, 26, 0, 100, NULL, '2020-03-22 03:41:14');
INSERT INTO `collect` VALUES (51, 1, 0, 22, NULL, '2020-04-05 20:07:09');
INSERT INTO `collect` VALUES (52, 12, 0, 99, NULL, '2020-04-05 21:19:06');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(0) UNSIGNED NOT NULL,
  `song_id` int(0) UNSIGNED NULL DEFAULT NULL,
  `song_list_id` int(0) UNSIGNED NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `type` tinyint(0) NOT NULL,
  `up` int(0) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (24, 5, NULL, 1, '超喜欢！', '2019-01-08 21:46:29', 1, 0);
INSERT INTO `comment` VALUES (34, 1, NULL, 1, 'hao', '2019-03-16 21:07:01', 1, 0);
INSERT INTO `comment` VALUES (45, 1, NULL, 1, '啦啦啦(*≧∀≦)ﾉ', '2019-04-25 21:24:43', 1, 0);
INSERT INTO `comment` VALUES (47, 1, NULL, 1, '222', '2019-04-26 01:01:27', 1, 0);

-- ----------------------------
-- Table structure for consumer
-- ----------------------------
DROP TABLE IF EXISTS `consumer`;
CREATE TABLE `consumer`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sex` tinyint(0) NULL DEFAULT NULL,
  `phone_num` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `birth` datetime(0) NULL DEFAULT NULL,
  `introduction` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `location` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `avator` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_UNIQUE`(`username`) USING BTREE,
  UNIQUE INDEX `phone_num_UNIQUE`(`phone_num`) USING BTREE,
  UNIQUE INDEX `email_UNIQUE`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of consumer
-- ----------------------------
INSERT INTO `consumer` VALUES (1, 'Yin', '123', 0, '13776412237', 'yoona@qq.com', '2019-05-24 00:00:00', '千年城传奇耐切王', '山西', '/img/avatorImages/1556202448064L1.jpg', '2019-01-04 21:42:24', '2020-04-05 03:35:12');
INSERT INTO `consumer` VALUES (2, '012', '012', 0, '13754803255', 'love@gmail.com', '2019-04-24 00:00:00', '我就喜欢吃', '北京', '/img/avatorImages/user.jpg', '2019-01-05 15:02:45', '2020-03-23 01:24:59');
INSERT INTO `consumer` VALUES (5, '789', '789', 0, '13634377258', '666@126.com', '2019-01-08 21:15:48', '传火，不可能的，这辈子都不可能传火', '山西', '/img/avatorImages/1552354056660L1.jpg', '2019-01-07 16:16:42', '2019-01-08 21:15:48');
INSERT INTO `consumer` VALUES (8, 'tawuhen', '123', 0, '', '192673541@qq.com', '2019-04-25 18:58:39', '你好', '北京', '/img/avatorImages/user.jpg', '2019-04-25 00:28:58', '2019-04-25 18:58:39');
INSERT INTO `consumer` VALUES (12, 'yoona', '123', 0, '13854173655', '1236795@qq.com', '2019-04-25 10:56:54', '和这群虫冢在一起怎么能搞好吹奏部', '北京', '/img/avatorImages/1584896565998L1.jpg', '2019-04-25 10:56:54', '2019-04-25 10:56:54');
INSERT INTO `consumer` VALUES (16, '1234321', '123', 1, '13754803257', '123@qq.com', '2020-03-08 17:25:45', '', '', '/img/avatorImages/user.jpg', '2020-03-08 17:25:45', '2020-03-08 17:25:45');
INSERT INTO `consumer` VALUES (20, '234321', '123', 0, '15754801257', '12987@qq.com', '2020-03-08 23:41:22', '', '', '/img/avatorImages/user.jpg', '2020-03-08 23:41:22', '2020-03-08 23:41:22');
INSERT INTO `consumer` VALUES (21, 'yoonaA', '123', 1, NULL, NULL, '2020-03-25 00:00:00', '', '', '/img/avatorImages/user.jpg', '2020-03-21 22:18:33', '2020-03-21 22:18:33');
INSERT INTO `consumer` VALUES (24, 'yoonaAA', '123', 1, NULL, NULL, '2020-03-04 00:00:00', '', '', '/img/avatorImages/user.jpg', '2020-03-21 22:20:27', '2020-03-21 22:20:27');
INSERT INTO `consumer` VALUES (25, 'yoonaAB', '123', 1, NULL, NULL, '2020-03-02 00:00:00', '', '', '/img/avatorImages/user.jpg', '2020-03-21 22:21:50', '2020-03-21 22:21:50');
INSERT INTO `consumer` VALUES (26, 'yoonaAC', '123', 1, 'null', 'null', '2020-03-11 00:00:00', '', '', '/img/avatorImages/user.jpg', '2020-03-21 22:23:43', '2020-04-05 03:30:34');
INSERT INTO `consumer` VALUES (27, 'yoonaAD', '123', 1, NULL, NULL, '2020-03-11 00:00:00', '', '', '/img/avatorImages/user.jpg', '2020-03-21 22:24:47', '2020-03-21 22:24:47');
INSERT INTO `consumer` VALUES (28, 'yoona90', '123', 0, NULL, NULL, '2020-04-28 00:00:00', '', '', '/img/avatorImages/user.jpg', '2020-04-02 22:10:34', '2020-04-02 22:10:34');
INSERT INTO `consumer` VALUES (29, 'admin2', '12345', 1, '123456789', '12345678@qq.com', '2024-07-30 00:00:00', 'asdfg', '四川', '/img/avatorImages/user.jpg', '2024-07-30 19:32:54', '2024-07-30 19:32:54');

-- ----------------------------
-- Table structure for list_song
-- ----------------------------
DROP TABLE IF EXISTS `list_song`;
CREATE TABLE `list_song`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `song_id` int(0) UNSIGNED NOT NULL,
  `song_list_id` int(0) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 212 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of list_song
-- ----------------------------
INSERT INTO `list_song` VALUES (1, 36, 1);
INSERT INTO `list_song` VALUES (5, 11, 2);
INSERT INTO `list_song` VALUES (6, 38, 6);
INSERT INTO `list_song` VALUES (7, 39, 6);
INSERT INTO `list_song` VALUES (8, 44, 1);
INSERT INTO `list_song` VALUES (9, 22, 2);
INSERT INTO `list_song` VALUES (10, 22, 12);
INSERT INTO `list_song` VALUES (11, 38, 5);
INSERT INTO `list_song` VALUES (12, 39, 5);
INSERT INTO `list_song` VALUES (13, 38, 5);
INSERT INTO `list_song` VALUES (14, 39, 5);
INSERT INTO `list_song` VALUES (15, 45, 4);
INSERT INTO `list_song` VALUES (16, 45, 12);
INSERT INTO `list_song` VALUES (17, 10, 13);
INSERT INTO `list_song` VALUES (18, 10, 2);
INSERT INTO `list_song` VALUES (19, 28, 3);
INSERT INTO `list_song` VALUES (20, 10, 3);
INSERT INTO `list_song` VALUES (21, 30, 10);
INSERT INTO `list_song` VALUES (22, 31, 10);
INSERT INTO `list_song` VALUES (23, 82, 6);
INSERT INTO `list_song` VALUES (24, 83, 6);
INSERT INTO `list_song` VALUES (25, 84, 6);
INSERT INTO `list_song` VALUES (26, 85, 6);
INSERT INTO `list_song` VALUES (27, 99, 7);
INSERT INTO `list_song` VALUES (28, 100, 8);
INSERT INTO `list_song` VALUES (29, 78, 9);
INSERT INTO `list_song` VALUES (30, 79, 9);
INSERT INTO `list_song` VALUES (31, 80, 9);
INSERT INTO `list_song` VALUES (32, 86, 7);
INSERT INTO `list_song` VALUES (33, 87, 7);
INSERT INTO `list_song` VALUES (34, 88, 8);
INSERT INTO `list_song` VALUES (35, 100, 7);
INSERT INTO `list_song` VALUES (36, 82, 11);
INSERT INTO `list_song` VALUES (37, 65, 11);
INSERT INTO `list_song` VALUES (38, 50, 11);
INSERT INTO `list_song` VALUES (39, 67, 14);
INSERT INTO `list_song` VALUES (40, 78, 14);
INSERT INTO `list_song` VALUES (41, 26, 14);
INSERT INTO `list_song` VALUES (42, 4, 15);
INSERT INTO `list_song` VALUES (44, 21, 15);
INSERT INTO `list_song` VALUES (45, 24, 16);
INSERT INTO `list_song` VALUES (46, 40, 16);
INSERT INTO `list_song` VALUES (47, 50, 16);
INSERT INTO `list_song` VALUES (48, 70, 16);
INSERT INTO `list_song` VALUES (49, 72, 17);
INSERT INTO `list_song` VALUES (50, 73, 17);
INSERT INTO `list_song` VALUES (51, 51, 18);
INSERT INTO `list_song` VALUES (52, 52, 18);
INSERT INTO `list_song` VALUES (53, 65, 18);
INSERT INTO `list_song` VALUES (54, 67, 18);
INSERT INTO `list_song` VALUES (55, 2, 19);
INSERT INTO `list_song` VALUES (57, 55, 19);
INSERT INTO `list_song` VALUES (58, 53, 19);
INSERT INTO `list_song` VALUES (59, 54, 19);
INSERT INTO `list_song` VALUES (60, 4, 20);
INSERT INTO `list_song` VALUES (62, 11, 20);
INSERT INTO `list_song` VALUES (63, 26, 20);
INSERT INTO `list_song` VALUES (64, 99, 21);
INSERT INTO `list_song` VALUES (65, 100, 21);
INSERT INTO `list_song` VALUES (66, 86, 21);
INSERT INTO `list_song` VALUES (67, 91, 22);
INSERT INTO `list_song` VALUES (68, 94, 22);
INSERT INTO `list_song` VALUES (69, 77, 22);
INSERT INTO `list_song` VALUES (70, 68, 22);
INSERT INTO `list_song` VALUES (71, 50, 22);
INSERT INTO `list_song` VALUES (72, 76, 17);
INSERT INTO `list_song` VALUES (73, 93, 15);
INSERT INTO `list_song` VALUES (74, 92, 15);
INSERT INTO `list_song` VALUES (75, 78, 72);
INSERT INTO `list_song` VALUES (76, 79, 72);
INSERT INTO `list_song` VALUES (77, 80, 72);
INSERT INTO `list_song` VALUES (78, 64, 71);
INSERT INTO `list_song` VALUES (79, 65, 71);
INSERT INTO `list_song` VALUES (80, 50, 71);
INSERT INTO `list_song` VALUES (81, 51, 71);
INSERT INTO `list_song` VALUES (82, 51, 70);
INSERT INTO `list_song` VALUES (83, 50, 70);
INSERT INTO `list_song` VALUES (84, 64, 62);
INSERT INTO `list_song` VALUES (85, 65, 62);
INSERT INTO `list_song` VALUES (86, 66, 62);
INSERT INTO `list_song` VALUES (87, 67, 62);
INSERT INTO `list_song` VALUES (88, 25, 63);
INSERT INTO `list_song` VALUES (89, 26, 63);
INSERT INTO `list_song` VALUES (90, 79, 63);
INSERT INTO `list_song` VALUES (91, 65, 64);
INSERT INTO `list_song` VALUES (92, 64, 64);
INSERT INTO `list_song` VALUES (93, 80, 64);
INSERT INTO `list_song` VALUES (94, 25, 65);
INSERT INTO `list_song` VALUES (95, 64, 65);
INSERT INTO `list_song` VALUES (96, 67, 67);
INSERT INTO `list_song` VALUES (97, 64, 67);
INSERT INTO `list_song` VALUES (98, 25, 67);
INSERT INTO `list_song` VALUES (99, 25, 69);
INSERT INTO `list_song` VALUES (100, 24, 69);
INSERT INTO `list_song` VALUES (101, 25, 69);
INSERT INTO `list_song` VALUES (102, 26, 69);
INSERT INTO `list_song` VALUES (103, 48, 69);
INSERT INTO `list_song` VALUES (104, 80, 68);
INSERT INTO `list_song` VALUES (105, 64, 68);
INSERT INTO `list_song` VALUES (106, 25, 68);
INSERT INTO `list_song` VALUES (107, 67, 66);
INSERT INTO `list_song` VALUES (108, 64, 66);
INSERT INTO `list_song` VALUES (109, 80, 66);
INSERT INTO `list_song` VALUES (110, 102, 23);
INSERT INTO `list_song` VALUES (112, 101, 25);
INSERT INTO `list_song` VALUES (113, 102, 30);
INSERT INTO `list_song` VALUES (114, 102, 32);
INSERT INTO `list_song` VALUES (115, 101, 34);
INSERT INTO `list_song` VALUES (116, 42, 36);
INSERT INTO `list_song` VALUES (117, 43, 36);
INSERT INTO `list_song` VALUES (118, 41, 36);
INSERT INTO `list_song` VALUES (119, 36, 38);
INSERT INTO `list_song` VALUES (120, 37, 38);
INSERT INTO `list_song` VALUES (121, 101, 38);
INSERT INTO `list_song` VALUES (122, 101, 37);
INSERT INTO `list_song` VALUES (123, 102, 39);
INSERT INTO `list_song` VALUES (124, 37, 40);
INSERT INTO `list_song` VALUES (125, 108, 40);
INSERT INTO `list_song` VALUES (126, 102, 40);
INSERT INTO `list_song` VALUES (127, 112, 41);
INSERT INTO `list_song` VALUES (128, 102, 41);
INSERT INTO `list_song` VALUES (129, 102, 42);
INSERT INTO `list_song` VALUES (130, 41, 24);
INSERT INTO `list_song` VALUES (131, 100, 23);
INSERT INTO `list_song` VALUES (132, 98, 47);
INSERT INTO `list_song` VALUES (133, 61, 47);
INSERT INTO `list_song` VALUES (134, 62, 47);
INSERT INTO `list_song` VALUES (135, 33, 49);
INSERT INTO `list_song` VALUES (136, 68, 49);
INSERT INTO `list_song` VALUES (137, 33, 49);
INSERT INTO `list_song` VALUES (138, 23, 49);
INSERT INTO `list_song` VALUES (139, 33, 50);
INSERT INTO `list_song` VALUES (140, 21, 50);
INSERT INTO `list_song` VALUES (141, 61, 52);
INSERT INTO `list_song` VALUES (142, 62, 52);
INSERT INTO `list_song` VALUES (143, 21, 60);
INSERT INTO `list_song` VALUES (144, 22, 60);
INSERT INTO `list_song` VALUES (145, 23, 60);
INSERT INTO `list_song` VALUES (146, 63, 58);
INSERT INTO `list_song` VALUES (147, 98, 58);
INSERT INTO `list_song` VALUES (148, 63, 53);
INSERT INTO `list_song` VALUES (149, 30, 54);
INSERT INTO `list_song` VALUES (150, 61, 56);
INSERT INTO `list_song` VALUES (151, 63, 56);
INSERT INTO `list_song` VALUES (152, 98, 57);
INSERT INTO `list_song` VALUES (153, 32, 54);
INSERT INTO `list_song` VALUES (154, 22, 57);
INSERT INTO `list_song` VALUES (155, 98, 59);
INSERT INTO `list_song` VALUES (156, 63, 59);
INSERT INTO `list_song` VALUES (157, 62, 61);
INSERT INTO `list_song` VALUES (158, 22, 61);
INSERT INTO `list_song` VALUES (159, 68, 51);
INSERT INTO `list_song` VALUES (160, 35, 51);
INSERT INTO `list_song` VALUES (161, 32, 51);
INSERT INTO `list_song` VALUES (162, 33, 61);
INSERT INTO `list_song` VALUES (163, 86, 43);
INSERT INTO `list_song` VALUES (164, 100, 44);
INSERT INTO `list_song` VALUES (165, 87, 45);
INSERT INTO `list_song` VALUES (166, 86, 45);
INSERT INTO `list_song` VALUES (167, 100, 44);
INSERT INTO `list_song` VALUES (168, 88, 46);
INSERT INTO `list_song` VALUES (169, 99, 73);
INSERT INTO `list_song` VALUES (170, 88, 74);
INSERT INTO `list_song` VALUES (171, 99, 74);
INSERT INTO `list_song` VALUES (172, 88, 73);
INSERT INTO `list_song` VALUES (173, 103, 78);
INSERT INTO `list_song` VALUES (174, 103, 84);
INSERT INTO `list_song` VALUES (175, 103, 75);
INSERT INTO `list_song` VALUES (176, 103, 76);
INSERT INTO `list_song` VALUES (177, 103, 77);
INSERT INTO `list_song` VALUES (178, 103, 79);
INSERT INTO `list_song` VALUES (179, 88, 80);
INSERT INTO `list_song` VALUES (180, 99, 80);
INSERT INTO `list_song` VALUES (181, 103, 80);
INSERT INTO `list_song` VALUES (182, 104, 80);
INSERT INTO `list_song` VALUES (183, 104, 81);
INSERT INTO `list_song` VALUES (184, 88, 82);
INSERT INTO `list_song` VALUES (185, 99, 82);
INSERT INTO `list_song` VALUES (186, 105, 83);
INSERT INTO `list_song` VALUES (187, 99, 48);
INSERT INTO `list_song` VALUES (188, 95, 26);
INSERT INTO `list_song` VALUES (189, 96, 27);
INSERT INTO `list_song` VALUES (190, 97, 26);
INSERT INTO `list_song` VALUES (191, 95, 28);
INSERT INTO `list_song` VALUES (192, 98, 29);
INSERT INTO `list_song` VALUES (193, 62, 29);
INSERT INTO `list_song` VALUES (194, 87, 31);
INSERT INTO `list_song` VALUES (195, 61, 31);
INSERT INTO `list_song` VALUES (196, 63, 31);
INSERT INTO `list_song` VALUES (197, 87, 55);
INSERT INTO `list_song` VALUES (198, 96, 55);
INSERT INTO `list_song` VALUES (199, 98, 33);
INSERT INTO `list_song` VALUES (200, 63, 33);
INSERT INTO `list_song` VALUES (201, 105, 83);
INSERT INTO `list_song` VALUES (202, 106, 83);
INSERT INTO `list_song` VALUES (203, 107, 53);
INSERT INTO `list_song` VALUES (204, 107, 60);
INSERT INTO `list_song` VALUES (205, 108, 8);
INSERT INTO `list_song` VALUES (206, 112, 24);
INSERT INTO `list_song` VALUES (207, 113, 40);
INSERT INTO `list_song` VALUES (208, 109, 8);
INSERT INTO `list_song` VALUES (209, 107, 23);
INSERT INTO `list_song` VALUES (210, 5, 1);
INSERT INTO `list_song` VALUES (211, 7, 1);

-- ----------------------------
-- Table structure for rank_list
-- ----------------------------
DROP TABLE IF EXISTS `rank_list`;
CREATE TABLE `rank_list`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `songListId` bigint(0) UNSIGNED NOT NULL,
  `consumerId` bigint(0) UNSIGNED NOT NULL,
  `score` int(0) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `consumerId`(`consumerId`, `songListId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rank_list
-- ----------------------------
INSERT INTO `rank_list` VALUES (1, 2, 1, 7);
INSERT INTO `rank_list` VALUES (2, 2, 2, 3);
INSERT INTO `rank_list` VALUES (3, 1, 1, 4);
INSERT INTO `rank_list` VALUES (7, 13, 1, 5);
INSERT INTO `rank_list` VALUES (19, 21, 1, 5);
INSERT INTO `rank_list` VALUES (20, 31, 1, 5);
INSERT INTO `rank_list` VALUES (21, 5, 1, 0);
INSERT INTO `rank_list` VALUES (24, 11, 1, 4);
INSERT INTO `rank_list` VALUES (25, 10, 1, 10);
INSERT INTO `rank_list` VALUES (27, 6, 1, 6);
INSERT INTO `rank_list` VALUES (28, 7, 1, 10);
INSERT INTO `rank_list` VALUES (29, 1, 26, 4);
INSERT INTO `rank_list` VALUES (30, 7, 26, 2);
INSERT INTO `rank_list` VALUES (32, 3, 26, 5);
INSERT INTO `rank_list` VALUES (33, 14, 26, 9);

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sex` tinyint(0) NULL DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `birth` datetime(0) NULL DEFAULT NULL,
  `location` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `introduction` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES (1, 'KITAUJI', 1, '/img/singerPic/1723519479908Image_1723519364686_edit_1049419032890911.jpg', '1982-12-20 18:50:07', '北宇治', '北宇治吹奏部');

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `singer_id` int(0) UNSIGNED NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `introduction` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NOT NULL COMMENT '发行时间',
  `update_time` datetime(0) NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `lyric` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES (1, 1, 'kitauji-三日月之舞', '富有张力且贯彻始终的低音部一起，描绘出夜空中满天星斗熠熠生辉的场景', '2018-12-26 08:40:14', '2019-04-25 20:14:20', 'img\\songPic\\Cover.jpg', '', '/song/三日月之舞.mp3');
INSERT INTO `song` VALUES (2, 1, 'kitauji- girls,dance,staircase', ' girls,dance,staircase', '2018-12-26 11:24:13', '2019-05-24 00:15:25', 'img\\songPic\\Cover.jpg', '', '/song/girls,dance,staircase.mp3');
INSERT INTO `song` VALUES (3, 1, 'kitauji-梨梨花和霙练习曲', '练习', '2018-12-26 11:34:31', '2018-12-26 11:34:31', 'img\\songPic\\Cover.jpg', '', '/song/みぞれと梨々花のオーボエ練習曲.mp3');
INSERT INTO `song` VALUES (4, 1, 'kitauji-ダッタン人の踊り', 'ダッタン人の踊り', '2018-12-26 11:47:15', '2019-04-24 21:13:52', 'img\\songPic\\song.jpg', '', '/song/ダッタン人の踊り.mp3');
INSERT INTO `song` VALUES (5, 1, 'Kitauji-The determination of love', 'Leeds and Bluebird', '2018-12-26 11:57:04', '2019-04-24 23:09:55', 'img\\songPic\\Cover.jpg', '', '/song/リズと青い鳥 第三楽章.mp3');
INSERT INTO `song` VALUES (7, 1, 'Kitauji-Towards the distant sky', 'Leeds and Bluebird', '2018-12-27 07:49:53', '2018-12-27 07:49:53', 'img\\songPic\\Cover.jpg', '', '/song/リズと青い鳥 第四楽章「遠き空へ」.mp3');
INSERT INTO `song` VALUES (36, 1, 'Kitauji-Ordinary days', 'Leeds and Bluebird', '2019-03-19 15:57:07', '2019-03-19 15:57:07', 'img\\songPic\\Cover.jpg', '', '/song/リズと青い鳥 第一楽章「ありふれた日々」.mp3');
INSERT INTO `song` VALUES (44, 1, 'Kitauji-New family', 'Leeds and Bluebird', '2019-03-19 16:04:25', '2019-03-19 16:04:25', 'img\\songPic\\Cover.jpg', '[00:00:00]纯音乐', '/song/ リズと青い鳥 第二楽章「新しい家族」.mp3');

-- ----------------------------
-- Table structure for song_list
-- ----------------------------
DROP TABLE IF EXISTS `song_list`;
CREATE TABLE `song_list`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `introduction` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `style` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '无',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of song_list
-- ----------------------------
INSERT INTO `song_list` VALUES (1, 'Leeds and Bluebird', '/img/songListPic/1722482875497GJa36h-agAA34xN.jpg', 'Kita-Uji High School Wind Ensemble\'s Oboe Kasumi and Umbrella Kimi Umbrella, the third year of high school is the last competition for the two, and \"Liz and the Blue Bird\", which was selected as a free song, has a solo of oboe and flute, Kasumi is happy to be able to spend time with Nozomi, but is also afraid that such days will come to an end. The two were supposed to be \"friends\", but the solo of the oboe and the flute could not fit smoothly, and they also felt a little distance from each other', '吹奏乐');

SET FOREIGN_KEY_CHECKS = 1;
