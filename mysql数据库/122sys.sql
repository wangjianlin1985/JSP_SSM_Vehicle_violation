/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : 122sys

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2018-07-26 21:39:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `autocar`
-- ----------------------------
DROP TABLE IF EXISTS `autocar`;
CREATE TABLE `autocar` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) default NULL,
  `carno` varchar(255) default NULL,
  `color` varchar(255) default NULL,
  `seats` int(11) default NULL,
  `thumb` varchar(255) default NULL,
  `description` text,
  `price` int(11) default NULL,
  `created` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `sbno` varchar(255) default NULL,
  `state` int(11) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of autocar
-- ----------------------------
INSERT INTO `autocar` VALUES ('1', '2', '云A284582', '白色', '4', null, '--', '235811', '2018-04-29 19:35:05', '奔驰C200', '15866211111162', '1');
INSERT INTO `autocar` VALUES ('2', '2', '云A0B3H6', '黑色', '5', null, '--', '278965', '2018-04-29 19:35:38', '大众途观', '25786563215', '1');

-- ----------------------------
-- Table structure for `fixform`
-- ----------------------------
DROP TABLE IF EXISTS `fixform`;
CREATE TABLE `fixform` (
  `id` int(11) NOT NULL auto_increment,
  `address` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  `description` text,
  `fixdesc` text,
  `created` varchar(255) default NULL,
  `fixtime` varchar(255) default NULL,
  `uid` int(11) default NULL,
  `state` int(11) default NULL,
  `carid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fixform
-- ----------------------------
INSERT INTO `fixform` VALUES ('1', '菊花村', '15578587594', '李洪武', '离合器烧毁更换', null, '2018-04-29 19:36:12', null, '2', '1', '1');

-- ----------------------------
-- Table structure for `infocate`
-- ----------------------------
DROP TABLE IF EXISTS `infocate`;
CREATE TABLE `infocate` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `created` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of infocate
-- ----------------------------
INSERT INTO `infocate` VALUES ('1', '交管资讯', '2018-04-29 19:31:43');
INSERT INTO `infocate` VALUES ('2', '警示教育', '2018-04-29 19:31:47');
INSERT INTO `infocate` VALUES ('3', '信息公告', '2018-04-29 19:31:53');
INSERT INTO `infocate` VALUES ('4', '业务热点', '2018-04-29 19:31:59');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键ID',
  `uid` int(11) NOT NULL COMMENT '用户',
  `mid` int(11) NOT NULL COMMENT '评论主题',
  `content` text NOT NULL COMMENT '评论内容',
  `type` int(11) default '1' COMMENT '类型',
  `created` varchar(255) NOT NULL COMMENT '创建时间',
  `updated` varchar(255) default NULL COMMENT '更新时间',
  `status` tinyint(4) default NULL COMMENT '状态',
  `subject` varchar(255) default NULL,
  `pid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '2', '1', '怎么消分啊', '1', '2018-04-29 19:36:48', '2018-04-29 19:36:48', '1', '我的分扣了14分了咋办啊', null);
INSERT INTO `message` VALUES ('2', '1', '1', '消分只能再去学习了', '1', '2018-04-29 19:40:19', '2018-04-29 19:40:19', '1', '消分问题', null);
INSERT INTO `message` VALUES ('3', '1', '1', '还是乖乖的以后小心驾车！', '1', '2018-07-26 21:16:01', '2018-07-26 21:16:01', '1', '消分问题', null);

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `title` varchar(255) default NULL,
  `thumb` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `bodytext` text,
  `created` varchar(255) default NULL,
  `click` int(11) default NULL,
  `support` int(11) default NULL,
  `tags` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '1', '公安厅交通警察总队项目绩效再评价报告', 'uploadFile/32c10d44-3b3e-4190-b1d2-5cbc37e6c3eb.png', '4月27日21时，在昌平管界天通苑北苑东路白坊市场旁，在道路上方的通信线缆发生下坠事故。下坠的线缆与地面距离较低，几乎将道路阻断，大型车无法通过，导致线缆下方道路过往车辆发生严重拥堵。', '<p style=\"color:#4D4F53;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	昌平交通支队沙河大队天通苑警区接到大队指挥室布警后，民警孙科立即赶赴现场进行处警疏导。民警了解现场情况后，立即向指挥室上报，联系相关单位到场处置。\r\n</p>\r\n<p style=\"color:#4D4F53;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	由于该路段公交线路较多，在现场被阻断的公交车将近40辆，另有大型货车10几辆，还有几十辆小车也被堵在该路段。由于现场处置需要一定的时间，为了尽快将被阻断车辆疏解出去，民警立即呼叫警力支援，2名民警5名协警同时在北侧京百万路口、南侧白坊路路口，设立了分流岗位，疏导车辆绕行。同时，对滞留在该路段的大型车辆全部指挥疏导倒出后绕行，小型车调头驶出。7名警力用了一个多小时，才将上百滞留车辆全部疏解。\r\n</p>\r\n<p style=\"color:#4D4F53;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">\r\n	为了防止车辆再次进入该路段发生不测事故，民警又拉来隔离锥桶，在南北两个路口实施断路分流。7名警辅力量在两个路口连续疏导13个小时，直到28日上午10时，电信部门将线路事故清理排除，交通恢复之后才撤岗。（记者 杨柳）\r\n</p>', '2018-04-29 19:33:06', null, null, null);
INSERT INTO `news` VALUES ('2', '1', '公安厅交通警察总队2018年部门预算编制说明', 'uploadFile/43b0d9aa-ef80-40b0-9d9a-d78ca1e5067a.png', '中国青年网北京4月29日电 小长假第一天， 我驻埃及使馆发布公告，提醒赴埃及中国游客注意交通安全。', '<p style=\"font-size:18px;font-family:&quot;background-color:#FFFFFF;\">\r\n	通报称，近期埃及连续发生两起重大交通事故，共造成4名中国游客死亡，多人受伤。通报还称，由于埃及部分路政设施较差，红绿灯较少，当地司机开车速度较快，人车混行普遍，造成交通事故高发。一些中国游客安全意识淡薄，有的擅自脱离旅游团行动，有的过马路时不注意避让来往车辆，有的甚至站在马路中间照相，导致一些不必要的交通意外事故发生。\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;background-color:#FFFFFF;\">\r\n	外交部领事司和中国驻埃及使馆再次提醒来埃中国游客高度重视旅游期间交通安全：\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;background-color:#FFFFFF;\">\r\n	一、切实提高风险防范意识，选择有资质的国内旅行社参团来埃旅游，并听从旅游团带队导游的安全管理，减少非必要自费旅行项目。\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;background-color:#FFFFFF;\">\r\n	二、尽量避免脱团单独行动。如确需外出，务必征得带队导游同意并保持密切联系。鉴于老年游客是交通事故的多发人群，建议其外出时须有亲友或导游的陪护。\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;background-color:#FFFFFF;\">\r\n	三、坐车长途旅行时应尽量避免“红眼”行程，提醒司机安全驾驶，系好安全带\r\n</p>', '2018-04-29 19:34:01', null, null, null);
INSERT INTO `news` VALUES ('3', '2', '警示教育标题aaaa', '', '警示教育简介测试', '警示教育内容测试', '2018-07-26 21:13:59', null, null, null);
INSERT INTO `news` VALUES ('4', '3', '信息公告标题11111', '', '信息公告简介11111', '信息公告内容11111', '2018-07-26 21:14:41', null, null, null);

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '主键ID',
  `username` varchar(60) default '' COMMENT '用户名',
  `password` varchar(32) default '' COMMENT '密码',
  `sex` tinyint(1) unsigned default '0' COMMENT '性别',
  `birthday` date default NULL COMMENT '生日',
  `address` varchar(128) default '0' COMMENT '地址',
  `email` varchar(60) default '' COMMENT '邮箱',
  `qq` varchar(20) default NULL COMMENT 'qq',
  `tel` varchar(20) default NULL COMMENT '电话',
  `money` decimal(10,2) default '100.00' COMMENT '账户余额',
  `thumb` varchar(255) default NULL COMMENT '头像',
  `grade` int(11) default '1',
  `type` int(11) default '1' COMMENT '类型',
  `created` varchar(255) default '0' COMMENT '注册时间',
  `updated` varchar(32) default NULL COMMENT '更新时间',
  `status` tinyint(4) default '1' COMMENT '状态',
  `age` int(11) default NULL,
  `ecard` varchar(255) default NULL,
  `fromid` int(11) default NULL,
  `fromname` varchar(255) default NULL,
  `company` varchar(255) default NULL,
  `realname` varchar(255) default NULL,
  `position` varchar(255) default NULL,
  `signature` varchar(255) default NULL,
  `collegeid` int(11) default NULL,
  `majorid` int(11) default NULL,
  `classid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_name` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '698D51A19D8A121CE581499D7B701668', '11', null, '东宿舍12#4240', 'xiaoma@qq.com11', '5762744422', '1557858759433', '940.00', 'uploadFile/c2b7e277-ba3e-4653-b3bf-f074ecf22134.png', '1', '5', '0', null, '1', '22', '33', null, null, null, '44', '我就是我，是不一样的烟火', '5865858585555555254', '1', '1', '1');
INSERT INTO `users` VALUES ('2', 'qwe', '698D51A19D8A121CE581499D7B701668', '1', null, '东宿舍12#424', 'lishuang@qq.com', '5872622142', '151785545454', '225.00', 'uploadFile/da41d08a-9ceb-4ffc-9d11-d76716971bb6.jpg', null, '1', '2017-09-28 00:29:58', '2017-09-28 00:29:58', '1', '12', '7828012573', null, '一级BOSS系统', null, '张建华', '没有你陪伴，我真的好孤单', '586585858555574643', '1', '1', '1');
INSERT INTO `users` VALUES ('3', 'asdfg', '698D51A19D8A121CE581499D7B701668', '1', null, '东宿舍12#424', 'yy@qq.com', '88757627444', '15178575744', '125.00', 'uploadFile/c81163bc-b088-4066-92bd-ebf60691bea5.jpeg', null, '1', '2017-09-28 00:30:50', '2017-09-28 00:30:50', '1', '21', '7502668420', null, '一级BOSS系统', null, '', '生活要有激情', '58658585855645646', '1', '1', '1');
INSERT INTO `users` VALUES ('4', 'hfg', '111', '1', null, '东宿舍12#424', 'lishuang@qq.com', '57627444', '151785545454', '120.00', 'uploadFile/13a4b571-f834-4c2c-b6b6-869739e4206b.jpeg', null, '1', '2017-09-28 00:32:02', '2017-09-28 00:32:02', '1', '12', '6363024623', null, '一级BOSS系统', null, '', 'http://music.163.com/song?id=5278162&userid=103780296', '5865858585454811', '1', '1', '1');
INSERT INTO `users` VALUES ('5', 'frv', 'E10ADC3949BA59ABBE56E057F20F883E', '1', null, '东宿舍12#424', 'xiaoma@qq.com', '57627444', '151785545454', '150.00', 'uploadFile/609b4e41-5531-41d0-b257-8fa8a285c78f.jpg', null, '1', '2017-09-28 00:32:43', '2017-09-28 00:32:43', '1', '23', '8171552614', null, '一级BOSS系统', null, '', '一直很安静', '58658585877656222', '1', '1', '1');
INSERT INTO `users` VALUES ('6', 'kgfv', '111', '1', null, '东宿舍12#424', 'xiaoma@qq.com', '57627444', '15578587594', '130.00', 'uploadFile/1e3aa859-f577-4c70-878f-f47b3e70062b.jpg', null, '1', '2017-09-28 00:46:27', '2017-09-28 00:46:27', '1', '33', '9054128982', '2', '王安石', '中国石化', '', '我有故事，你有酒吗？', '586585858746422', '1', '1', '1');
INSERT INTO `users` VALUES ('7', 'tdd', '111', '1', null, '东宿舍12#424', 'xiaoma@qq.com', '57627444', '151785545454', '135.00', 'uploadFile/2a544757-b9a4-4cae-afef-b14589f4a750.jpg', null, '1', '2017-09-28 01:15:58', '2017-09-28 01:15:58', '1', '36', '3933725547', '2', '王安石', '中石油', '张建华', '我悄悄地蒙上你的眼睛', '58658585245611114', '1', '1', '1');
INSERT INTO `users` VALUES ('8', 'gd', '111', '1', null, '东宿舍12#424', 'xiaoma@qq.com', '57627444', '15578587594', '100.00', 'uploadFile/c587124c-63bc-4791-99ba-8cf403469797.jpg', null, '1', '2017-09-28 01:16:33', '2017-09-28 01:16:33', '1', '31', '6581430618', '2', '王安石', '中国石化', '', '唉，生活怎么继续', '58658585827587665', '1', '1', '1');
INSERT INTO `users` VALUES ('9', 'yfhf', '111', '1', null, '东宿舍12#424', 'lishuang@qq.com', '57627444', '15578587594', '120.00', 'uploadFile/8a6321aa-d047-4450-b4a9-3325af8a18a8.jpg', null, '1', '2017-09-28 01:17:15', '2017-09-28 01:17:15', '1', '34', '1018690317', '2', '王安石', '中国石化', '', '蓝蓝的夜，兰兰的梦', '58658585855861111', '1', '1', '1');
INSERT INTO `users` VALUES ('10', 'jzljj', '111', '1', null, '云南省昆明市南屏街12-044', 'lishuang@qq.com', '57627444', '15578587594', '100.00', 'uploadFile/c2b096c3-c356-414c-80ac-18029b0662be.jpg', null, '1', '2017-09-28 01:30:03', '2017-09-28 01:30:03', '1', '32', '4453520998', '4', '张东', '中国石化', '', '我的思念，是不可触摸的网', '586585857887591', '1', '1', '1');
INSERT INTO `users` VALUES ('11', 'whzjf', '111', '1', null, '东宿舍12#424', 'xiaoma@qq.com', '57627444', '15578587594', '100.00', 'uploadFile/9d2c9d0b-5163-474d-85fd-cb2ea78808bf.jpg', null, '1', '2017-09-28 01:30:50', '2017-09-28 01:30:50', '1', '33', '0512127174', '4', '张东', '中石油', '', '深深的把你忘记', '58658585454', '1', '1', '1');
INSERT INTO `users` VALUES ('15', 'yhhz', '111', '1', null, '云南省昆明市南屏街12-044', 'lishuang@qq.com', '57627444', '15578587594', '105.00', 'uploadFile/bafb88f5-e097-413b-ae60-597dc96d5f8c.jpg', null, '1', '2017-12-27 15:01:26', null, null, '22', '53272319910102241X', null, null, null, '王氏', '因为明天，我将成为别人的新娘~', '5865856655254', '1', '1', '1');
INSERT INTO `users` VALUES ('16', 'sduperd', '698D51A19D8A121CE581499D7B701668', '2', null, '5', '64242424@qq.com', '754654765', '15578587594', '220.00', 'uploadFile/5bd654c1-b3ff-43fb-9b12-6d323d308dd7.jpg', null, '1', '2018-03-06 08:50:15', null, null, '30', '4', null, null, null, '1', '青春是打开了,就合不上的书。人生是踏上了，就回不了头的路，爱情是扔出了，就收不回的赌注。', '5865858524281', '1', '1', '1');
INSERT INTO `users` VALUES ('17', 'hdluke', '698D51A19D8A121CE581499D7B701668', null, null, null, null, null, null, '100.00', 'uploadFile/1682b3d7-e367-439e-80ae-7f6a995de4e5.png', null, '1', '2018-03-08 08:27:38', null, null, null, null, null, null, null, '4565', null, '586585858212841', null, null, null);
INSERT INTO `users` VALUES ('18', 'test0308', '698D51A19D8A121CE581499D7B701668', '3', null, '云南省昆明市南屏街12-044', 'admin@gmail.com', '46578', '15578587594', '125.00', '', null, '1', '2018-03-08 15:45:19', null, null, '11', '9557626281', null, null, null, '张建华', '', '5865858527217174', null, null, null);

-- ----------------------------
-- Table structure for `wz`
-- ----------------------------
DROP TABLE IF EXISTS `wz`;
CREATE TABLE `wz` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `carid` int(11) default NULL,
  `title` varchar(255) default NULL,
  `price` varchar(255) default NULL,
  `score` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wz
-- ----------------------------
INSERT INTO `wz` VALUES ('1', '2', '1', '三环立交桥闯红灯！', '200', '6');
