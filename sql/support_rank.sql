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

 Date: 13/12/2022 15:13:47
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for support_rank
-- ----------------------------
DROP TABLE IF EXISTS `support_rank`;
CREATE TABLE `support_rank`  (
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
-- Records of support_rank
-- ----------------------------
INSERT INTO `support_rank` VALUES ('0073910a-eb42-4503-8132-63ec3ce1c6b6', '魂锁典狱长', 6, 'T 2', '50.5%', '10.21%', 'https://game.gtimg.cn/images/lol/act/img/champion/Thresh.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('053a35c6-4d6e-455e-bd1c-e5a2703ea13e', '星籁歌姬', 34, 'T 4', '49.63%', '1.44%', 'https://game.gtimg.cn/images/lol/act/img/champion/Seraphine.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('076f326c-fcd3-4466-83d8-2e91d23b2ff0', '圣锤之毅', 38, 'T 4', '51.4%', '0.53%', 'https://game.gtimg.cn/images/lol/act/img/champion/Poppy.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('19ad7769-0892-4707-b11a-d7a34813a63a', '蒸汽机器人', 1, 'T 1', '51.51%', '12.02%', 'https://game.gtimg.cn/images/lol/act/img/champion/Blitzcrank.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('1ab41086-f787-43f9-b0b1-fd31e5d9829b', '弗雷尔卓德之心', 33, 'T 4', '49.47%', '1.36%', 'https://game.gtimg.cn/images/lol/act/img/champion/Braum.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('27fd0bab-652f-466b-adf2-8011260cc412', '牛头酋长', 29, 'T 3', '50.41%', '3.52%', 'https://game.gtimg.cn/images/lol/act/img/champion/Alistar.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('2d9fe47f-fd33-468c-8671-df8703ff46da', '河流之王', 45, 'T 5', '48.05%', '0.58%', 'https://game.gtimg.cn/images/lol/act/img/champion/TahmKench.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('2e4ede2f-fb67-4dcd-9e44-1002a8bf0c1c', '仙灵女巫', 16, 'T 2', '49.27%', '10.35%', 'https://game.gtimg.cn/images/lol/act/img/champion/Lulu.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('4fcbb4f0-f5f7-44fe-817e-73472e4fc6d3', '星界游神', 25, 'T 3', '51.03%', '2.86%', 'https://game.gtimg.cn/images/lol/act/img/champion/Bard.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('57606bad-d819-4d05-9d63-64b65d518d42', '镕铁少女', 4, 'T 1', '53.84%', '1.88%', 'https://game.gtimg.cn/images/lol/act/img/champion/Rell.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('6b7962c3-7cb6-47f9-86c7-f47d289620b5', '涤魂圣枪', 32, 'T 4', '48.91%', '3.32%', 'https://game.gtimg.cn/images/lol/act/img/champion/Senna.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('79328a65-4031-4e09-a45f-bcc15cfddc6b', '荆棘之兴', 18, 'T 3', '51.79%', '2.55%', 'https://game.gtimg.cn/images/lol/act/img/champion/Zyra.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('7caf8194-a459-4a8d-af77-3968fc907a0d', '深海泰坦', 8, 'T 2', '50.27%', '9.33%', 'https://game.gtimg.cn/images/lol/act/img/champion/Nautilus.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('81a29e7e-fe01-4748-a4fe-cbe61d5d3be5', '殇之木乃伊', 5, 'T 2', '52.18%', '5%', 'https://game.gtimg.cn/images/lol/act/img/champion/Amumu.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('826ef4d5-1c76-4274-a8f3-8e54ee0080d5', '众星之子', 14, 'T 2', '50.98%', '5.46%', 'https://game.gtimg.cn/images/lol/act/img/champion/Soraka.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('82efde4d-ac29-4e04-8c6a-e7e89fc9bc64', '正义巨像', 44, 'T 5', '46.75%', '0.56%', 'https://game.gtimg.cn/images/lol/act/img/champion/Galio.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('86e3906f-1f26-428e-94a9-ad98e5e9ba9f', '赏金猎人', 48, 'T 5', '43.38%', '1.79%', 'https://game.gtimg.cn/images/lol/act/img/champion/MissFortune.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('88d9ee93-2f7d-428c-8613-e70ddaa8e39c', '堕落天使', 23, 'T 3', '49.61%', '4.87%', 'https://game.gtimg.cn/images/lol/act/img/champion/Morgana.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('89642d8d-2b25-4e80-9ab7-1b7412cc3dc2', '生化魔人', 40, 'T 4', '48.5%', '1.26%', 'https://game.gtimg.cn/images/lol/act/img/champion/Zac.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('8acd886b-487e-445f-afcc-6bfbe6939c15', '邪恶小法师', 43, 'T 5', '46.02%', '0.42%', 'https://game.gtimg.cn/images/lol/act/img/champion/Veigar.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('8bd12fef-f438-4554-9efc-d0bc9f19b5ee', '诡术妖姬', 42, 'T 5', '47.27%', '0.78%', 'https://game.gtimg.cn/images/lol/act/img/champion/Leblanc.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('8cd04c6e-1f87-4055-9310-a53c5b4ce483', '恶魔小丑', 35, 'T 4', '48.61%', '1.85%', 'https://game.gtimg.cn/images/lol/act/img/champion/Shaco.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('8e840837-323e-4e97-a2f4-379a13dd7ab1', '虚空之眼', 24, 'T 3', '52.1%', '1.57%', 'https://game.gtimg.cn/images/lol/act/img/champion/Velkoz.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('96c9697e-0168-4b1a-910c-3df44a4495d1', '万花通灵', 36, 'T 4', '50.68%', '0.62%', 'https://game.gtimg.cn/images/lol/act/img/champion/Neeko.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('99441e36-1330-4c5b-a5f7-28878dc20499', '唤潮鲛姬', 3, 'T 1', '51.84%', '8.23%', 'https://game.gtimg.cn/images/lol/act/img/champion/Nami.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('a026ba46-bfce-4204-81df-a78d2d7cf6e7', '不屈之枪', 41, 'T 4', '47.6%', '1.6%', 'https://game.gtimg.cn/images/lol/act/img/champion/Pantheon.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('aa029de2-436e-44a0-b21c-c14e44eeef18', '瘟疫之源', 37, 'T 4', '49.2%', '1.36%', 'https://game.gtimg.cn/images/lol/act/img/champion/Twitch.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('aae60825-9cf1-4c9e-8cbd-9598f183c15f', '复仇焰魂', 21, 'T 3', '51.08%', '2.29%', 'https://game.gtimg.cn/images/lol/act/img/champion/Brand.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('b0a8e3a7-5c4a-4737-aaf2-1c7f5eeece19', '幻翎', 27, 'T 3', '50.97%', '2.63%', 'https://game.gtimg.cn/images/lol/act/img/champion/Rakan.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('b9ee8db6-9fe8-44e4-982e-dd18df99649f', '远古巫灵', 7, 'T 2', '50.67%', '6.49%', 'https://game.gtimg.cn/images/lol/act/img/champion/Xerath.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('bfdfb109-6a61-493d-811a-eb26ac1de89d', '远古恐惧', 31, 'T 4', '51.9%', '0.91%', 'https://game.gtimg.cn/images/lol/act/img/champion/FiddleSticks.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('c52535ba-3b3c-4084-9b37-768625a57a07', '寒冰射手', 26, 'T 3', '49.15%', '5.98%', 'https://game.gtimg.cn/images/lol/act/img/champion/Ashe.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('c90916e8-1f10-4fd0-9302-5d5979fbad55', '炼金男爵', 20, 'T 3', '50.58%', '4.56%', 'https://game.gtimg.cn/images/lol/act/img/champion/Renata.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('c95cf794-6471-4e88-a405-a7281ef81a1a', '沙漠皇帝', 49, 'T 5', '41.98%', '0.59%', 'https://game.gtimg.cn/images/lol/act/img/champion/Azir.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('ca835eaa-25cb-4ecc-974c-29cc2c3291cb', '魔法猫咪', 13, 'T 2', '49.45%', '11.96%', 'https://game.gtimg.cn/images/lol/act/img/champion/Yuumi.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('cd269922-6c8d-41f1-bc1c-64350863b7de', '光辉女郎', 15, 'T 2', '49.7%', '9.78%', 'https://game.gtimg.cn/images/lol/act/img/champion/Lux.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('d3000c3a-907f-4414-bb50-557d59e74c23', '风暴之怒', 19, 'T 3', '51.67%', '2.19%', 'https://game.gtimg.cn/images/lol/act/img/champion/Janna.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('d7c0538a-bbce-4efa-b3ba-65e786dad6ab', '曙光女神', 22, 'T 3', '50.34%', '4.81%', 'https://game.gtimg.cn/images/lol/act/img/champion/Leona.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('da1386dd-59b9-4e71-a8c6-1f7b4581ee84', '时光守护者', 10, 'T 2', '52.29%', '2.92%', 'https://game.gtimg.cn/images/lol/act/img/champion/Zilean.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('db932a1d-83c0-4a5a-a0d8-89ca04be573a', '瓦洛兰之盾', 28, 'T 3', '51.68%', '1.1%', 'https://game.gtimg.cn/images/lol/act/img/champion/Taric.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('dc48ff34-2392-4701-8bd7-f74479c0cc25', '血港鬼影', 12, 'T 2', '50.15%', '8.22%', 'https://game.gtimg.cn/images/lol/act/img/champion/Pyke.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('de87cce1-92fa-4922-a90e-4143c7d62511', '腕豪', 46, 'T 5', '45.77%', '1.04%', 'https://game.gtimg.cn/images/lol/act/img/champion/Sett.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('dfbd9e67-0c88-4def-a507-f15d0e4bdff1', '琴瑟仙女', 11, 'T 2', '52.67%', '2.15%', 'https://game.gtimg.cn/images/lol/act/img/champion/Sona.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('e012dc50-9ec0-402b-a51d-ec4eb5d5d4be', '大发明家', 2, 'T 1', '52.12%', '7.04%', 'https://game.gtimg.cn/images/lol/act/img/champion/Heimerdinger.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('eb466036-046b-4a4b-a3fd-15791c5f85d9', '扭曲树精', 17, 'T 2', '51.83%', '3.2%', 'https://game.gtimg.cn/images/lol/act/img/champion/Maokai.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('eb98ba28-8422-4cc6-832d-6590a1658dec', '酒桶', 47, 'T 5', '46.39%', '0.64%', 'https://game.gtimg.cn/images/lol/act/img/champion/Gragas.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('f40120d9-3202-4891-a9c9-3c1bddd50d49', '天启者', 9, 'T 2', '49.9%', '11.75%', 'https://game.gtimg.cn/images/lol/act/img/champion/Karma.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('f5d5f242-d15a-4f3b-8a1f-05c8ccb55a4d', '诺克萨斯统领', 30, 'T 4', '49.4%', '3.03%', 'https://game.gtimg.cn/images/lol/act/img/champion/Swain.png', '2022/12/6/14:6');
INSERT INTO `support_rank` VALUES ('f872217b-545f-46f0-a583-ce76263f8f42', '冰晶凤凰', 39, 'T 4', '49.31%', '0.61%', 'https://game.gtimg.cn/images/lol/act/img/champion/Anivia.png', '2022/12/6/14:6');

SET FOREIGN_KEY_CHECKS = 1;
