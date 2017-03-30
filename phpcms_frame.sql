/*
Navicat MySQL Data Transfer

Source Server         : cyb
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : phpcms_frame

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-03-30 22:25:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `v9_sso_admin`
-- ----------------------------
DROP TABLE IF EXISTS `v9_sso_admin`;
CREATE TABLE `v9_sso_admin` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` char(6) DEFAULT NULL,
  `issuper` tinyint(1) DEFAULT '0',
  `lastlogin` int(10) DEFAULT NULL,
  `ip` char(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v9_sso_admin
-- ----------------------------
INSERT INTO `v9_sso_admin` VALUES ('1', 'phpcms', '477c171399d336deda3ddb707ecc0246', '1Djwdd', '1', '1490883714', '');

-- ----------------------------
-- Table structure for `v9_sso_session`
-- ----------------------------
DROP TABLE IF EXISTS `v9_sso_session`;
CREATE TABLE `v9_sso_session` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `roleid` tinyint(3) unsigned DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(255) NOT NULL,
  PRIMARY KEY (`sessionid`),
  KEY `lastvisit` (`lastvisit`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v9_sso_session
-- ----------------------------
INSERT INTO `v9_sso_session` VALUES ('kpga3ntladh0sngk6epvodtob5', '0', 'ip', '1490883714', '0', '0', 'admin', 'login', 'a', 'code|s:4:\"unyg\";');
