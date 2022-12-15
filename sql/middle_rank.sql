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

 Date: 13/12/2022 15:13:41
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for middle_rank
-- ----------------------------
DROP TABLE IF EXISTS `middle_rank`;
CREATE TABLE `middle_rank`  (
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
-- Records of middle_rank
-- ----------------------------
INSERT INTO `middle_rank` VALUES ('02259a07-d675-41ed-964a-7296273ff26a', '光辉女郎', 43, 'T 5', '49.84%', '1.16%', 'https://game.gtimg.cn/images/lol/act/img/champion/Lux.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('046590cf-f034-4c1f-bebe-a735db011d90', '腕豪', 28, 'T 4', '50.56%', '1.45%', 'https://game.gtimg.cn/images/lol/act/img/champion/Sett.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('1412c57e-6fbc-408a-9ce6-81384f2bedb0', '魔蛇之拥', 36, 'T 5', '48.65%', '1.73%', 'https://game.gtimg.cn/images/lol/act/img/champion/Cassiopeia.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('1439395c-84df-4e12-ac54-9e829bbf09cd', '德玛西亚之力', 29, 'T 4', '50.09%', '0.52%', 'https://game.gtimg.cn/images/lol/act/img/champion/Garen.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('16a5bb41-40a5-4ed2-918b-ace7b3e7a6fc', '发条魔灵', 37, 'T 5', '49.38%', '1.77%', 'https://game.gtimg.cn/images/lol/act/img/champion/Orianna.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('1cb222e4-7ed8-46fb-a1f3-82543bc7548f', '疾风剑豪', 17, 'T 3', '49.41%', '7.18%', 'https://game.gtimg.cn/images/lol/act/img/champion/Yasuo.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('1dbc59b6-dcd8-4f63-9646-604c4abed9e4', '猩红收割者', 31, 'T 4', '49.42%', '1.85%', 'https://game.gtimg.cn/images/lol/act/img/champion/Vladimir.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('1ee804df-fe9f-4e30-91c2-8481e0e0b194', '暗黑元首', 5, 'T 1', '50.59%', '10.94%', 'https://game.gtimg.cn/images/lol/act/img/champion/Syndra.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('301c23c2-1e55-470b-8b2d-18fd9a3d62e1', '机械先驱', 10, 'T 1', '50.37%', '9.41%', 'https://game.gtimg.cn/images/lol/act/img/champion/Viktor.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('30a0ebbc-fbbc-45da-8a3f-6eb20f667468', '沙漠皇帝', 46, 'T 5', '46.81%', '3.82%', 'https://game.gtimg.cn/images/lol/act/img/champion/Azir.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('31f087ac-0f42-46e0-9c86-05df71ae71c4', '万花通灵', 33, 'T 5', '51.56%', '0.62%', 'https://game.gtimg.cn/images/lol/act/img/champion/Neeko.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('375a525d-d3c1-4446-9fc8-df220469f460', '刀锋之影', 4, 'T 1', '51.79%', '6.52%', 'https://game.gtimg.cn/images/lol/act/img/champion/Talon.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('3c03c6f5-a8bd-4b1d-9935-346adb973fe1', '时间刺客', 25, 'T 4', '49.56%', '1.53%', 'https://game.gtimg.cn/images/lol/act/img/champion/Ekko.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('3e294a38-8c96-4916-bbd8-aa21a78c1320', '刀锋舞者', 8, 'T 1', '49.91%', '9.57%', 'https://game.gtimg.cn/images/lol/act/img/champion/Irelia.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('4263b45d-ce77-4ba7-9080-3e935c42878e', '虚空行者', 23, 'T 4', '48.79%', '4.89%', 'https://game.gtimg.cn/images/lol/act/img/champion/Kassadin.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('43b5712a-7b32-4fad-8f7e-46f989ee687c', '海洋之灾', 20, 'T 3', '53.71%', '0.61%', 'https://game.gtimg.cn/images/lol/act/img/champion/Gangplank.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('45354dd7-c856-4660-a7f1-0e195a47c037', '黑暗之女', 34, 'T 5', '51%', '0.57%', 'https://game.gtimg.cn/images/lol/act/img/champion/Annie.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('5255fb43-9f7c-4cae-8e01-aab467a1b00c', '影流之主', 1, 'T 1', '53.16%', '13.23%', 'https://game.gtimg.cn/images/lol/act/img/champion/Zed.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('5543674a-5b24-430c-bb14-824976f5ad7f', '英勇投弹手', 52, 'T 5', '46.56%', '1.1%', 'https://game.gtimg.cn/images/lol/act/img/champion/Corki.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('5593ea02-58d5-4e5b-a7ea-e8198bcbc7ae', '炼金术士', 2, 'T 1', '57.44%', '1.02%', 'https://game.gtimg.cn/images/lol/act/img/champion/Singed.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('6468de3a-32e7-4cad-ae25-0209ae55d22d', '封魔剑魂', 16, 'T 3', '48.67%', '10.28%', 'https://game.gtimg.cn/images/lol/act/img/champion/Yone.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('67dbe009-ad38-4b86-af48-943b448a4a76', '诺克萨斯统领', 26, 'T 4', '50.68%', '1.72%', 'https://game.gtimg.cn/images/lol/act/img/champion/Swain.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('6e2cd469-f54b-4941-a92f-f9ef1c8c823d', '破败之王', 42, 'T 5', '50.04%', '0.86%', 'https://game.gtimg.cn/images/lol/act/img/champion/Viego.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('72539a0b-f167-46e6-9406-2e146cdd1337', '不祥之刃', 13, 'T 2', '49.96%', '7.44%', 'https://game.gtimg.cn/images/lol/act/img/champion/Katarina.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('7744ba1b-b52f-4b1c-82f8-cc4fe312c4b3', '邪恶小法师', 45, 'T 5', '49.15%', '1.05%', 'https://game.gtimg.cn/images/lol/act/img/champion/Veigar.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('78efcd78-8188-4b54-b060-13855b6dc7d2', '离群之刺', 14, 'T 2', '48%', '12.95%', 'https://game.gtimg.cn/images/lol/act/img/champion/Akali.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('7c055e14-c8a8-42b1-867c-781235983c4b', '爆破鬼才', 49, 'T 5', '50.88%', '0.65%', 'https://game.gtimg.cn/images/lol/act/img/champion/Ziggs.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('8078d64d-33e7-4ee1-ac04-bba34b3fe925', '暮光星灵', 19, 'T 3', '51.07%', '2.73%', 'https://game.gtimg.cn/images/lol/act/img/champion/Zoe.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('8283858e-efb6-4185-af3f-569c7d626508', '解脱者', 7, 'T 1', '48.65%', '14.14%', 'https://game.gtimg.cn/images/lol/act/img/champion/Sylas.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('832afe4d-c89c-4074-98cb-af62150fa6a1', '荒漠屠夫', 38, 'T 5', '50.76%', '1.24%', 'https://game.gtimg.cn/images/lol/act/img/champion/Renekton.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('85ef7ff7-3c3e-4a99-8321-86f8a8ed5077', '永恒梦魇', 51, 'T 5', '50.44%', '0.67%', 'https://game.gtimg.cn/images/lol/act/img/champion/Nocturne.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('87e475e9-5901-45d0-b0dc-31cb6708f65e', '雪原双子', 54, 'T 5', '48.79%', '0.56%', 'https://game.gtimg.cn/images/lol/act/img/champion/Nunu.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('8ab398b9-7428-4268-8723-0425835d8e8c', '铸星龙王', 40, 'T 5', '52.05%', '0.38%', 'https://game.gtimg.cn/images/lol/act/img/champion/AurelionSol.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('8cb27c37-9a18-49cc-b9eb-97a695baf555', '虚空先知', 22, 'T 4', '50.58%', '2.56%', 'https://game.gtimg.cn/images/lol/act/img/champion/Malzahar.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('90dfeafe-e4a6-437b-b309-86c6da83f687', '元素女皇', 18, 'T 3', '51.98%', '2.14%', 'https://game.gtimg.cn/images/lol/act/img/champion/Qiyana.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('a6ce98f6-f7e1-455c-bb2d-879171d0d413', '潮汐海灵', 24, 'T 4', '50.5%', '2.12%', 'https://game.gtimg.cn/images/lol/act/img/champion/Fizz.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('c2a82c4e-73c6-4a56-b159-57fe7152a2f1', '符文法师', 47, 'T 5', '46.19%', '5.27%', 'https://game.gtimg.cn/images/lol/act/img/champion/Ryze.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('c42667b5-c77e-4f3c-9c29-006dca7b3e2c', '机械公敌', 9, 'T 1', '52.24%', '1.94%', 'https://game.gtimg.cn/images/lol/act/img/champion/Rumble.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('cb10ce38-88a2-4f54-a2d5-d1e9f4614b49', '皎月女神', 35, 'T 5', '50.02%', '1.25%', 'https://game.gtimg.cn/images/lol/act/img/champion/Diana.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('cb9221dd-b56c-417e-87dd-6288a9072f47', '冰霜女巫', 50, 'T 5', '48.17%', '1.51%', 'https://game.gtimg.cn/images/lol/act/img/champion/Lissandra.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('cf9380c2-f8cc-45ec-97ca-31a9be33d4f4', '岩雀', 39, 'T 5', '49.01%', '0.77%', 'https://game.gtimg.cn/images/lol/act/img/champion/Taliyah.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('d5867119-c143-4dd4-9918-e4cb076a51a4', '正义巨像', 15, 'T 3', '51.16%', '2.84%', 'https://game.gtimg.cn/images/lol/act/img/champion/Galio.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('dc82e3da-3643-41e1-8c9e-d18a3e8b7eb4', '未来守护者', 48, 'T 5', '50.47%', '0.53%', 'https://game.gtimg.cn/images/lol/act/img/champion/Jayce.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('df71d0c6-72c0-48c6-99b0-609eb44b140c', '卡牌大师', 27, 'T 4', '49.54%', '2.97%', 'https://game.gtimg.cn/images/lol/act/img/champion/TwistedFate.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('e1333514-be0d-457d-b0cc-3044dcc6f88d', '熔岩巨兽', 53, 'T 5', '47.92%', '0.65%', 'https://game.gtimg.cn/images/lol/act/img/champion/Malphite.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('e19011b9-cf1f-4837-9e51-cab625e89893', '冰晶凤凰', 6, 'T 1', '52.92%', '2.6%', 'https://game.gtimg.cn/images/lol/act/img/champion/Anivia.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('ed856df2-e179-451b-8f43-fcc77eabfeea', '愁云使者', 3, 'T 1', '52.05%', '6.84%', 'https://game.gtimg.cn/images/lol/act/img/champion/Vex.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('f21b15e1-57ea-45b9-9cc4-6daff04b0dd9', '九尾妖狐', 21, 'T 3', '50.39%', '4.2%', 'https://game.gtimg.cn/images/lol/act/img/champion/Ahri.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('f28acb7e-da75-43c1-b711-006f20b8e4ba', '不屈之枪', 11, 'T 2', '53.3%', '1.2%', 'https://game.gtimg.cn/images/lol/act/img/champion/Pantheon.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('f4caf1f6-fbee-4bb8-b7fb-e32934f6c98b', '诡术妖姬', 30, 'T 4', '48.27%', '5.09%', 'https://game.gtimg.cn/images/lol/act/img/champion/Leblanc.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('f89cc612-193e-4300-855f-9f886bac1604', '酒桶', 44, 'T 5', '51.36%', '0.52%', 'https://game.gtimg.cn/images/lol/act/img/champion/Gragas.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('fb697661-42ef-479f-8069-6e6cd494c424', '远古巫灵', 41, 'T 5', '49.38%', '1.47%', 'https://game.gtimg.cn/images/lol/act/img/champion/Xerath.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('fb9f1639-15b5-4b29-b8c9-e48a06d85095', '复仇焰魂', 32, 'T 4', '52.9%', '0.62%', 'https://game.gtimg.cn/images/lol/act/img/champion/Brand.png', '2022/12/6/14:6');
INSERT INTO `middle_rank` VALUES ('ff5bae79-3218-4272-a1c6-e2e7a3417599', '影哨', 12, 'T 2', '52%', '2.73%', 'https://game.gtimg.cn/images/lol/act/img/champion/Akshan.png', '2022/12/6/14:6');

SET FOREIGN_KEY_CHECKS = 1;
