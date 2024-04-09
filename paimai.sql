/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50520
 Source Host           : localhost:3306
 Source Schema         : paimai

 Target Server Type    : MySQL
 Target Server Version : 50520
 File Encoding         : 65001

 Date: 11/03/2024 13:38:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/springbootp0eo6/upload/1708615204416.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/springbootp0eo6/upload/1708694354455.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/springbootp0eo6/upload/1708694389152.jpg');
INSERT INTO `config` VALUES (6, 'homepage', 'http://localhost:8080/springbootp0eo6/upload/1708694373054.jpg');

-- ----------------------------
-- Table structure for jingpaidingdan
-- ----------------------------
DROP TABLE IF EXISTS `jingpaidingdan`;
CREATE TABLE `jingpaidingdan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  `chengjiaojiage` int(11) NOT NULL COMMENT '成交价格',
  `faburiqi` date NULL DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dingdanbianhao`(`dingdanbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1708758887858 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '竞拍订单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jingpaidingdan
-- ----------------------------
INSERT INTO `jingpaidingdan` VALUES (1708758887856, '2024-02-24 15:33:20', '1708760000301', '耳机', '数码', 600, '2024-02-22', '001', '姓名1', '13823888881', '773890001@qq.com', '地址1', '已支付');
INSERT INTO `jingpaidingdan` VALUES (1708758887857, '2024-03-11 13:30:46', '1710135046429', '乒乓球卡', '乒乓球', 9999, '2024-03-01', '001', '赵三', '13823888881', '001', '地址1', '未支付');

-- ----------------------------
-- Table structure for lishijingpai
-- ----------------------------
DROP TABLE IF EXISTS `lishijingpai`;
CREATE TABLE `lishijingpai`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  `riqi` datetime NULL DEFAULT NULL COMMENT '日期',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1710134987178 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '历史竞拍' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lishijingpai
-- ----------------------------
INSERT INTO `lishijingpai` VALUES (1710134987177, '2024-03-11 13:29:46', '乒乓球卡', '乒乓球', '2024-03-01 16:00:00', 9999, '001', '赵三', '13823888881', '地址1', '是', NULL);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1612340606311 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言板' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (76, '2021-02-03 16:07:40', 6, '用户名6', '留言内容6', '回复内容6');
INSERT INTO `messages` VALUES (1612340606310, '2021-02-03 16:23:26', 1612340502319, '1', '有什么问题或者意见可以在这里给管理员进行反馈，管路员可以对信息进行回复', '好的 感谢反馈');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '竞拍公告' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (61, '2021-02-03 16:07:40', '上海市地一届慈善拍卖大会启动', ' 凝聚商界力量，振兴阳江经济。为学习贯彻市委经济工作会议精神，推动商会各项工作高质量发展，全力打造暖心商会、创新商会、品牌商会，1月11日下午，阳江市企业家商会隆重召开六届一次理事大会。', 'http://localhost:8080/springbootp0eo6/upload/1708355365924.jpg', '<p class=\"ql-align-center\">文章发布日期：2024-01-17 15:56:13&nbsp;&nbsp;&nbsp;&nbsp;作者：庄子鸿</p><p>&nbsp;凝聚商界力量，振兴阳江经济。为学习贯彻市委经济工作会议精神，推动商会各项工作高质量发展，全力打造暖心商会、创新商会、品牌商会，1月11日下午，阳江市企业家商会隆重召开六届一次理事大会。市政协主席杨文龙，市委常委、秘书长、统战部长王兵，市人大常委会副主任李宗瑞等领导，会后出席我会助力“百千万工程”暨2024新年晚会，与企业家欢聚一堂，共贺新春。</p><p>&nbsp;&nbsp;会长梁洪志，常务副会长赖国荣、洪剑锋、朱素莲、张巍腾，监事长关小媛，常务副会长梁瑞超、陈文湘、甘达斌、李清华、赖雄伟，副会长兼秘书长林奕辉，副会长冯佐亮、蔡怀志、叶秀荣、吴光炯、冯放、覃世杰、区云、李茂记、谭明苏、冯从明、张诺雅、郑富文、陈雪霞、黄国良、郑海发、刘奕捍，副秘书长谭俊豪、黄基敏、黎福光，副监事长曾纪茨、陈文立等出席会议。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>&nbsp;会议审议通过年度工作报告；审议通过年度会费收支情况说明；增补了若干常务理事、理事；表彰了一批先进会员；通过现场小组风采展示和会员投票评选，最终第六组被评为年度“红旗组”，第九组被评为“优秀组”，第四组被评为“潜力组”，分别获得一万元、六千元、四千元的奖金。</p><p>会议期间，还举行了慈善拍卖。所有拍品均由爱心会员企业家热心捐赠。在现场的热烈氛围下，一件件饱含爱心的拍品在广大会员企业家一次次踊跃举牌中被成功竞拍，29件拍品共筹得善款19.9万元，全部专款专用于我会的慈善公益事业。</p><p>&nbsp;&nbsp;会议充分肯定了商会一年来的工作，认为商会活动丰富多彩，效果显著。今后要继续始终坚持发挥职能作用，履行服务会员职责；始终不断促进企业交流合作，全面宣传商界文化，大力弘扬创业精神；始终加强会员队伍建设，增强凝聚力和社会影响力，为阳江民营经济健康发展起到了积极的作用。</p><p>&nbsp;会议号召，广大会员企业要坚定发展信心、保持发展定力、找准发展重点，攻坚克难、向上突围，进一步提振干事创业的精气神，以创先争优、埋头实干的劲头，努力在推动高质量发展上展现新作为、取得新成效。同时发扬集体智慧和力量，努力把阳江市企业家商会办成本地乃至全省一流的品牌商会而努力奋斗！</p>');

-- ----------------------------
-- Table structure for paimaishangpin
-- ----------------------------
DROP TABLE IF EXISTS `paimaishangpin`;
CREATE TABLE `paimaishangpin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品类型',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `shangpinxiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品详情',
  `huodongshijian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动时间',
  `huodongzhuangtai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1710134942776 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '拍卖商品' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of paimaishangpin
-- ----------------------------
INSERT INTO `paimaishangpin` VALUES (1710134801825, '2024-03-11 13:26:41', '足球卡', '足球', 'http://localhost:8080/springbootp0eo6/upload/1710134757092.jpg', 500, '<p>这是一张具有纪念意义的足球卡</p>', '长期有效', '竞拍中');
INSERT INTO `paimaishangpin` VALUES (1710134889617, '2024-03-11 13:28:09', '乒乓球卡', '乒乓球', 'http://localhost:8080/springbootp0eo6/upload/1710134856338.jpg', 11000, '<p>中国冠军乒乓球卡片集合</p>', '长期有效', '竞拍中');
INSERT INTO `paimaishangpin` VALUES (1710134942775, '2024-03-11 13:29:02', 'NBA', '篮球', 'http://localhost:8080/springbootp0eo6/upload/1710134915905.jpg', 563, '<p>NBA篮球卡片集合</p>', '长期有效', '竞拍中');

-- ----------------------------
-- Table structure for shangpinleixing
-- ----------------------------
DROP TABLE IF EXISTS `shangpinleixing`;
CREATE TABLE `shangpinleixing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1708695066109 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品类型' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shangpinleixing
-- ----------------------------
INSERT INTO `shangpinleixing` VALUES (21, '2021-02-03 16:07:40', '篮球');
INSERT INTO `shangpinleixing` VALUES (22, '2021-02-03 16:07:40', '足球');
INSERT INTO `shangpinleixing` VALUES (24, '2021-02-03 16:07:40', '乒乓球');
INSERT INTO `shangpinleixing` VALUES (1612340340506, '2021-02-03 16:18:59', '其他');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NULL DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', 'vub13xiauvjk8wjq8dqg3k9dex9j6u2b', '2021-02-03 16:09:40', '2024-03-11 06:24:43');
INSERT INTO `token` VALUES (2, 11, '001', 'yonghu', '用户', 'cfhyvn4zgncb2nhldsw0z23uag0purnn', '2021-02-03 16:09:48', '2024-03-11 06:29:23');
INSERT INTO `token` VALUES (3, 1612340502319, '1', 'yonghu', '用户', 'zvrwvzkxhd8p9t253canc34i2nz65uhu', '2021-02-03 16:21:50', '2021-02-03 09:25:45');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2021-02-03 16:07:40');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1708757433285 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2021-02-03 16:07:40', '001', '001', '赵三', '男', 'http://localhost:8080/springbootp0eo6/upload/yonghu_touxiang1.jpg', '440300199101010001', '13823888881', '773890001@qq.com', '地址1');
INSERT INTO `yonghu` VALUES (12, '2021-02-03 16:07:40', '用户2', '123456', '姓名2', '男', 'http://localhost:8080/springbootp0eo6/upload/yonghu_touxiang2.jpg', '440300199202020002', '13823888882', '773890002@qq.com', '地址2');
INSERT INTO `yonghu` VALUES (13, '2021-02-03 16:07:40', '用户3', '123456', '姓名3', '男', 'http://localhost:8080/springbootp0eo6/upload/yonghu_touxiang3.jpg', '440300199303030003', '13823888883', '773890003@qq.com', '地址3');
INSERT INTO `yonghu` VALUES (1612340502319, '2021-02-03 16:21:42', '1', '1', '刘倩', '女', 'http://localhost:8080/springbootp0eo6/upload/1708441020716.webp', '441214121412141211', '15214121411', '11212@163.com', '上海市');

SET FOREIGN_KEY_CHECKS = 1;
