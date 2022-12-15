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

 Date: 13/12/2022 15:13:52
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for top_rank
-- ----------------------------
DROP TABLE IF EXISTS `top_rank`;
CREATE TABLE `top_rank`  (
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
-- Records of top_rank
-- ----------------------------
INSERT INTO `top_rank` VALUES ('026949da-119f-444f-933c-ba45f9762a46', '山隐之焰', 31, 'T 3', '49.19%', '2.94%', 'https://game.gtimg.cn/images/lol/act/img/champion/Ornn.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('065ed525-cff8-4d04-9685-dab414ee4a1d', '青钢影', 7, 'T 2', '51.25%', '7.65%', 'https://game.gtimg.cn/images/lol/act/img/champion/Camille.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('0a7b3972-237a-4ec0-a688-7e02039052f8', '未来守护者', 22, 'T 3', '49.4%', '4.34%', 'https://game.gtimg.cn/images/lol/act/img/champion/Jayce.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('0d2d0472-7edf-4419-a2ed-da7347748d5f', '无畏战车', 36, 'T 3', '49.99%', '1.18%', 'https://game.gtimg.cn/images/lol/act/img/champion/Urgot.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('15c96a45-9af7-4d7a-91c2-96c6cfb211a4', '腕豪', 24, 'T 3', '48.99%', '5.36%', 'https://game.gtimg.cn/images/lol/act/img/champion/Sett.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('1754f217-7eeb-40d2-b60a-01f01594b550', '暗裔剑魔', 2, 'T 1', '50.53%', '21.98%', 'https://game.gtimg.cn/images/lol/act/img/champion/Aatrox.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('1bec800f-6d4d-406b-a936-02c63ad0530f', '傲之追猎者', 6, 'T 2', '53.17%', '2.48%', 'https://game.gtimg.cn/images/lol/act/img/champion/Rengar.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('2283fd5a-5645-47ef-a2ee-dd5dd8c233ef', '披甲龙龟', 56, 'T 5', '49.6%', '0.55%', 'https://game.gtimg.cn/images/lol/act/img/champion/Rammus.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('2373727f-95ff-4385-8b24-6331f2caa562', '北地之怒', 35, 'T 3', '48.22%', '2.34%', 'https://game.gtimg.cn/images/lol/act/img/champion/Sejuani.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('2537f280-201b-4bfe-98c2-aab3aa3ef056', '解脱者', 49, 'T 4', '48.55%', '1.36%', 'https://game.gtimg.cn/images/lol/act/img/champion/Sylas.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('2a4e33d1-b84c-47ec-8695-9aa401f55b98', '圣锤之毅', 27, 'T 3', '51.05%', '1.44%', 'https://game.gtimg.cn/images/lol/act/img/champion/Poppy.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('2e1dadb5-a823-4da2-85ea-a78f2b6ef007', '齐天大圣', 25, 'T 3', '51.25%', '1.11%', 'https://game.gtimg.cn/images/lol/act/img/champion/MonkeyKing.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('371f18d2-1527-492f-b039-aa8683976c6c', '生化魔人', 37, 'T 4', '49.15%', '1.4%', 'https://game.gtimg.cn/images/lol/act/img/champion/Zac.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('3c64218d-616c-475a-85f1-5ba972f645df', '海洋之灾', 4, 'T 1', '51.08%', '9.99%', 'https://game.gtimg.cn/images/lol/act/img/champion/Gangplank.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('3dd40fae-5aa7-4f27-95c4-88b16611c42c', '放逐之刃', 12, 'T 2', '50.84%', '4.53%', 'https://game.gtimg.cn/images/lol/act/img/champion/Riven.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('3de3775f-c862-4462-bc8c-585f07b8acfb', '诺克萨斯统领', 61, 'T 5', '46.36%', '0.54%', 'https://game.gtimg.cn/images/lol/act/img/champion/Swain.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('3e4c085a-b543-4f2f-bd97-d61f01683c97', '熔岩巨兽', 53, 'T 5', '47.79%', '1.5%', 'https://game.gtimg.cn/images/lol/act/img/champion/Malphite.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('41dcb28f-56dd-46eb-906a-ee31657e84aa', '迷失之牙', 44, 'T 4', '48.48%', '1.95%', 'https://game.gtimg.cn/images/lol/act/img/champion/Gnar.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('44c4eb44-ff2e-409f-9ed7-fc63c5a4ec8b', '河流之王', 51, 'T 4', '48.72%', '0.7%', 'https://game.gtimg.cn/images/lol/act/img/champion/TahmKench.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('4978fa9e-489f-4fb1-9351-b6aaf42eb6c6', '牧魂人', 33, 'T 3', '49.11%', '1.45%', 'https://game.gtimg.cn/images/lol/act/img/champion/Yorick.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('4c503cf0-04d2-4d9c-89c6-00c82543afcc', '扭曲树精', 45, 'T 4', '48.89%', '0.96%', 'https://game.gtimg.cn/images/lol/act/img/champion/Maokai.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('55a16a17-c312-4f0f-8ff7-f9b1f63138de', '符文法师', 58, 'T 5', '46.34%', '1.9%', 'https://game.gtimg.cn/images/lol/act/img/champion/Ryze.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('57453777-671e-4894-9c4d-719a3400382d', '纳祖芒荣耀', 16, 'T 2', '49.34%', '9.03%', 'https://game.gtimg.cn/images/lol/act/img/champion/KSante.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('59f660b6-3179-4273-af15-ff1300e92bee', '无双剑姬', 1, 'T 1', '51.86%', '13.75%', 'https://game.gtimg.cn/images/lol/act/img/champion/Fiora.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('5a88a2f8-324c-45e4-a98b-1ecccdad30fd', '灵罗娃娃', 28, 'T 3', '49.36%', '2.49%', 'https://game.gtimg.cn/images/lol/act/img/champion/Gwen.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('6031e7ec-01d5-43d9-bd9a-680e7e6e4ab3', '祖安怒兽', 8, 'T 2', '52.82%', '2.36%', 'https://game.gtimg.cn/images/lol/act/img/champion/Warwick.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('63a42fed-1ce9-47b4-af86-2288ed5aadbb', '荒漠屠夫', 17, 'T 2', '50.07%', '5.32%', 'https://game.gtimg.cn/images/lol/act/img/champion/Renekton.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('69e2dd1a-6b65-4d22-94b7-314e3ccdcf13', '影哨', 41, 'T 4', '49.68%', '0.77%', 'https://game.gtimg.cn/images/lol/act/img/champion/Akshan.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('6b07796d-5384-42b0-9d70-7b49699a2807', '巨魔之王', 42, 'T 4', '49.36%', '0.6%', 'https://game.gtimg.cn/images/lol/act/img/champion/Trundle.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('6e3f0e20-c475-4466-8c3c-d827016a9dfe', '疾风剑豪', 55, 'T 5', '46.14%', '0.93%', 'https://game.gtimg.cn/images/lol/act/img/champion/Yasuo.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('72ded50d-49c7-47b6-9815-fa0d30db97c7', '暮光之眼', 15, 'T 2', '52.04%', '2.67%', 'https://game.gtimg.cn/images/lol/act/img/champion/Shen.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('73460691-9c00-458f-b018-2033999f2e69', '虚空恐惧', 60, 'T 5', '47.12%', '0.79%', 'https://game.gtimg.cn/images/lol/act/img/champion/Chogath.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('7600ff2c-0215-4308-96c2-610d42626a63', '魔蛇之拥', 57, 'T 5', '50.59%', '0.5%', 'https://game.gtimg.cn/images/lol/act/img/champion/Cassiopeia.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('7f6be8ae-0993-4d12-9f5a-0bbc8ca06bd4', '诺克萨斯之手', 3, 'T 1', '52.2%', '7.11%', 'https://game.gtimg.cn/images/lol/act/img/champion/Darius.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('8680fd85-cab7-4d92-94f0-261d3022615d', '不屈之枪', 47, 'T 4', '50.44%', '0.67%', 'https://game.gtimg.cn/images/lol/act/img/champion/Pantheon.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('8b2cac1c-0dab-4dcf-999a-292c7de25421', '狂战士', 5, 'T 2', '53.41%', '1.88%', 'https://game.gtimg.cn/images/lol/act/img/champion/Olaf.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('8d61e817-ade7-4126-bcb4-962874988eae', '亡灵战神', 52, 'T 4', '48.06%', '1.48%', 'https://game.gtimg.cn/images/lol/act/img/champion/Sion.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('99222f5f-b67f-4d18-a92d-4ab7478879d4', '暗夜猎手', 39, 'T 4', '49.87%', '1.59%', 'https://game.gtimg.cn/images/lol/act/img/champion/Vayne.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('9bd40c05-0176-4ae4-b1a5-d0e17db1f251', '迅捷斥候', 30, 'T 3', '49.5%', '2.03%', 'https://game.gtimg.cn/images/lol/act/img/champion/Teemo.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('9e4f38cc-65d1-4a2f-948b-5b8146353d6b', '武器大师', 11, 'T 2', '50.38%', '6.99%', 'https://game.gtimg.cn/images/lol/act/img/champion/Jax.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('ab282c92-3cb6-4153-a02b-3c0b5880255a', '不灭狂雷', 34, 'T 3', '50.65%', '1.54%', 'https://game.gtimg.cn/images/lol/act/img/champion/Volibear.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('b1b76a6c-385f-42b5-8781-2bb36e015532', '机械公敌', 32, 'T 3', '51.1%', '2.39%', 'https://game.gtimg.cn/images/lol/act/img/champion/Rumble.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('b2e3767c-adcd-4dd2-a640-2fcae602f793', '离群之刺', 54, 'T 5', '46.47%', '4.45%', 'https://game.gtimg.cn/images/lol/act/img/champion/Akali.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('b38dc5d5-8bce-430a-8612-4706c5b11b76', '大发明家', 18, 'T 3', '51.81%', '0.9%', 'https://game.gtimg.cn/images/lol/act/img/champion/Heimerdinger.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('b6e578fe-efa9-4232-bf61-1382336c35b6', '祖安狂人', 50, 'T 4', '48.51%', '1.56%', 'https://game.gtimg.cn/images/lol/act/img/champion/DrMundo.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('bbbe8b6e-cc7a-404e-81c5-74d139cb497c', '兽灵行者', 59, 'T 5', '47.42%', '0.44%', 'https://game.gtimg.cn/images/lol/act/img/champion/Udyr.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('c6bf63de-9559-47a8-9978-08c79b1307ae', '狂暴之心', 40, 'T 4', '49.84%', '1.5%', 'https://game.gtimg.cn/images/lol/act/img/champion/Kennen.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('c7daab58-dc3b-48f3-ab09-685772d4fb71', '酒桶', 48, 'T 4', '47.95%', '1.63%', 'https://game.gtimg.cn/images/lol/act/img/champion/Gragas.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('c87db1fc-ba26-4d9d-94c1-e8e4d3a571d2', '正义天使', 29, 'T 3', '49.86%', '1.43%', 'https://game.gtimg.cn/images/lol/act/img/champion/Kayle.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('d08e9d15-8086-47eb-8858-6c49f0c53303', '沙漠死神', 14, 'T 2', '50.84%', '3.44%', 'https://game.gtimg.cn/images/lol/act/img/champion/Nasus.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('d0aeb086-eaad-43f7-9c85-d02f4424ec28', '封魔剑魂', 46, 'T 4', '46.6%', '5.41%', 'https://game.gtimg.cn/images/lol/act/img/champion/Yone.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('d0d8c9fe-6ce4-468d-97a1-e0111addd756', '蛮族之王', 13, 'T 2', '51.47%', '1.77%', 'https://game.gtimg.cn/images/lol/act/img/champion/Tryndamere.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('d1a56f79-b40a-4d7c-965c-71287688f300', '德玛西亚之翼', 26, 'T 3', '52.03%', '1.03%', 'https://game.gtimg.cn/images/lol/act/img/champion/Quinn.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('d4b05663-9f09-412f-83ff-f42eab603a56', '猩红收割者', 43, 'T 4', '49.28%', '1.54%', 'https://game.gtimg.cn/images/lol/act/img/champion/Vladimir.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('d7a5bed2-f5fb-4373-bb8f-7e553867d25c', '暴怒骑士', 9, 'T 2', '52.72%', '1.86%', 'https://game.gtimg.cn/images/lol/act/img/champion/Kled.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('d93e5dea-1345-4838-8c09-f7ac5b38d904', '铁铠冥魂', 21, 'T 3', '49.63%', '4.01%', 'https://game.gtimg.cn/images/lol/act/img/champion/Mordekaiser.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('e035f2a3-feba-44d2-9437-7418a74bf449', '刀锋舞者', 10, 'T 2', '49.14%', '7.16%', 'https://game.gtimg.cn/images/lol/act/img/champion/Irelia.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('e4150ca0-6408-41d0-ae17-6d4d4308ffd0', '含羞蓓蕾', 38, 'T 4', '50.42%', '1.12%', 'https://game.gtimg.cn/images/lol/act/img/champion/Lillia.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('eed5199a-2fab-4369-9c88-230845b206e2', '炼金术士', 23, 'T 3', '51.9%', '1.45%', 'https://game.gtimg.cn/images/lol/act/img/champion/Singed.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('efdabc41-00d7-4a8f-8439-2cae9b8f2c19', '德玛西亚之力', 20, 'T 3', '50.86%', '2.95%', 'https://game.gtimg.cn/images/lol/act/img/champion/Garen.png', '2022/12/6/14:6');
INSERT INTO `top_rank` VALUES ('ffd8d88c-18c6-414e-ac1c-f06a3bdd9880', '海兽祭司', 19, 'T 3', '50.56%', '2.75%', 'https://game.gtimg.cn/images/lol/act/img/champion/Illaoi.png', '2022/12/6/14:6');

SET FOREIGN_KEY_CHECKS = 1;
