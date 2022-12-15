/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : lol

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 13/12/2022 15:12:40
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bottom_rank
-- ----------------------------
DROP TABLE IF EXISTS `bottom_rank`;
CREATE TABLE `bottom_rank`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid',
  `hero_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文英雄名字',
  `level` tinyint NULL DEFAULT NULL COMMENT '英雄排名（比方说上路英雄1号是剑姬）',
  `layer` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英雄层级（比方说剑姬是op）',
  `win_rate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '胜率',
  `pick_rate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登场率',
  `avatar` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英雄头像地址',
  `update_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '该表是 主页 的一个排名，比方说剑姬所在上单列的排名' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bottom_rank
-- ----------------------------
INSERT INTO `bottom_rank` VALUES ('0f16554e-c5f6-4965-9ba8-11d7919ddd49', '赏金猎人', 15, 'T 3', '50.09%', '3.81%', 'https://game.gtimg.cn/images/lol/act/img/champion/MissFortune.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('2cdb3465-bf05-4ea0-afc2-e7f4359693a9', '暗夜猎手', 19, 'T 3', '48.77%', '4.55%', 'https://game.gtimg.cn/images/lol/act/img/champion/Vayne.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('50252b5b-1dd2-44c2-bf28-420e11b381bc', '惩戒之箭', 7, 'T 2', '50.22%', '15.61%', 'https://game.gtimg.cn/images/lol/act/img/champion/Varus.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('5c270a38-35e1-4bfa-82dc-42b3b6da01b3', '圣枪游侠', 6, 'T 2', '50.35%', '15.32%', 'https://game.gtimg.cn/images/lol/act/img/champion/Lucian.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('5e1c993a-f3f4-4b9c-9921-9a11e0d82551', '逆羽', 13, 'T 3', '49.41%', '5.35%', 'https://game.gtimg.cn/images/lol/act/img/champion/Xayah.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('5ff6c742-2791-4e72-9844-a3303530e512', '荣耀行刑官', 18, 'T 3', '49.95%', '3.17%', 'https://game.gtimg.cn/images/lol/act/img/champion/Draven.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('600f502f-0ea1-4f1b-8ae4-6a0b034f388f', '战争女神', 17, 'T 3', '49.81%', '3.87%', 'https://game.gtimg.cn/images/lol/act/img/champion/Sivir.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('77c44d33-1e0e-4fa7-a23b-1d5847590c77', '爆破鬼才', 9, 'T 3', '52.45%', '0.73%', 'https://game.gtimg.cn/images/lol/act/img/champion/Ziggs.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('835bda08-9cea-48c4-9fa9-b05fb112d5e1', '瘟疫之源', 16, 'T 3', '50.2%', '1.74%', 'https://game.gtimg.cn/images/lol/act/img/champion/Twitch.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('935a7e52-0074-4ef4-bf2e-561daf332ca2', '麦林炮手', 10, 'T 3', '51.26%', '3.24%', 'https://game.gtimg.cn/images/lol/act/img/champion/Tristana.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('9bebebb9-77aa-44f7-b3a9-f843b4ebcac4', '皮城女警', 5, 'T 2', '49.97%', '21.03%', 'https://game.gtimg.cn/images/lol/act/img/champion/Caitlyn.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('9fc5baca-9f9f-430f-814b-5ab2535af437', '探险家', 8, 'T 2', '49.18%', '28.9%', 'https://game.gtimg.cn/images/lol/act/img/champion/Ezreal.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('a47bff28-530e-490e-8cdd-2bf18391f2b7', '戏命师', 3, 'T 1', '50.88%', '18.25%', 'https://game.gtimg.cn/images/lol/act/img/champion/Jhin.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('b29fa8ea-4631-4221-974c-b1758f5d128e', '深渊巨口', 14, 'T 3', '50.71%', '1.37%', 'https://game.gtimg.cn/images/lol/act/img/champion/KogMaw.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('c03d5ae5-d4cd-4024-9f6a-58ffc4a9de28', '沙漠玫瑰', 4, 'T 1', '51.14%', '10.47%', 'https://game.gtimg.cn/images/lol/act/img/champion/Samira.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('c652edbd-b633-46aa-ad9f-2547b0912209', '疾风剑豪', 22, 'T 4', '50.75%', '0.69%', 'https://game.gtimg.cn/images/lol/act/img/champion/Yasuo.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('c7963e7e-ab40-4db4-a39b-0f7e932e16b4', '寒冰射手', 11, 'T 3', '50.31%', '5.92%', 'https://game.gtimg.cn/images/lol/act/img/champion/Ashe.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('c960b567-b597-45d1-8ccd-1945d149d477', '暴走萝莉', 12, 'T 3', '49.99%', '5.36%', 'https://game.gtimg.cn/images/lol/act/img/champion/Jinx.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('d1b2737e-d0c2-46f4-834e-226f2115d33f', '虚空之女', 1, 'T 1', '50.72%', '32.87%', 'https://game.gtimg.cn/images/lol/act/img/champion/Kaisa.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('ddc006a6-0658-488c-b6aa-670cb3635491', '不羁之悦', 2, 'T 1', '53.25%', '3.47%', 'https://game.gtimg.cn/images/lol/act/img/champion/Nilah.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('e32934a8-a21c-40ab-ab1f-a935bcd064fb', '诺克萨斯统领', 21, 'T 4', '49.95%', '0.45%', 'https://game.gtimg.cn/images/lol/act/img/champion/Swain.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('ef3186b8-cad6-4525-884c-2e42039e8687', '祖安花火', 24, 'T 5', '42.93%', '0.79%', 'https://game.gtimg.cn/images/lol/act/img/champion/Zeri.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('f65a891b-8054-421d-9cf5-3a59779f240d', '残月之肃', 23, 'T 4', '45.65%', '6.62%', 'https://game.gtimg.cn/images/lol/act/img/champion/Aphelios.png', '2022/12/6/14:6');
INSERT INTO `bottom_rank` VALUES ('ff9c9bbf-1a97-4b30-99f5-3f2c47393b87', '复仇之矛', 20, 'T 3', '48.78%', '2.97%', 'https://game.gtimg.cn/images/lol/act/img/champion/Kalista.png', '2022/12/6/14:6');

SET FOREIGN_KEY_CHECKS = 1;
