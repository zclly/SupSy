/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : book

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2019-07-10 18:21:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_root`
-- ----------------------------
DROP TABLE IF EXISTS `t_root`;
CREATE TABLE `t_root` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `root_name` varchar(255) DEFAULT NULL,
  `root_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_root
-- ----------------------------
INSERT INTO `t_root` VALUES ('1', 'root', 'root');
INSERT INTO `t_root` VALUES ('2', 'admin', '123');
INSERT INTO `t_root` VALUES ('3', 'tom', 'tom');
INSERT INTO `t_root` VALUES ('4', 'rose', 'rose');
INSERT INTO `t_root` VALUES ('5', 'uuu', 'uuu');
INSERT INTO `t_root` VALUES ('8', 'zcl', '123456');
INSERT INTO `t_root` VALUES ('9', 'dfl', '123123');
INSERT INTO `t_root` VALUES ('10', 'txc', '123123');
INSERT INTO `t_root` VALUES ('11', 'ww', '123123');
INSERT INTO `t_root` VALUES ('12', 'www', '123');
INSERT INTO `t_root` VALUES ('13', 'qq', '123123');
INSERT INTO `t_root` VALUES ('14', 'er', '123');
INSERT INTO `t_root` VALUES ('15', 'zxv', '123');

-- ----------------------------
-- Table structure for `t_super`
-- ----------------------------
DROP TABLE IF EXISTS `t_super`;
CREATE TABLE `t_super` (
  `book_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) DEFAULT NULL,
  `book_stock` bigint(255) DEFAULT NULL,
  `book_category` varchar(255) DEFAULT NULL,
  `book_detail` varchar(255) DEFAULT NULL,
  `book_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `book_stock` (`book_stock`) USING BTREE,
  KEY `book_name` (`book_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_super
-- ----------------------------
INSERT INTO `t_super` VALUES ('1', '旺仔牛奶', '20', '饮品', '无', '001');
INSERT INTO `t_super` VALUES ('2', '百事可乐', '31', '饮品', '无', '002');
INSERT INTO `t_super` VALUES ('3', '红', '20', '饮品', '无', '003');
INSERT INTO `t_super` VALUES ('4', '冰红茶', '20', '饮品', '无', '004');
INSERT INTO `t_super` VALUES ('5', '鲜橙多', '20', '饮品', '无', '005');
INSERT INTO `t_super` VALUES ('6', '阿萨姆奶茶', '20', '饮品', '无', '006');
INSERT INTO `t_super` VALUES ('7', '手撕牛肉', '10', '小吃', '无', '007');
INSERT INTO `t_super` VALUES ('8', '牛板筋', '10', '小吃', '无', '008');
INSERT INTO `t_super` VALUES ('9', '亲嘴烧', '100', '小吃', '无', '009');
INSERT INTO `t_super` VALUES ('10', '臭干子', '20', '小吃', '无', '010');
INSERT INTO `t_super` VALUES ('11', '猪宝贝', '10', '小吃', '无', '011');
INSERT INTO `t_super` VALUES ('12', '北京烤鸭', '20', '小吃', '无', '012');
INSERT INTO `t_super` VALUES ('13', '猪皮', '20', '小吃', '无', '013');
INSERT INTO `t_super` VALUES ('14', '牛肉面', '20000', '小吃', '无', '014');
INSERT INTO `t_super` VALUES ('15', '藤椒牛肉面', '5', '小吃', '无', '015');
INSERT INTO `t_super` VALUES ('16', '老坛酸菜面', '20', '小吃', '无', '016');
INSERT INTO `t_super` VALUES ('17', '麻辣牛肉面', '20', '小吃', '无', '017');
INSERT INTO `t_super` VALUES ('18', '衣架', '10', '生活用品', '无', '018');
INSERT INTO `t_super` VALUES ('19', '牙膏', '50', '生活用品', '无', '019');
INSERT INTO `t_super` VALUES ('20', '牙刷', '50', '生活用品', '无', '020');
INSERT INTO `t_super` VALUES ('21', '毛巾', '50', '生活用品', '无', '021');
INSERT INTO `t_super` VALUES ('22', '玻璃杯', '20', '生活用品', '无', '022');
INSERT INTO `t_super` VALUES ('23', '塑料盆', '20', '生活用品', '无', '023');
INSERT INTO `t_super` VALUES ('24', '塑料桶', '20', '生活用品', '无', '024');
INSERT INTO `t_super` VALUES ('25', '洗发水', '10', '生活用品', '无', '025');
INSERT INTO `t_super` VALUES ('26', '沐浴露', '10', '生活用品', '无', '026');
INSERT INTO `t_super` VALUES ('27', '洗面奶', '30', '生活用品', '无', '027');
INSERT INTO `t_super` VALUES ('28', '撑衣杆', '10', '生活用品', '无·', '028');
INSERT INTO `t_super` VALUES ('67', '旺仔牛奶', '30', '饮品', '无', '001');
INSERT INTO `t_super` VALUES ('69', '旺仔小馒头', '30', '小吃', '无', '030');
INSERT INTO `t_super` VALUES ('71', '牛肉面', '20000', '小吃', '无', '014');
INSERT INTO `t_super` VALUES ('72', '红', '200', '饮品', '无', '003');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_gender` varchar(5) DEFAULT NULL,
  `user_number` int(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'edd', '男', null);
INSERT INTO `t_user` VALUES ('2', 'amy', '女', null);
INSERT INTO `t_user` VALUES ('4', 'wo', '男', null);
INSERT INTO `t_user` VALUES ('8', 'tom', '女', null);
INSERT INTO `t_user` VALUES ('19', 'judk', '男', null);
INSERT INTO `t_user` VALUES ('20', 'sany', '女', null);
INSERT INTO `t_user` VALUES ('25', 'alyson', '女', null);
INSERT INTO `t_user` VALUES ('37', 'ddd', '男', null);
INSERT INTO `t_user` VALUES ('41', 'amy', '男', null);
INSERT INTO `t_user` VALUES ('44', 'eddit', '男', null);
INSERT INTO `t_user` VALUES ('46', 'wu', '男', null);
INSERT INTO `t_user` VALUES ('48', 'addd', '男', null);
