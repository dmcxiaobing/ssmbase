/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50555
Source Host           : localhost:3306
Source Database       : sshtools

Target Server Type    : MYSQL
Target Server Version : 50555
File Encoding         : 65001

Date: 2017-08-11 13:54:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cst_customer`
-- ----------------------------
DROP TABLE IF EXISTS `cst_customer`;
CREATE TABLE `cst_customer` (
  `cust_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '客户编号(主键)',
  `cust_name` varchar(32) NOT NULL COMMENT '客户名称(公司名称)',
  `cust_user_id` bigint(32) DEFAULT NULL COMMENT '负责人id',
  `cust_create_id` bigint(32) DEFAULT NULL COMMENT '创建人id',
  `cust_source` varchar(32) DEFAULT NULL COMMENT '客户信息来源',
  `cust_industry` varchar(32) DEFAULT NULL COMMENT '客户所属行业',
  `cust_level` varchar(32) DEFAULT NULL COMMENT '客户级别',
  `cust_linkman` varchar(64) DEFAULT NULL COMMENT '联系人',
  `cust_phone` varchar(64) DEFAULT NULL COMMENT '固定电话',
  `cust_mobile` varchar(16) DEFAULT NULL COMMENT '移动电话',
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_customer
-- ----------------------------
INSERT INTO `cst_customer` VALUES ('9', 'FFG', null, null, 'GGA', null, '', '', 'DG', '');
INSERT INTO `cst_customer` VALUES ('10', 'FASDFFDSFDS', null, null, '', null, '', '', '', '');
INSERT INTO `cst_customer` VALUES ('11', '234', null, null, '', null, '', '', '', '');
INSERT INTO `cst_customer` VALUES ('12', 'ffa', null, null, '', null, '', '', '', '');
INSERT INTO `cst_customer` VALUES ('13', '12345', null, null, '', null, '', '', '', '');
INSERT INTO `cst_customer` VALUES ('14', '13', null, null, '', null, '', '', '', '');
INSERT INTO `cst_customer` VALUES ('15', '678', null, null, '', null, '', '', '', '');
INSERT INTO `cst_customer` VALUES ('16', '', null, null, '', null, '', '', '567', '');
INSERT INTO `cst_customer` VALUES ('17', '244455', null, null, '234', null, '', '', '', '');
INSERT INTO `cst_customer` VALUES ('18', 'wwww', null, null, 'ww', null, null, null, null, null);
INSERT INTO `cst_customer` VALUES ('19', '122', null, null, null, null, null, null, null, null);
INSERT INTO `cst_customer` VALUES ('20', 'erer', null, null, null, null, null, null, null, null);
INSERT INTO `cst_customer` VALUES ('21', '1111', null, null, null, null, null, null, null, null);
INSERT INTO `cst_customer` VALUES ('22', '22343', null, null, null, null, null, null, null, null);
INSERT INTO `cst_customer` VALUES ('23', '2232434', null, null, null, null, null, null, null, null);
INSERT INTO `cst_customer` VALUES ('24', '喂喂喂', null, null, null, null, null, null, null, null);
INSERT INTO `cst_customer` VALUES ('25', '辅导费盛世嫡妃', null, null, null, null, null, null, null, null);
INSERT INTO `cst_customer` VALUES ('26', '发的地方是范德萨发发生', null, null, null, null, null, null, null, null);
INSERT INTO `cst_customer` VALUES ('27', '打发斯蒂芬', null, null, null, null, null, null, null, null);
INSERT INTO `cst_customer` VALUES ('28', '33', null, null, '165465', null, '', '1156654', '45546465', '11331');
INSERT INTO `cst_customer` VALUES ('29', '飞飞飞', null, null, 'fff', null, 'fwewe', 'fff', '', '');
INSERT INTO `cst_customer` VALUES ('30', '测试保存一条记录', null, null, null, null, '2', null, '986945193', null);
INSERT INTO `cst_customer` VALUES ('31', '', null, null, '', null, '', '', '', '');
INSERT INTO `cst_customer` VALUES ('32', 'ffffffffffffffffffffff', null, null, null, null, null, null, null, null);
INSERT INTO `cst_customer` VALUES ('33', '反反复复发', null, null, '', null, '', '', '飞飞飞', '');

-- ----------------------------
-- Table structure for `cst_hibernate_customer`
-- ----------------------------
DROP TABLE IF EXISTS `cst_hibernate_customer`;
CREATE TABLE `cst_hibernate_customer` (
  `cust_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(255) DEFAULT NULL,
  `cust_user_id` bigint(20) DEFAULT NULL,
  `cust_create_id` bigint(20) DEFAULT NULL,
  `cust_source` varchar(255) DEFAULT NULL,
  `cust_industry` varchar(255) DEFAULT NULL,
  `cust_level` varchar(255) DEFAULT NULL,
  `cust_linkman` varchar(255) DEFAULT NULL,
  `cust_phone` varchar(255) DEFAULT NULL,
  `cust_mobile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_hibernate_customer
-- ----------------------------
INSERT INTO `cst_hibernate_customer` VALUES ('4', '', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('5', '客户3', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('6', '客户4', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('7', null, null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('8', '客户5', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('9', '客户5', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('10', '客户1', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('11', '客户张三', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('14', 'david', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('15', '客户Name', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('16', '客户张', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('17', '客户4', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('18', '客户3', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('19', 'david', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('20', '客户Name', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('21', '客户张1', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('22', '美美', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('23', '客户Name', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('24', '客户张1', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('25', '客户4', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('26', '客户3', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('27', 'david', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('28', '美美', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('29', '客户Name', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('30', '客户张1', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('31', '客户4', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('32', '客户3', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('33', 'david', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('34', '美美', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('35', '客户Name', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('36', '客户张1', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('37', '客户4', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('38', '客户Name', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('39', '客户Name', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('40', '客户张1', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('41', '客户张1', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('42', '客户张1', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('43', '客户3', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('47', '客户Name', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('48', '客户Name', null, null, null, null, null, null, null, null);
INSERT INTO `cst_hibernate_customer` VALUES ('49', '客户Name', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `cst_hibernate_role`
-- ----------------------------
DROP TABLE IF EXISTS `cst_hibernate_role`;
CREATE TABLE `cst_hibernate_role` (
  `rid` bigint(20) NOT NULL AUTO_INCREMENT,
  `rname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_hibernate_role
-- ----------------------------
INSERT INTO `cst_hibernate_role` VALUES ('1', '董事长');
INSERT INTO `cst_hibernate_role` VALUES ('2', '总裁');
INSERT INTO `cst_hibernate_role` VALUES ('4', '技术');
INSERT INTO `cst_hibernate_role` VALUES ('5', '产品');
INSERT INTO `cst_hibernate_role` VALUES ('6', '技术');

-- ----------------------------
-- Table structure for `cst_hibernate_user`
-- ----------------------------
DROP TABLE IF EXISTS `cst_hibernate_user`;
CREATE TABLE `cst_hibernate_user` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_hibernate_user
-- ----------------------------
INSERT INTO `cst_hibernate_user` VALUES ('1', 'admin', null);
INSERT INTO `cst_hibernate_user` VALUES ('2', 'root', null);
INSERT INTO `cst_hibernate_user` VALUES ('3', 'david', null);
INSERT INTO `cst_hibernate_user` VALUES ('4', '程序员小冰', null);
INSERT INTO `cst_hibernate_user` VALUES ('5', 'david', null);
INSERT INTO `cst_hibernate_user` VALUES ('6', '程序员小冰', null);

-- ----------------------------
-- Table structure for `cst_linkman`
-- ----------------------------
DROP TABLE IF EXISTS `cst_linkman`;
CREATE TABLE `cst_linkman` (
  `lkm_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lkm_name` varchar(255) DEFAULT NULL,
  `lkm_gender` varchar(255) DEFAULT NULL,
  `lkm_phone` varchar(255) DEFAULT NULL,
  `lkm_mobile` varchar(255) DEFAULT NULL,
  `lkm_email` varchar(255) DEFAULT NULL,
  `lkm_qq` varchar(255) DEFAULT NULL,
  `lkm_position` varchar(255) DEFAULT NULL,
  `lkm_memo` varchar(255) DEFAULT NULL,
  `lkm_cust_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`lkm_id`),
  KEY `FKi37m2ll5eq2c3f9rdm3b3qo9i` (`lkm_cust_id`),
  CONSTRAINT `FKi37m2ll5eq2c3f9rdm3b3qo9i` FOREIGN KEY (`lkm_cust_id`) REFERENCES `cst_hibernate_customer` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_linkman
-- ----------------------------
INSERT INTO `cst_linkman` VALUES ('1', '双向关联系人2', null, null, null, null, null, null, null, '39');
INSERT INTO `cst_linkman` VALUES ('2', '双向关联系人1', null, null, null, null, null, null, null, '39');
INSERT INTO `cst_linkman` VALUES ('3', '单向联系人张11', null, null, null, null, null, null, null, null);
INSERT INTO `cst_linkman` VALUES ('4', '单向联系人张21', null, null, null, null, null, null, null, null);
INSERT INTO `cst_linkman` VALUES ('5', '单向联系人张11', null, null, null, null, null, null, null, '42');
INSERT INTO `cst_linkman` VALUES ('6', '单向联系人张21', null, null, null, null, null, null, null, '42');
INSERT INTO `cst_linkman` VALUES ('10', '单向联系人3', null, null, null, null, null, null, null, '43');
INSERT INTO `cst_linkman` VALUES ('15', '熊二', null, null, null, null, null, null, null, null);
INSERT INTO `cst_linkman` VALUES ('16', '熊大', null, null, null, null, null, null, null, '14');
INSERT INTO `cst_linkman` VALUES ('17', 'ddd', '2', 'dd', 'ddd', null, null, null, null, '4');
INSERT INTO `cst_linkman` VALUES ('18', '111', '1', '11', '11', null, null, null, null, null);
INSERT INTO `cst_linkman` VALUES ('19', 'eee', null, '', '', null, null, null, null, '33');
INSERT INTO `cst_linkman` VALUES ('20', '双向关联系人1', null, null, null, null, null, null, null, '47');
INSERT INTO `cst_linkman` VALUES ('21', '双向关联系人2', null, null, null, null, null, null, null, '47');
INSERT INTO `cst_linkman` VALUES ('22', '双向关联系人1', null, null, null, null, null, null, null, '48');
INSERT INTO `cst_linkman` VALUES ('23', '双向关联系人2', null, null, null, null, null, null, null, '48');
INSERT INTO `cst_linkman` VALUES ('24', '双向关联系人1', null, null, null, null, null, null, null, '49');
INSERT INTO `cst_linkman` VALUES ('25', '双向关联系人2', null, null, null, null, null, null, null, '49');

-- ----------------------------
-- Table structure for `cst_user`
-- ----------------------------
DROP TABLE IF EXISTS `cst_user`;
CREATE TABLE `cst_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_user
-- ----------------------------
INSERT INTO `cst_user` VALUES ('1', '隔离老王', '22');
INSERT INTO `cst_user` VALUES ('2', 'David', '11');
INSERT INTO `cst_user` VALUES ('3', '一级缓存存在', '223');
INSERT INTO `cst_user` VALUES ('4', '一级缓存存在', '223');
INSERT INTO `cst_user` VALUES ('5', 'admin', '22');

-- ----------------------------
-- Table structure for `hibernate_anno_user`
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_anno_user`;
CREATE TABLE `hibernate_anno_user` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_anno_user
-- ----------------------------
INSERT INTO `hibernate_anno_user` VALUES ('1', 'admin', null);

-- ----------------------------
-- Table structure for `hibernate_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('2');

-- ----------------------------
-- Table structure for `hibernate_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_user_role`;
CREATE TABLE `hibernate_user_role` (
  `uid` bigint(20) NOT NULL,
  `rid` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`rid`),
  KEY `FK8kudg8r104af134au5la8jgd2` (`rid`),
  CONSTRAINT `FK8kudg8r104af134au5la8jgd2` FOREIGN KEY (`rid`) REFERENCES `cst_hibernate_role` (`rid`),
  CONSTRAINT `FKjsxplwt32gigip3nd8xuil60u` FOREIGN KEY (`uid`) REFERENCES `cst_hibernate_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_user_role
-- ----------------------------
INSERT INTO `hibernate_user_role` VALUES ('1', '1');
INSERT INTO `hibernate_user_role` VALUES ('2', '1');
INSERT INTO `hibernate_user_role` VALUES ('1', '2');
INSERT INTO `hibernate_user_role` VALUES ('3', '4');
INSERT INTO `hibernate_user_role` VALUES ('4', '4');
INSERT INTO `hibernate_user_role` VALUES ('5', '5');
INSERT INTO `hibernate_user_role` VALUES ('5', '6');
INSERT INTO `hibernate_user_role` VALUES ('6', '6');

-- ----------------------------
-- Table structure for `mybatis_orders`
-- ----------------------------
DROP TABLE IF EXISTS `mybatis_orders`;
CREATE TABLE `mybatis_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '下单用户id',
  `number` varchar(32) NOT NULL COMMENT '订单号',
  `createtime` datetime NOT NULL COMMENT '创建订单时间',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_orders_1` (`user_id`),
  CONSTRAINT `FK_orders_id` FOREIGN KEY (`user_id`) REFERENCES `mybatis_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mybatis_orders
-- ----------------------------
INSERT INTO `mybatis_orders` VALUES ('2', '2', '1000011', '2015-02-03 13:22:41', null);
INSERT INTO `mybatis_orders` VALUES ('3', '3', '1000010', '2015-02-04 13:22:35', null);

-- ----------------------------
-- Table structure for `mybatis_user`
-- ----------------------------
DROP TABLE IF EXISTS `mybatis_user`;
CREATE TABLE `mybatis_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mybatis_user
-- ----------------------------
INSERT INTO `mybatis_user` VALUES ('2', 'mybatis', 'nan', null, 'china');
INSERT INTO `mybatis_user` VALUES ('3', 'david', 'nan', null, 'david');
INSERT INTO `mybatis_user` VALUES ('22', '986945193@qq.com', 'boy', '2017-08-02', 'http://weibo.com/mcxiaobing');
INSERT INTO `mybatis_user` VALUES ('23', 'davidzheng', 'man', null, null);
INSERT INTO `mybatis_user` VALUES ('24', 'adminroot', null, null, '百度一下，google');

-- ----------------------------
-- Table structure for `ssm_items`
-- ----------------------------
DROP TABLE IF EXISTS `ssm_items`;
CREATE TABLE `ssm_items` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_items
-- ----------------------------
INSERT INTO `ssm_items` VALUES ('1', '2', '2', '1000011', '2015-02-03', 'david');
INSERT INTO `ssm_items` VALUES ('2', '3', '3', '1000010', '2015-02-04', 'qq986945193');
INSERT INTO `ssm_items` VALUES ('3', '3', '3', null, null, 'http://weibo.com/mcxiaobing');
INSERT INTO `ssm_items` VALUES ('4', '2', '2', '55e09e8e-9bdb-44e9-8876-17cb5a0ec983.jpg', null, 'http://weibo.com/mcxiaobing');
INSERT INTO `ssm_items` VALUES ('5', '2', '2', '1000011', '2015-02-03', 'qq986945193');
INSERT INTO `ssm_items` VALUES ('6', '3', '3', null, '2015-02-04', 'qq986945193');
INSERT INTO `ssm_items` VALUES ('7', '2', '2', null, '2015-02-04', 'qq986945193');
INSERT INTO `ssm_items` VALUES ('8', '3', '3', null, null, 'qq986945193');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `uid` int(32) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', 'admin');
