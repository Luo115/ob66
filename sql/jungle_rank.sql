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

 Date: 13/12/2022 15:13:37
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for jungle_rank
-- ----------------------------
DROP TABLE IF EXISTS `jungle_rank`;
CREATE TABLE `jungle_rank`  (
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
-- Records of jungle_rank
-- ----------------------------
INSERT INTO `jungle_rank` VALUES ('014cb7d8-498d-4563-953d-4a3ddea0be5a', '巨魔之王', 22, 'T 3', '51.14%', '1.76%', 'https://game.gtimg.cn/images/lol/act/img/champion/Trundle.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('0589dafe-58d7-485b-a0ab-efb3c393007f', '永猎双子', 8, 'T 2', '51.23%', '8.23%', 'https://game.gtimg.cn/images/lol/act/img/champion/Kindred.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('0aa78ec8-43a1-4936-8028-194027cf2896', '扭曲树精', 46, 'T 4', '52.23%', '0.46%', 'https://game.gtimg.cn/images/lol/act/img/champion/Maokai.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('0bb4e39d-7d9a-4eed-9e6c-0cc098e02507', '皮城执法官', 12, 'T 2', '52.09%', '3.61%', 'https://game.gtimg.cn/images/lol/act/img/champion/Vi.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('1bdb0dee-3996-47bc-a572-f515ba003ebb', '永恒梦魇', 15, 'T 3', '51.44%', '2.29%', 'https://game.gtimg.cn/images/lol/act/img/champion/Nocturne.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('1c07b233-650f-4021-8ff3-663ebb2cc225', '虚空遁地兽', 19, 'T 3', '52.26%', '1.87%', 'https://game.gtimg.cn/images/lol/act/img/champion/RekSai.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('1e7e538d-1fe2-4473-8ee4-0666f3922c5a', '岩雀', 36, 'T 5', '49.95%', '1.61%', 'https://game.gtimg.cn/images/lol/act/img/champion/Taliyah.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('23fa6e22-a6f9-4d63-8405-634df47e35ae', '傲之追猎者', 40, 'T 5', '49.45%', '1.14%', 'https://game.gtimg.cn/images/lol/act/img/champion/Rengar.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('29fc3d66-8544-4751-87d6-df3a5187df84', '影流之主', 24, 'T 3', '49.5%', '2.4%', 'https://game.gtimg.cn/images/lol/act/img/champion/Zed.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('2c180a0a-7eff-4f38-9cb8-3b9c1fc4f9ff', '蜘蛛女皇', 1, 'T 1', '53.93%', '5.62%', 'https://game.gtimg.cn/images/lol/act/img/champion/Elise.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('31700b1a-a62a-4994-9046-d990ea68cec8', '兽灵行者', 5, 'T 1', '53.36%', '4.49%', 'https://game.gtimg.cn/images/lol/act/img/champion/Udyr.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('35938da2-d1d9-497f-b829-32c835c599d6', '皎月女神', 32, 'T 4', '49.09%', '3.57%', 'https://game.gtimg.cn/images/lol/act/img/champion/Diana.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('35a512cd-46c9-4e84-b544-da519a6917a0', '含羞蓓蕾', 11, 'T 2', '51.84%', '3.79%', 'https://game.gtimg.cn/images/lol/act/img/champion/Lillia.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('4485673e-68cc-4ef5-9c4d-c3383faa768a', '酒桶', 35, 'T 5', '50.71%', '0.94%', 'https://game.gtimg.cn/images/lol/act/img/champion/Gragas.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('45fae1c5-3e35-442f-98ca-20223107bde9', '远古恐惧', 13, 'T 2', '52.27%', '1.82%', 'https://game.gtimg.cn/images/lol/act/img/champion/FiddleSticks.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('4ff70acc-d246-4bc7-8eca-54427750360b', '死亡颂唱者', 29, 'T 4', '51.63%', '2.16%', 'https://game.gtimg.cn/images/lol/act/img/champion/Karthus.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('579aa957-245c-4cf9-a66a-bffd14e3b8d6', '影流之镰', 34, 'T 4', '48.45%', '4.58%', 'https://game.gtimg.cn/images/lol/act/img/champion/Kayn.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('624d74ae-b16b-4bcf-bfe6-6ca53cfe3246', '战争之影', 17, 'T 3', '48.35%', '11.91%', 'https://game.gtimg.cn/images/lol/act/img/champion/Hecarim.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('62a86aa1-5439-49d5-adb5-4eb61f3e0e91', '殇之木乃伊', 43, 'T 5', '47.5%', '0.85%', 'https://game.gtimg.cn/images/lol/act/img/champion/Amumu.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('6e188b1e-a004-4043-80f6-1a8a4529a786', '圣锤之毅', 38, 'T 5', '49.3%', '1.3%', 'https://game.gtimg.cn/images/lol/act/img/champion/Poppy.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('6e888b25-ad94-4e01-83c5-4cce8c7af1f4', '祖安怒兽', 10, 'T 2', '52.37%', '2.98%', 'https://game.gtimg.cn/images/lol/act/img/champion/Warwick.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('77a3432b-22ff-43ea-9ab6-39a976b061e0', '武器大师', 45, 'T 5', '47.45%', '0.72%', 'https://game.gtimg.cn/images/lol/act/img/champion/Jax.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('780462c0-478d-4bbf-a343-015655c7c04c', '北地之怒', 18, 'T 3', '50.52%', '4.14%', 'https://game.gtimg.cn/images/lol/act/img/champion/Sejuani.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('7afad920-919f-42bd-8bdf-2f8ec0d133b5', '痛苦之拥', 3, 'T 1', '53.38%', '4.21%', 'https://game.gtimg.cn/images/lol/act/img/champion/Evelynn.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('809790d6-189e-4a43-bee9-4c70179f9eb8', '时间刺客', 2, 'T 1', '51.12%', '12.73%', 'https://game.gtimg.cn/images/lol/act/img/champion/Ekko.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('874bd968-1123-4199-9aa6-e3669cc58e80', '铁铠冥魂', 9, 'T 2', '52.4%', '4.14%', 'https://game.gtimg.cn/images/lol/act/img/champion/Mordekaiser.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('887ad5d4-7a73-4205-855c-96d01d87cf44', '虚空女皇', 25, 'T 3', '50.63%', '2.73%', 'https://game.gtimg.cn/images/lol/act/img/champion/Belveth.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('8ad325cf-b7bb-4de9-b7c7-dd2d6c167d4b', '青钢影', 48, 'T 5', '44.78%', '1.02%', 'https://game.gtimg.cn/images/lol/act/img/champion/Camille.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('8e37d0b8-9b3b-4fb7-a6ac-1216967eb8c2', '恶魔小丑', 30, 'T 4', '49.55%', '3.19%', 'https://game.gtimg.cn/images/lol/act/img/champion/Shaco.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('991ea998-4414-4f1d-893d-d53c044b3e1d', '狂野女猎手', 26, 'T 3', '49.4%', '5.64%', 'https://game.gtimg.cn/images/lol/act/img/champion/Nidalee.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('9b0132e1-a930-4c89-80d9-a107cff62878', '德邦总管', 33, 'T 4', '50.1%', '1.79%', 'https://game.gtimg.cn/images/lol/act/img/champion/XinZhao.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('9cd4a048-3776-4ae8-b426-7d3de5b5c508', '翠神', 37, 'T 5', '51.64%', '0.52%', 'https://game.gtimg.cn/images/lol/act/img/champion/Ivern.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('9ceea0eb-e7d6-4a6f-bb8d-efde9537c9fe', '盲僧', 14, 'T 3', '48.24%', '15.58%', 'https://game.gtimg.cn/images/lol/act/img/champion/LeeSin.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('a05f97c4-3643-4056-9724-01978afd63e2', '机械公敌', 47, 'T 5', '47.43%', '0.65%', 'https://game.gtimg.cn/images/lol/act/img/champion/Rumble.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('a8c08244-4839-4092-8eed-38160b739c37', '无极剑圣', 7, 'T 2', '51.63%', '5.15%', 'https://game.gtimg.cn/images/lol/act/img/champion/MasterYi.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('ad5483b3-776b-41ed-833b-5877983c9c73', '刀锋之影', 39, 'T 5', '47.2%', '3.42%', 'https://game.gtimg.cn/images/lol/act/img/champion/Talon.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('b491192a-fc6f-4760-acf7-5fa9126c063f', '解脱者', 4, 'T 1', '49.91%', '15.66%', 'https://game.gtimg.cn/images/lol/act/img/champion/Sylas.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('b5725bff-b832-403d-b837-70b7723f9a94', '不灭狂雷', 44, 'T 5', '49.56%', '0.46%', 'https://game.gtimg.cn/images/lol/act/img/champion/Volibear.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('b8a96700-2efa-42ca-8509-21f167681788', '披甲龙龟', 27, 'T 4', '50.67%', '2.42%', 'https://game.gtimg.cn/images/lol/act/img/champion/Rammus.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('c1f942f2-4d95-4103-94d5-59c4de1c7243', '元素女皇', 49, 'T 5', '44.57%', '0.5%', 'https://game.gtimg.cn/images/lol/act/img/champion/Qiyana.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('c2135bb3-fd7d-4ebd-a888-c9ca08fd6238', '雪原双子', 20, 'T 3', '51.97%', '2.48%', 'https://game.gtimg.cn/images/lol/act/img/champion/Nunu.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('c4a2457b-f6c4-42c6-b718-f3a0ccb645d9', '龙血武姬', 23, 'T 3', '50.9%', '2.25%', 'https://game.gtimg.cn/images/lol/act/img/champion/Shyvana.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('d05c5678-29b1-43d6-a25e-009148a42c6f', '齐天大圣', 16, 'T 3', '50.47%', '4.1%', 'https://game.gtimg.cn/images/lol/act/img/champion/MonkeyKing.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('e43e3e44-eeaa-4be9-9bc4-f9f1427d84a2', '虚空掠夺者', 21, 'T 3', '50.82%', '4.16%', 'https://game.gtimg.cn/images/lol/act/img/champion/Khazix.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('e68abb1a-9124-4e7a-bf1e-0aa905ddb7bb', '法外狂徒', 6, 'T 2', '49.7%', '14.96%', 'https://game.gtimg.cn/images/lol/act/img/champion/Graves.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('e92444c4-8a10-47d2-ba7d-51c078344fb7', '生化魔人', 41, 'T 5', '47.95%', '2.57%', 'https://game.gtimg.cn/images/lol/act/img/champion/Zac.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('f0bfb116-57f9-4777-baef-d33b05a59d5e', '破败之王', 31, 'T 4', '47.47%', '9.16%', 'https://game.gtimg.cn/images/lol/act/img/champion/Viego.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('f7d666c0-da71-49d7-abbb-6b65ef2ac931', '祖安狂人', 28, 'T 4', '51.34%', '2.03%', 'https://game.gtimg.cn/images/lol/act/img/champion/DrMundo.png', '2022/12/6/14:6');
INSERT INTO `jungle_rank` VALUES ('fe76a796-fcbf-4671-a82d-1683fd5b1bef', '德玛西亚皇子', 42, 'T 5', '48.92%', '1.61%', 'https://game.gtimg.cn/images/lol/act/img/champion/JarvanIV.png', '2022/12/6/14:6');

SET FOREIGN_KEY_CHECKS = 1;
