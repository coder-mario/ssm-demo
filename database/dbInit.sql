/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : ssmdemo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-03-30 17:51:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gcloud_users`
-- ----------------------------
DROP TABLE IF EXISTS `gcloud_users`;
CREATE TABLE `gcloud_users` (
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_group_id` varchar(32) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `account_status` char(2) DEFAULT NULL,
  `is_sys` char(1) DEFAULT NULL,
  `create_time` varchar(19) DEFAULT NULL,
  `lock_time` varchar(19) DEFAULT NULL,
  `expired_time` varchar(19) DEFAULT NULL,
  `pwd_upt_time` varchar(19) DEFAULT NULL,
  `is_units_or_person` char(1) DEFAULT NULL,
  `register_status` char(1) DEFAULT NULL,
  `validate_status` char(1) DEFAULT NULL,
  `source_type` char(1) DEFAULT NULL,
  `his_userid` varchar(50) DEFAULT NULL,
  `his_userid1` varchar(50) DEFAULT NULL,
  `is_father` varchar(10) DEFAULT NULL,
  `more_id` varchar(5) DEFAULT NULL,
  `assist_id` varchar(32) DEFAULT NULL,
  `fwdtname` varchar(50) DEFAULT NULL,
  `msspid` varchar(256) DEFAULT NULL,
  `auth_status` char(1) DEFAULT NULL,
  `user_state` varchar(1) DEFAULT NULL,
  `admin_state` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gcloud_users
-- ----------------------------
INSERT INTO `gcloud_users` VALUES ('sdmali', '孙峰', '10', '670b14728ad9902aecba32e22fa4f6bd', '11', '0', '2015-04-16 00:00:00', null, null, null, '1', '0', '0', '0', '13255556013', null, null, null, null, null, null, null, '1', null);

-- ----------------------------
-- Table structure for `gcloud_users_person`
-- ----------------------------
DROP TABLE IF EXISTS `gcloud_users_person`;
CREATE TABLE `gcloud_users_person` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `contactor` varchar(50) DEFAULT NULL,
  `idcard_type` varchar(10) DEFAULT NULL,
  `idcard_no` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_address` varchar(100) DEFAULT NULL,
  `postal_code` varchar(6) DEFAULT NULL,
  `country` char(3) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `phone_num` varchar(15) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gcloud_users_person
-- ----------------------------
