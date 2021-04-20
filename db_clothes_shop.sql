/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_clothes_shop

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-12-26 15:12:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `easybuy_comment`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_comment`;
CREATE TABLE `easybuy_comment` (
  `EC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EC_CONTENT` varchar(200) NOT NULL,
  `EC_CREATE_TIME` datetime NOT NULL,
  `EC_REPLY` varchar(200) DEFAULT NULL,
  `EC_REPLY_TIME` datetime DEFAULT NULL,
  `EC_NICK_NAME` varchar(10) NOT NULL,
  PRIMARY KEY (`EC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_comment
-- ----------------------------
INSERT INTO `easybuy_comment` VALUES ('7', '猿来入此站长在么？', '2018-12-19 11:06:52', '在的！', '2018-12-19 00:00:00', '白菜');
INSERT INTO `easybuy_comment` VALUES ('9', '鲜花商城，可以多上点鲜花信息嘛！', '2018-12-19 14:30:42', '', null, '猿来入此');
INSERT INTO `easybuy_comment` VALUES ('10', '好喜欢多肉！', '2018-12-19 14:31:06', '', null, '阿朱');
INSERT INTO `easybuy_comment` VALUES ('11', '喜欢对着多肉发呆！', '2018-12-19 14:35:35', '', null, '慢慢来');
INSERT INTO `easybuy_comment` VALUES ('12', '有人说慢慢来会比较快', '2018-12-19 14:37:54', '', null, '慢慢来会比较快');

-- ----------------------------
-- Table structure for `easybuy_news`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_news`;
CREATE TABLE `easybuy_news` (
  `EN_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EN_TITLE` varchar(40) NOT NULL,
  `EN_CONTENT` varchar(1000) NOT NULL,
  `EN_CREATE_TIME` datetime NOT NULL,
  PRIMARY KEY (`EN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_news
-- ----------------------------
INSERT INTO `easybuy_news` VALUES ('1', '猿来入此-IT教程项目网站', '每天更新一个经典项目附带视频指导运行教程', '2018-04-24 13:00:57');
INSERT INTO `easybuy_news` VALUES ('2', '猿来入此好啊', '每天更新一个经典项目附带视频指导运行教程，真的好啊！', '2018-04-24 13:01:31');
INSERT INTO `easybuy_news` VALUES ('3', '猿来入此项目教程网', '每天更新一个经典项目附带视频指导运行教程，项目保证运行。', '2018-04-24 13:02:04');
INSERT INTO `easybuy_news` VALUES ('4', '这个商城项目非常适合学习', '猿来入此出品', '2018-04-24 13:13:04');
INSERT INTO `easybuy_news` VALUES ('5', '商城须知', '注册的时候所有的字段都要填写', '2018-04-24 13:13:48');
INSERT INTO `easybuy_news` VALUES ('6', '会员注册须知', '会员注册须知', '2018-04-24 13:23:47');
INSERT INTO `easybuy_news` VALUES ('7', '会员购买须知', '会员购买须知', '2018-04-24 13:24:01');
INSERT INTO `easybuy_news` VALUES ('8', '关于猿来入此', '猿来入此每天发布精品项目源码，配有视频指导配置运行教程，定期也更新实战项目教程。', '2018-04-24 13:24:49');

-- ----------------------------
-- Table structure for `easybuy_order`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order`;
CREATE TABLE `easybuy_order` (
  `EO_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_USER_ID` varchar(10) NOT NULL,
  `EO_USER_NAME` varchar(20) DEFAULT NULL,
  `EO_USER_ADDRESS` varchar(200) DEFAULT NULL,
  `EO_CREATE_TIME` datetime NOT NULL,
  `EO_COST` decimal(10,2) NOT NULL,
  `EO_STATUS` decimal(6,0) NOT NULL,
  `EO_TYPE` decimal(6,0) NOT NULL,
  PRIMARY KEY (`EO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_order
-- ----------------------------
INSERT INTO `easybuy_order` VALUES ('8', '猿来入此', '猿来入此', '上海市 浦东新区 猿来入此 站长', '2018-12-26 15:03:14', '641.00', '1', '1');
INSERT INTO `easybuy_order` VALUES ('9', '猿来入此', '猿来入此', '上海市 浦东新区 猿来入此 站长', '2018-12-26 15:07:35', '908.00', '1', '1');

-- ----------------------------
-- Table structure for `easybuy_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order_detail`;
CREATE TABLE `easybuy_order_detail` (
  `EOD_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_ID` decimal(10,0) NOT NULL,
  `EP_ID` decimal(10,0) NOT NULL,
  `EOD_QUANTITY` decimal(6,0) NOT NULL,
  `EOD_COST` decimal(10,2) NOT NULL,
  PRIMARY KEY (`EOD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_order_detail
-- ----------------------------
INSERT INTO `easybuy_order_detail` VALUES ('11', '8', '36', '1', '198.00');
INSERT INTO `easybuy_order_detail` VALUES ('12', '8', '34', '1', '188.00');
INSERT INTO `easybuy_order_detail` VALUES ('13', '8', '35', '1', '85.00');
INSERT INTO `easybuy_order_detail` VALUES ('14', '8', '35', '2', '170.00');
INSERT INTO `easybuy_order_detail` VALUES ('15', '9', '38', '1', '230.00');
INSERT INTO `easybuy_order_detail` VALUES ('16', '9', '43', '1', '678.00');

-- ----------------------------
-- Table structure for `easybuy_product`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product`;
CREATE TABLE `easybuy_product` (
  `EP_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EP_NAME` varchar(128) NOT NULL,
  `EP_DESCRIPTION` varchar(512) DEFAULT NULL,
  `EP_PRICE` decimal(10,2) NOT NULL,
  `EP_STOCK` decimal(10,0) NOT NULL,
  `EPC_ID` decimal(10,0) DEFAULT NULL,
  `EPC_CHILD_ID` decimal(10,0) DEFAULT NULL,
  `EP_FILE_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`EP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_product
-- ----------------------------
INSERT INTO `easybuy_product` VALUES ('34', '冬季连衣裙秋冬加厚宽松大码显瘦冬裙长袖中长款毛衣女秋针织长裙', '冬季连衣裙秋冬加厚宽松大码显瘦冬裙长袖中长款毛衣女秋针织长裙', '188.00', '110', '35', '42', 'small_201611100933308161.jpg');
INSERT INTO `easybuy_product` VALUES ('35', '高领加绒加厚打底衫女2016秋冬新款长袖蕾丝衫堆堆领上衣保暖小衫', '高领加绒加厚打底衫女2016秋冬新款长袖蕾丝衫堆堆领上衣保暖小衫', '85.00', '40', '35', '43', 'small_201611110357433111.jpg');
INSERT INTO `easybuy_product` VALUES ('36', '毛衣外套女中长款秋冬开衫加厚长袖韩版风衣宽松大码披肩针织花色', '毛衣外套女中长款秋冬开衫加厚长袖韩版风衣宽松大码披肩针织花色', '198.00', '322', '35', '44', 'small_201611100944534783.jpg');
INSERT INTO `easybuy_product` VALUES ('37', '意欣服装 T恤衫 短袖翻领t恤广告衫可定制', '意欣服装 T恤衫 短袖翻领t恤广告衫可定制', '25.00', '212', '38', '45', 'wKhQwFvJTLyEfBT-AAAAAMSTdSQ083.jpg.jpg');
INSERT INTO `easybuy_product` VALUES ('38', '奕飏日系外套男冬季 青年秋季灯芯绒夹克 韩版棒球服男春秋外套潮', '奕飏日系外套男冬季 青年秋季灯芯绒夹克 韩版棒球服男春秋外套潮', '230.00', '42', '38', '46', 'small_201611110743183730.jpg');
INSERT INTO `easybuy_product` VALUES ('39', '以纯线上品牌A21 男装时尚简约牛仔外套夹克 4811110004 中蓝 175/88A/L', '以纯线上品牌A21 男装时尚简约牛仔外套夹克 4811110004 中蓝 175/88A/L', '249.00', '87', '38', '47', '5be3fac4Nb861d033.jpg');
INSERT INTO `easybuy_product` VALUES ('40', '亲子装夏装2016一家三口全家装迷彩亲子秋装套装运动母女母子班服', '亲子装夏装2016一家三口全家装迷彩亲子秋装套装运动母女母子班服', '158.00', '465', '39', '48', 'small_201611110955239957.jpg');
INSERT INTO `easybuy_product` VALUES ('41', '左西童装男童毛衣套头 儿童针织衫加厚线衣韩版潮2016秋冬款新款', '左西童装男童毛衣套头 儿童针织衫加厚线衣韩版潮2016秋冬款新款', '138.00', '666', '39', '49', 'small_201611110924224385.jpg');
INSERT INTO `easybuy_product` VALUES ('42', '童装秋装2016新款女童牛仔背带裙儿童牛仔裙中大童夏装长袖连衣裙', '童装秋装2016新款女童牛仔背带裙儿童牛仔裙中大童夏装长袖连衣裙', '169.00', '434', '39', '50', 'small_201611110914317950.jpg');
INSERT INTO `easybuy_product` VALUES ('43', '中脉美体内衣 保暖内衣', '中脉美体内衣 保暖内衣', '678.00', '8', '40', '51', 'wKhQx1oqxBuECPcuAAAAAHceMkg700.jpg');
INSERT INTO `easybuy_product` VALUES ('44', '情侣装男女薄秋衣秋裤套装薄打底无痕莫代尔内衣 男士秋衣秋裤 内裤厂家', '情侣装男女薄秋衣秋裤套装薄打底无痕莫代尔内衣 男士秋衣秋裤 内裤厂家', '453.00', '43', '40', '52', 'wKhQx1m4jxqEGAokAAAAAEBHNcc634.jpg');
INSERT INTO `easybuy_product` VALUES ('45', '竹纤维无痕少女背心微聚拢运动文胸 无钢圈薄款乳罩 瑜伽内衣胸罩', '竹纤维无痕少女背心微聚拢运动文胸 无钢圈薄款乳罩 瑜伽内衣胸罩', '78.00', '323', '40', '53', 'wKhQw1pF89CEVYmpAAAAAIlSYvU436.jpg');
INSERT INTO `easybuy_product` VALUES ('46', '宇泰秋冬新款职业装女装套装女士正装西服工作服黑色面试西装工装', '宇泰秋冬新款职业装女装套装女士正装西服工作服黑色面试西装工装', '168.00', '323', '41', '54', 'small_201611110901344629.png');
INSERT INTO `easybuy_product` VALUES ('47', '秋冬职业装女装套装马甲长袖西装三件面试正装上班修身气质工作服', '秋冬职业装女装套装马甲长袖西装三件面试正装上班修身气质工作服', '149.00', '32', '41', '55', 'small_201611110924483284.png');
INSERT INTO `easybuy_product` VALUES ('48', '秋冬职业装女装套装马甲长袖西装三件面试正装上班修身气质工作服', '秋冬职业装女装套装马甲长袖西装三件面试正装上班修身气质正装裤', '159.00', '19', '41', '56', 'small_201611110849263825.png');

-- ----------------------------
-- Table structure for `easybuy_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product_category`;
CREATE TABLE `easybuy_product_category` (
  `EPC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EPC_NAME` varchar(20) NOT NULL,
  `EPC_PARENT_ID` decimal(10,0) NOT NULL,
  PRIMARY KEY (`EPC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_product_category
-- ----------------------------
INSERT INTO `easybuy_product_category` VALUES ('35', '女装', '0');
INSERT INTO `easybuy_product_category` VALUES ('38', '男装', '0');
INSERT INTO `easybuy_product_category` VALUES ('39', '童装', '0');
INSERT INTO `easybuy_product_category` VALUES ('40', '内衣', '0');
INSERT INTO `easybuy_product_category` VALUES ('41', '职业装', '0');
INSERT INTO `easybuy_product_category` VALUES ('42', '连衣裙', '35');
INSERT INTO `easybuy_product_category` VALUES ('43', '上衣', '35');
INSERT INTO `easybuy_product_category` VALUES ('44', '毛衣外套', '35');
INSERT INTO `easybuy_product_category` VALUES ('45', 'T桖', '38');
INSERT INTO `easybuy_product_category` VALUES ('46', '外套', '38');
INSERT INTO `easybuy_product_category` VALUES ('47', '牛仔衣', '38');
INSERT INTO `easybuy_product_category` VALUES ('48', '亲子装', '39');
INSERT INTO `easybuy_product_category` VALUES ('49', '童装男', '39');
INSERT INTO `easybuy_product_category` VALUES ('50', '童装女', '39');
INSERT INTO `easybuy_product_category` VALUES ('51', '保暖内衣', '40');
INSERT INTO `easybuy_product_category` VALUES ('52', '秋衣秋裤', '40');
INSERT INTO `easybuy_product_category` VALUES ('53', '文胸', '40');
INSERT INTO `easybuy_product_category` VALUES ('54', '西服套装', '41');
INSERT INTO `easybuy_product_category` VALUES ('55', '职业套装', '41');
INSERT INTO `easybuy_product_category` VALUES ('56', '正装裤', '41');

-- ----------------------------
-- Table structure for `easybuy_shop`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_shop`;
CREATE TABLE `easybuy_shop` (
  `es_id` int(11) NOT NULL AUTO_INCREMENT,
  `es_ep_file_name` varchar(128) DEFAULT NULL,
  `es_ep_name` varchar(64) DEFAULT NULL,
  `es_ep_price` decimal(10,0) DEFAULT NULL,
  `es_eod_quantity` int(11) DEFAULT NULL,
  `es_ep_stock` int(11) DEFAULT NULL,
  `es_ep_id` int(11) DEFAULT NULL,
  `es_eu_user_id` varchar(64) DEFAULT NULL,
  `es_valid` int(11) DEFAULT NULL,
  PRIMARY KEY (`es_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_shop
-- ----------------------------
INSERT INTO `easybuy_shop` VALUES ('12', 'small_201611110357433111.jpg', '高领加绒加厚打底衫女2016秋冬新款长袖蕾丝衫堆堆领上衣保暖小衫', '85', '2', '43', '35', '猿来入此', '2');
INSERT INTO `easybuy_shop` VALUES ('13', 'small_201611110357433111.jpg', '高领加绒加厚打底衫女2016秋冬新款长袖蕾丝衫堆堆领上衣保暖小衫', '85', '1', '43', '35', '猿来入此', '2');
INSERT INTO `easybuy_shop` VALUES ('14', 'small_201611100933308161.jpg', '冬季连衣裙秋冬加厚宽松大码显瘦冬裙长袖中长款毛衣女秋针织长裙', '188', '1', '111', '34', '猿来入此', '2');
INSERT INTO `easybuy_shop` VALUES ('15', 'small_201611100944534783.jpg', '毛衣外套女中长款秋冬开衫加厚长袖韩版风衣宽松大码披肩针织花色', '198', '1', '323', '36', '猿来入此', '2');
INSERT INTO `easybuy_shop` VALUES ('16', 'wKhQx1oqxBuECPcuAAAAAHceMkg700.jpg', '中脉美体内衣 保暖内衣', '678', '1', '9', '43', '猿来入此', '2');
INSERT INTO `easybuy_shop` VALUES ('17', 'small_201611110743183730.jpg', '奕飏日系外套男冬季 青年秋季灯芯绒夹克 韩版棒球服男春秋外套潮', '230', '1', '43', '38', '猿来入此', '2');

-- ----------------------------
-- Table structure for `easybuy_user`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_user`;
CREATE TABLE `easybuy_user` (
  `EU_USER_ID` varchar(32) NOT NULL,
  `EU_USER_NAME` varchar(20) NOT NULL,
  `EU_PASSWORD` varchar(20) NOT NULL,
  `EU_SEX` varchar(1) NOT NULL,
  `EU_BIRTHDAY` datetime DEFAULT NULL,
  `EU_IDENTITY_CODE` varchar(60) DEFAULT NULL,
  `EU_EMAIL` varchar(80) DEFAULT NULL,
  `EU_MOBILE` varchar(11) DEFAULT NULL,
  `EU_ADDRESS` varchar(200) DEFAULT NULL,
  `EU_STATUS` decimal(6,0) NOT NULL,
  PRIMARY KEY (`EU_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_user
-- ----------------------------
INSERT INTO `easybuy_user` VALUES ('admin', '管理员【猿来入此】', 'admin', 'T', '2018-04-11 00:00:00', null, 'llqqxf@163.com', '13666666666', '上海', '2');
INSERT INTO `easybuy_user` VALUES ('猿来入此', '猿来入此', '123456', 'T', '2018-12-13 00:00:00', null, 'llqqxf@163.com', '13666666666', '上海市 浦东新区 猿来入此 站长', '1');
