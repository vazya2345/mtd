/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : mtd

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-12-14 01:05:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `client`
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `doc_seria` varchar(10) DEFAULT NULL,
  `doc_number` varchar(20) DEFAULT NULL,
  `inn` varchar(20) DEFAULT NULL,
  `add1` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `change_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES ('1', 'Авазбек', 'Тухтасинов', 'Ойбек угли', '1992-10-28', 'M', 'AB', '1690590', null, null, null, '1', null, '2020-12-13 23:03:52');

-- ----------------------------
-- Table structure for `pokaz_limits`
-- ----------------------------
DROP TABLE IF EXISTS `pokaz_limits`;
CREATE TABLE `pokaz_limits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pokaz_id` int DEFAULT NULL,
  `indikator` varchar(30) DEFAULT NULL,
  `indikator_value` varchar(50) DEFAULT NULL,
  `norma` varchar(30) DEFAULT NULL,
  `down_limit` varchar(30) DEFAULT NULL,
  `up_limit` varchar(30) DEFAULT NULL,
  `add1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of pokaz_limits
-- ----------------------------
INSERT INTO `pokaz_limits` VALUES ('1', '1', '', '', '', '4', '10', null);
INSERT INTO `pokaz_limits` VALUES ('2', '2', '', '', '', '50', '70', null);
INSERT INTO `pokaz_limits` VALUES ('3', '3', '', '', '', '20', '40', null);
INSERT INTO `pokaz_limits` VALUES ('4', '4', '', '', '', '3', '12', null);
INSERT INTO `pokaz_limits` VALUES ('5', '5', '', '', '', '0,5', '5', null);
INSERT INTO `pokaz_limits` VALUES ('6', '6', '', '', '', '0', '1', null);
INSERT INTO `pokaz_limits` VALUES ('7', '7', '', '', '', '2', '7', null);
INSERT INTO `pokaz_limits` VALUES ('8', '8', '', '', '', '0,8', '4', null);
INSERT INTO `pokaz_limits` VALUES ('9', '9', '', '', '', '0,12', '1,2', null);
INSERT INTO `pokaz_limits` VALUES ('10', '10', '', '', '', '0,02', '0,5', null);
INSERT INTO `pokaz_limits` VALUES ('11', '11', '', '', '', '0', '0,1', null);
INSERT INTO `pokaz_limits` VALUES ('12', '12', 'Жинси', 'Эркак', '', '4', '5,5', null);
INSERT INTO `pokaz_limits` VALUES ('13', '12', 'Жинси', 'Аёл', '', '3,5', '5', null);
INSERT INTO `pokaz_limits` VALUES ('14', '13', 'Жинси', 'Эркак', '', '120', '160', null);
INSERT INTO `pokaz_limits` VALUES ('15', '13', 'Жинси', 'Аёл', '', '110', '150', null);
INSERT INTO `pokaz_limits` VALUES ('16', '14', 'Жинси', 'Эркак', '', '0,400', '0,540', null);
INSERT INTO `pokaz_limits` VALUES ('17', '14', 'Жинси', 'Аёл', '', '0,370', '0,470', null);
INSERT INTO `pokaz_limits` VALUES ('18', '15', '', '', '', '80,0', '100,0', null);
INSERT INTO `pokaz_limits` VALUES ('19', '16', '', '', '', '27,0', '34,0', null);
INSERT INTO `pokaz_limits` VALUES ('20', '17', '', '', '', '320', '360', null);
INSERT INTO `pokaz_limits` VALUES ('21', '18', '', '', '', '0,110', '0,160', null);
INSERT INTO `pokaz_limits` VALUES ('22', '19', '', '', '', '35,0', '56,0', null);
INSERT INTO `pokaz_limits` VALUES ('23', '20', '', '', '', '100', '300', null);
INSERT INTO `pokaz_limits` VALUES ('24', '21', '', '', '', '6,5', '12,0', null);
INSERT INTO `pokaz_limits` VALUES ('25', '22', '', '', '', '9,0', '17,0', null);
INSERT INTO `pokaz_limits` VALUES ('26', '23', '', '', '', '1,08', '2,82', null);
INSERT INTO `pokaz_limits` VALUES ('27', '24', 'Жинси', 'Эркак', '', '2', '10', null);
INSERT INTO `pokaz_limits` VALUES ('28', '24', 'Жинси', 'Аёл', '', '2', '15', null);
INSERT INTO `pokaz_limits` VALUES ('29', '25', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('30', '26', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('31', '27', '', '', 'ml', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('32', '28', '', '', 'Сол. – желтый', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('33', '29', '', '', 'Прозрачная', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('34', '30', '', '', '', '1', '5', null);
INSERT INTO `pokaz_limits` VALUES ('35', '31', '', '', 'abs', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('36', '32', '', '', 'abs', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('37', '33', '', '', 'abs', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('38', '34', '', '', '', '4,5', '7', null);
INSERT INTO `pokaz_limits` VALUES ('39', '35', '', '', 'abs', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('40', '36', '', '', '', '1 010', '1 025', null);
INSERT INTO `pokaz_limits` VALUES ('41', '37', '', '', 'abs', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('42', '38', '', '', 'abs', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('43', '39', '', '', 'abs', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('44', '40', '', '', 'abs', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('45', '41', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('46', '42', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('47', '43', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('48', '44', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('49', '45', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('50', '46', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('51', '47', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('52', '48', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('53', '49', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('54', '50', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('55', '51', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('56', '52', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('57', '53', '', '', 'abs', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('58', '54', '', '', 'abs', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('59', '55', '', '', 'abs', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('60', '56', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('61', '57', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('62', '58', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('63', '59', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('64', '60', '', '', '2000', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('65', '61', '', '', '1000', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('66', '62', '', '', '20', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('67', '63', '', '', '', '0,0', '18,0', null);
INSERT INTO `pokaz_limits` VALUES ('68', '64', '', '', '', '0,0', '5,0', null);
INSERT INTO `pokaz_limits` VALUES ('69', '65', '', '', '', '0,0', '200,0', null);
INSERT INTO `pokaz_limits` VALUES ('70', '66', '', '', '', '0,00', '5,20', null);
INSERT INTO `pokaz_limits` VALUES ('71', '67', '', '', '', '0,00', '4,11', null);
INSERT INTO `pokaz_limits` VALUES ('72', '68', '', '', '', '0,90', '', null);
INSERT INTO `pokaz_limits` VALUES ('73', '69', '', '', '', '0,00', '2,30', null);
INSERT INTO `pokaz_limits` VALUES ('74', '70', '', '', '', '8,1', '28,3', null);
INSERT INTO `pokaz_limits` VALUES ('75', '71', '', '', '', '2,20', '2,65', null);
INSERT INTO `pokaz_limits` VALUES ('76', '72', '', '', '', '0,80', '1,45', null);
INSERT INTO `pokaz_limits` VALUES ('77', '73', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('78', '74', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('79', '75', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('80', '76', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('81', '77', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('82', '78', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('83', '79', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('84', '80', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('85', '81', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('86', '82', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('87', '83', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('88', '84', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('89', '85', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('90', '86', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('91', '87', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('92', '88', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('93', '89', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('94', '90', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('95', '91', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('96', '92', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('97', '93', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('98', '94', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('99', '95', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('100', '96', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('101', '97', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('102', '98', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('103', '99', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('104', '100', '', '', '', '1,8', '3,5', null);
INSERT INTO `pokaz_limits` VALUES ('105', '101', '', '', 'Вязкая ', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('106', '102', '', '', 'Серо-молочный', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('107', '103', '', '', 'Сырых каштанов', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('108', '104', '', '', '', '15', '20', null);
INSERT INTO `pokaz_limits` VALUES ('109', '105', '', '', '', '0', '2', null);
INSERT INTO `pokaz_limits` VALUES ('110', '106', '', '', '', '7,0', '7,8', null);
INSERT INTO `pokaz_limits` VALUES ('111', '107', '', '', 'Мутная', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('112', '108', '', '', 'Отсутствует', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('113', '109', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('114', '110', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('115', '111', '', '', '', '60', '70', null);
INSERT INTO `pokaz_limits` VALUES ('116', '112', '', '', '', '90', '225', null);
INSERT INTO `pokaz_limits` VALUES ('117', '113', '', '', '', '40', '75', null);
INSERT INTO `pokaz_limits` VALUES ('118', '114', '', '', '', '40', '85', null);
INSERT INTO `pokaz_limits` VALUES ('119', '115', '', '', '', '20', '40', null);
INSERT INTO `pokaz_limits` VALUES ('120', '116', '', '', '25', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('121', '117', '', '', '', '3', '4', null);
INSERT INTO `pokaz_limits` VALUES ('122', '118', '', '', '', '0', '50', null);
INSERT INTO `pokaz_limits` VALUES ('123', '119', '', '', '', '25', '', null);
INSERT INTO `pokaz_limits` VALUES ('124', '120', '', '', '', '1', '8', null);
INSERT INTO `pokaz_limits` VALUES ('125', '121', '', '', 'Отсутствует', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('126', '122', '', '', 'Большое количество', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('127', '123', '', '', 'Отсутствует', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('128', '124', '', '', 'Отсутствует', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('129', '125', '', '', 'Отсутствует', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('130', '126', '', '', 'Отсутствует', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('131', '127', '', '', '', '200', '300', null);
INSERT INTO `pokaz_limits` VALUES ('132', '128', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('133', '129', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('134', '130', '', '', '', '75', '80', null);
INSERT INTO `pokaz_limits` VALUES ('135', '131', '', '', '', '3', '5', null);
INSERT INTO `pokaz_limits` VALUES ('136', '132', '', '', '15', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('137', '133', '', '', '', '2', '10', null);
INSERT INTO `pokaz_limits` VALUES ('138', '134', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('139', '135', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('140', '136', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('141', '137', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('142', '138', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('143', '139', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('144', '140', '', '', '', '75', '125', null);
INSERT INTO `pokaz_limits` VALUES ('145', '141', '', '', '', '0,85', '1,35', null);
INSERT INTO `pokaz_limits` VALUES ('146', '142', '', '', '', '2,4', '4,2', null);
INSERT INTO `pokaz_limits` VALUES ('147', '143', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('148', '144', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('149', '145', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('150', '146', '', '', 'по Сухареву', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('151', '147', 'Бола', 'f6m:do', '', '0', '12', null);
INSERT INTO `pokaz_limits` VALUES ('152', '147', 'Бола', 'f6m-12m:mejdu', '', '0', '30', null);
INSERT INTO `pokaz_limits` VALUES ('153', '147', 'Бола', 'f1y-3y:mejdu', '', '0', '45', null);
INSERT INTO `pokaz_limits` VALUES ('154', '147', 'Бола', 'f4y-6y:mejdu', '', '0', '70', null);
INSERT INTO `pokaz_limits` VALUES ('155', '147', 'Ёши', 'f7y-8y:mejdu', '', '0', '90', null);
INSERT INTO `pokaz_limits` VALUES ('156', '147', 'Ёши', 'f10y-15y:mejdu', '', '0', '120', null);
INSERT INTO `pokaz_limits` VALUES ('157', '147', 'Ёши', 'f15y:after', '', '0', '130', null);
INSERT INTO `pokaz_limits` VALUES ('158', '148', '', '', '', '66', '83', null);
INSERT INTO `pokaz_limits` VALUES ('159', '149', 'Ёши', 'f1y:do', '', '35', '49', null);
INSERT INTO `pokaz_limits` VALUES ('160', '149', 'Ёши', 'f1y-20y:mejdu', '', '36', '51', null);
INSERT INTO `pokaz_limits` VALUES ('161', '149', 'Ёши', 'f21y-60y:mejdu', '', '35', '53', null);
INSERT INTO `pokaz_limits` VALUES ('162', '149', 'Ёши', 'f61y:after', '', '34', '48', null);
INSERT INTO `pokaz_limits` VALUES ('163', '150', '', '', '', '3,5', '5,5', null);
INSERT INTO `pokaz_limits` VALUES ('164', '151', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('165', '152', 'Билирубин', 'общий', 'Билирубин общий', '2,00', '21,00', null);
INSERT INTO `pokaz_limits` VALUES ('166', '152', 'Билирубин', 'прямой', 'Билирубин ', '0,00', '5,13', null);
INSERT INTO `pokaz_limits` VALUES ('167', '153', '', '', '', '0,0', '45,0', null);
INSERT INTO `pokaz_limits` VALUES ('168', '154', '', '', '', '0,0', '35,0', null);
INSERT INTO `pokaz_limits` VALUES ('169', '155', '', '', '', '0,0', '171,0', null);
INSERT INTO `pokaz_limits` VALUES ('170', '156', '', '', '', '2,80', '7,20', null);
INSERT INTO `pokaz_limits` VALUES ('171', '157', '', '', '', '72,0', '127,0', null);
INSERT INTO `pokaz_limits` VALUES ('172', '158', '', '', '', '214,0', '488,0', null);
INSERT INTO `pokaz_limits` VALUES ('173', '159', '', '', '', '', '5,5', null);
INSERT INTO `pokaz_limits` VALUES ('174', '160', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('175', '161', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('176', '162', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('177', '163', '', '', '', '30,0', '120,0', null);
INSERT INTO `pokaz_limits` VALUES ('178', '164', '', '', '', '28,0', '100,0', null);
INSERT INTO `pokaz_limits` VALUES ('179', '165', '', '', '', '0,0', '248,0', null);
INSERT INTO `pokaz_limits` VALUES ('180', '166', '', '', '', '0,0', '49,0', null);
INSERT INTO `pokaz_limits` VALUES ('181', '167', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('182', '168', 'Донор', 'Здоровые доноры', '', '', '10', null);
INSERT INTO `pokaz_limits` VALUES ('183', '168', 'Хомиладорлик', '14 хафта', '', '', '21,7', null);
INSERT INTO `pokaz_limits` VALUES ('184', '168', 'Хомиладорлик', '15 хафта', '', '', '28,3', null);
INSERT INTO `pokaz_limits` VALUES ('185', '168', 'Хомиладорлик', '16 хафта', '', '', '30,0', null);
INSERT INTO `pokaz_limits` VALUES ('186', '168', 'Хомиладорлик', '17 хафта', '', '', '36,3', null);
INSERT INTO `pokaz_limits` VALUES ('187', '168', 'Хомиладорлик', '18 хафта', '', '', '43,8', null);
INSERT INTO `pokaz_limits` VALUES ('188', '168', 'Хомиладорлик', '19 хафта', '', '', '53,3', null);
INSERT INTO `pokaz_limits` VALUES ('189', '168', 'Хомиладорлик', '20 хафта', '', '', '60,0', null);
INSERT INTO `pokaz_limits` VALUES ('190', '168', 'Хомиладорлик', '21 хафта', '', '', '63,3', null);
INSERT INTO `pokaz_limits` VALUES ('191', '169', 'Чекувчи', 'Ха', '', '', '5,0', null);
INSERT INTO `pokaz_limits` VALUES ('192', '169', 'Чекувчи', 'Йук', '', '', '10,0', null);
INSERT INTO `pokaz_limits` VALUES ('193', '170', 'Ёши ва жинси', 'f40y:do~sex:m', '', '', '4,0', null);
INSERT INTO `pokaz_limits` VALUES ('194', '170', 'Ёши ва жинси', 'f41y-60y:mejdu~sex:m', '', '', '5,5', null);
INSERT INTO `pokaz_limits` VALUES ('195', '170', 'Ёши ва жинси', 'f61y:after~sex:m', '', '', '7,0', null);
INSERT INTO `pokaz_limits` VALUES ('196', '170', 'Жинси', 'Аёл', '', '', '0,45', null);
INSERT INTO `pokaz_limits` VALUES ('197', '171', 'Состояние ПСА', 'Доброкачественные состояния', '', '10', '', null);
INSERT INTO `pokaz_limits` VALUES ('198', '171', 'Состояние ПСА', 'Аденокарцинома простаты', '', '', '10', null);
INSERT INTO `pokaz_limits` VALUES ('199', '172', 'Жинси', 'Эркак', '', '', '30', null);
INSERT INTO `pokaz_limits` VALUES ('200', '172', 'Жинси', 'Аёл', '', '', '30', null);
INSERT INTO `pokaz_limits` VALUES ('201', '172', 'Хомиладорлик', '1-триместр', '', '', '55', null);
INSERT INTO `pokaz_limits` VALUES ('202', '172', 'Хомиладорлик', '2-триместр', '', '5,0', '65', null);
INSERT INTO `pokaz_limits` VALUES ('203', '172', 'Хомиладорлик', '3-триместр', '', '5,0', '185', null);
INSERT INTO `pokaz_limits` VALUES ('204', '172', 'Хомиладорлик', 'В период лактации', '', '', '120', null);
INSERT INTO `pokaz_limits` VALUES ('205', '173', 'Жинси', 'Эркак', '', '', '35', null);
INSERT INTO `pokaz_limits` VALUES ('206', '173', 'Жинси', 'Аёл', '', '', '35', null);
INSERT INTO `pokaz_limits` VALUES ('207', '173', 'Хомиладорлик', '1-триместр', '', '', '60', null);
INSERT INTO `pokaz_limits` VALUES ('208', '173', 'Хомиладорлик', '2-триместр', '', '', '150', null);
INSERT INTO `pokaz_limits` VALUES ('209', '173', 'Хомиладорлик', '3-триместр', '', '', '200', null);
INSERT INTO `pokaz_limits` VALUES ('210', '173', 'Хомиладорлик', 'В период лактации', '', '', '80', null);
INSERT INTO `pokaz_limits` VALUES ('211', '174', '', '', '', '', '35', null);
INSERT INTO `pokaz_limits` VALUES ('212', '175', '', '', '', '', '6,0', null);
INSERT INTO `pokaz_limits` VALUES ('213', '176', 'Жинси', 'Эркак', '', '', '15', null);
INSERT INTO `pokaz_limits` VALUES ('214', '176', 'Жинси', 'Аёл', '', '', '15', null);
INSERT INTO `pokaz_limits` VALUES ('215', '176', 'Хомиладорлик', '1 хафта', '', '', '50', null);
INSERT INTO `pokaz_limits` VALUES ('216', '176', 'Хомиладорлик', '2 хафта', '', '20', '500', null);
INSERT INTO `pokaz_limits` VALUES ('217', '176', 'Хомиладорлик', '3 хафта', '', '500', '5000', null);
INSERT INTO `pokaz_limits` VALUES ('218', '176', 'Хомиладорлик', '4 хафта', '', '3000', '19000', null);
INSERT INTO `pokaz_limits` VALUES ('219', '176', 'Хомиладорлик', '5-8 хафталар', '', '14000', '169000', null);
INSERT INTO `pokaz_limits` VALUES ('220', '176', 'Хомиладорлик', '9-13 хафталар', '', '16000', '180000', null);
INSERT INTO `pokaz_limits` VALUES ('221', '176', 'Хомиладорлик', '22 хафта', '', '4500', '70000', null);
INSERT INTO `pokaz_limits` VALUES ('222', '176', 'Хомиладорлик', '23 хафта', '', '3000', '69500', null);
INSERT INTO `pokaz_limits` VALUES ('223', '176', 'Хомиладорлик', '3-триместр', '', '2400', '50000', null);
INSERT INTO `pokaz_limits` VALUES ('224', '177', '', '', '', '', '13,0', null);
INSERT INTO `pokaz_limits` VALUES ('225', '178', '', '', '', '', '150,0', null);
INSERT INTO `pokaz_limits` VALUES ('226', '179', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('227', '180', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('228', '181', '', '', 'vir_gep_HCV/PHK none', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('229', '182', '', '', '', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('230', '183', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('231', '184', '', '', 'vir_gep_HCV/PHK none', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('232', '185', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('233', '186', '', '', 'vir_gep_HCV/PHK none', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('234', '187', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('235', '188', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('236', '189', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('237', '190', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('238', '191', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('239', '192', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('240', '193', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('241', '194', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('242', '195', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('243', '196', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('244', '197', '', '', '', '', '0,272', null);
INSERT INTO `pokaz_limits` VALUES ('245', '198', '', '', '', '', '0,325', null);
INSERT INTO `pokaz_limits` VALUES ('246', '199', '', '', '', '0,383', '', null);
INSERT INTO `pokaz_limits` VALUES ('247', '200', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('248', '201', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('249', '202', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('250', '203', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('251', '204', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('252', '205', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('253', '206', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('254', '207', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('255', '208', '', '', 'negative', '', '', null);
INSERT INTO `pokaz_limits` VALUES ('256', '209', 'HELICOBACTER', 'IgA', '', '', '1,1', null);
INSERT INTO `pokaz_limits` VALUES ('257', '209', 'HELICOBACTER', 'IgM', '', '', '1,1', null);
INSERT INTO `pokaz_limits` VALUES ('258', '209', 'HELICOBACTER', 'IgG', '', '', '1,1', null);
INSERT INTO `pokaz_limits` VALUES ('259', '210', 'Серонегативные', 'Серонегативные', '', '0,1', '0,9', null);
INSERT INTO `pokaz_limits` VALUES ('260', '210', 'Серопазитивные', 'Серопазитивные старше 3 лет', '', '1,1', '4,9', null);
INSERT INTO `pokaz_limits` VALUES ('261', '210', 'Бола', 'Чакалок', '', '0,1', '1,8', null);
INSERT INTO `pokaz_limits` VALUES ('262', '210', 'Бола', 'f8m:do', '', '0,1', '3,0', null);
INSERT INTO `pokaz_limits` VALUES ('263', '210', 'Бола', 'f8m-3y:mejdu', '', '0,1', '2,7', null);
INSERT INTO `pokaz_limits` VALUES ('264', '211', '', '', '', '', '0,9', null);
INSERT INTO `pokaz_limits` VALUES ('265', '212', 'Серонегативные', 'Серонегативные', '', '0,1', '0,9', null);
INSERT INTO `pokaz_limits` VALUES ('266', '212', 'Серопазитивные', 'Серопазитивные старше 3 лет', '', '1,1', '3,9', null);
INSERT INTO `pokaz_limits` VALUES ('267', '212', 'Бола', 'Чакалок', '', '0,1', '1,3', null);
INSERT INTO `pokaz_limits` VALUES ('268', '212', 'Бола', 'f8m:do', '', '0,1', '2,6', null);
INSERT INTO `pokaz_limits` VALUES ('269', '212', 'Бола', 'f8m-3y:mejdu', '', '0,1', '2,1', null);
INSERT INTO `pokaz_limits` VALUES ('270', '213', '', '', '', '', '0,9', null);
INSERT INTO `pokaz_limits` VALUES ('271', '214', 'Вакт', 't9h-12h:mejdu', '', '138', '690', null);
INSERT INTO `pokaz_limits` VALUES ('272', '214', 'Вакт', 't12h:after', '', '69', '345', null);
INSERT INTO `pokaz_limits` VALUES ('273', '215', 'Жинси', 'Эркак', '', '0', '4,0', null);
INSERT INTO `pokaz_limits` VALUES ('274', '215', 'Ёши ва жинси', 'f12y-17y:mejdu~sex:m', '', '0,3', '4,3', null);
INSERT INTO `pokaz_limits` VALUES ('275', '215', 'Ёши ва жинси', 'f12y-17y:mejdu~sex:f', '', '0,3', '41,0', null);
INSERT INTO `pokaz_limits` VALUES ('276', '215', 'Хомиладорлик', '1-триместр', '', '', '2,3', null);
INSERT INTO `pokaz_limits` VALUES ('277', '215', 'Хомиладорлик', '2-триместр', '', '36', '240', null);
INSERT INTO `pokaz_limits` VALUES ('278', '215', 'Хомиладорлик', '3-триместр', '', '60', '240', null);
INSERT INTO `pokaz_limits` VALUES ('279', '215', 'Фазы цикла', 'менопауза', '', '156', '722', null);
INSERT INTO `pokaz_limits` VALUES ('280', '215', 'Фазы цикла', 'фолликулярная', '', '0,6', '4,6', null);
INSERT INTO `pokaz_limits` VALUES ('281', '215', 'Фазы цикла', 'лютеиновая', '', '7,5', '80', null);
INSERT INTO `pokaz_limits` VALUES ('282', '215', 'Фазы цикла', 'овуляция', '', '11', '80', null);
INSERT INTO `pokaz_limits` VALUES ('283', '216', 'Жинси', 'Эркак', '', '60', '560', null);
INSERT INTO `pokaz_limits` VALUES ('284', '216', 'Хомиладорлик', '1-триместр', '', '', '2000', null);
INSERT INTO `pokaz_limits` VALUES ('285', '216', 'Хомиладорлик', '2-триместр', '', '', '6000', null);
INSERT INTO `pokaz_limits` VALUES ('286', '216', 'Хомиладорлик', '3-триместр', '', '', '10000', null);
INSERT INTO `pokaz_limits` VALUES ('287', '216', 'Фазы цикла', 'фолликулярная', '', '60', '600', null);
INSERT INTO `pokaz_limits` VALUES ('288', '216', 'Фазы цикла', 'лютеиновая', '', '120', '900', null);
INSERT INTO `pokaz_limits` VALUES ('289', '216', 'Фазы цикла', 'овуляция', '', '40', '550', null);
INSERT INTO `pokaz_limits` VALUES ('290', '217', 'Ёши', 'f11y:after', '', '1,0', '5,0', null);
INSERT INTO `pokaz_limits` VALUES ('291', '217', 'Жинси', 'Эркак', '', '1,5', '9,0', null);
INSERT INTO `pokaz_limits` VALUES ('292', '217', 'Фазы цикла', 'фолликулярная', '', '2,0', '9,5', null);
INSERT INTO `pokaz_limits` VALUES ('293', '217', 'Фазы цикла', 'овуляция', '', '10,0', '45', null);
INSERT INTO `pokaz_limits` VALUES ('294', '217', 'Фазы цикла', 'лютеиновая', '', '0,5', '17', null);
INSERT INTO `pokaz_limits` VALUES ('295', '217', 'Фазы цикла', 'менопауза', '', '5,0', '57', null);
INSERT INTO `pokaz_limits` VALUES ('296', '218', 'Ёши', 'f11y:after', '', '0', '4,0', null);
INSERT INTO `pokaz_limits` VALUES ('297', '218', 'Жинси', 'Эркак', '', '0,8', '25', null);
INSERT INTO `pokaz_limits` VALUES ('298', '218', 'Фазы цикла', 'фолликулярная', '', '3,0', '12', null);
INSERT INTO `pokaz_limits` VALUES ('299', '218', 'Фазы цикла', 'овуляция', '', '2,0', '12', null);
INSERT INTO `pokaz_limits` VALUES ('300', '218', 'Фазы цикла', 'лютеиновая', '', '6,5', '25', null);
INSERT INTO `pokaz_limits` VALUES ('301', '218', 'Фазы цикла', 'менопауза', '', '10,0', '150', null);
INSERT INTO `pokaz_limits` VALUES ('302', '219', 'Ёши', 'f11y:after', '', '0', '0,2', null);
INSERT INTO `pokaz_limits` VALUES ('303', '219', 'Жинси', 'Эркак', '', '0,029', '0,3', null);
INSERT INTO `pokaz_limits` VALUES ('304', '219', 'Хомиладорлик', '1-триместр', '', '0,1', '10,5', null);
INSERT INTO `pokaz_limits` VALUES ('305', '219', 'Хомиладорлик', '2-триместр', '', '3,0', '21', null);
INSERT INTO `pokaz_limits` VALUES ('306', '219', 'Хомиладорлик', '3-триместр', '', '6,0', '80', null);
INSERT INTO `pokaz_limits` VALUES ('307', '219', 'Фазы цикла', 'фолликулярная', '', '0,05', '0,7', null);
INSERT INTO `pokaz_limits` VALUES ('308', '219', 'Фазы цикла', 'овуляция', '', '0,1', '1,1', null);
INSERT INTO `pokaz_limits` VALUES ('309', '219', 'Фазы цикла', 'лютеиновая', '', '0,34', '1,8', null);
INSERT INTO `pokaz_limits` VALUES ('310', '219', 'Фазы цикла', 'менопауза', '', '', '0,23', null);
INSERT INTO `pokaz_limits` VALUES ('311', '220', 'Жинси', 'Эркак', '', '30', '68', null);
INSERT INTO `pokaz_limits` VALUES ('312', '220', 'Фазы цикла', 'фолликулярная', '', '28', '178', null);
INSERT INTO `pokaz_limits` VALUES ('313', '220', 'Фазы цикла', 'овуляция', '', '51', '549', null);
INSERT INTO `pokaz_limits` VALUES ('314', '220', 'Фазы цикла', 'лютеиновая', '', '34', '251', null);
INSERT INTO `pokaz_limits` VALUES ('315', '220', 'Фазы цикла', 'менопауза', '', '18', '64', null);
INSERT INTO `pokaz_limits` VALUES ('316', '221', 'Давр', 'Чакалок', '', '20', '80', null);
INSERT INTO `pokaz_limits` VALUES ('317', '221', 'Давр', 'Бола', '', '2,0', '20', null);
INSERT INTO `pokaz_limits` VALUES ('318', '221', 'Давр', 'Катталар', '', '', '20', null);
INSERT INTO `pokaz_limits` VALUES ('319', '222', '', '', '', '0,3', '4,0', null);
INSERT INTO `pokaz_limits` VALUES ('320', '223', '', '', '', '1,2', '4,2', null);
INSERT INTO `pokaz_limits` VALUES ('321', '224', '', '', '', '0,56', '1,88', null);
INSERT INTO `pokaz_limits` VALUES ('322', '225', 'Ёши', 'f60y:do', '', '10,0', '25', null);
INSERT INTO `pokaz_limits` VALUES ('323', '225', 'Ёши', 'f60y:after', '', '10,0', '21', null);
INSERT INTO `pokaz_limits` VALUES ('324', '225', 'Хомиладорлик', '1-триместр', '', '9,0', '26', null);
INSERT INTO `pokaz_limits` VALUES ('325', '225', 'Хомиладорлик', '2-триместр', '', '6,0', '21', null);
INSERT INTO `pokaz_limits` VALUES ('326', '225', 'Хомиладорлик', '3-триместр', '', '6,0', '21', null);
INSERT INTO `pokaz_limits` VALUES ('327', '226', '', '', '', '59', '153', null);
INSERT INTO `pokaz_limits` VALUES ('328', '227', 'Ёши ва жинси', 'f20y-39y:mejdu~sex:m', '', '9,0', '38', null);
INSERT INTO `pokaz_limits` VALUES ('329', '227', 'Ёши ва жинси', 'f40y-55y:mejdu~sex:m', '', '6,9', '21', null);
INSERT INTO `pokaz_limits` VALUES ('330', '227', 'Ёши ва жинси', 'f55y:after~sex:m', '', '5,9', '18,1', null);
INSERT INTO `pokaz_limits` VALUES ('331', '227', 'Жинси', 'Аёл', '', '0', '4,6', null);
INSERT INTO `pokaz_limits` VALUES ('332', '228', 'Ёши', 'f12y:do', '', '', '10', null);
INSERT INTO `pokaz_limits` VALUES ('333', '228', 'Давр', 'Катталар', '', '0,7', '9,0', null);
INSERT INTO `pokaz_limits` VALUES ('334', '228', 'Диабет', 'ТИП 2', '', '0,7', '25', null);
INSERT INTO `pokaz_limits` VALUES ('335', '229', 'Жинси', 'Эркак', '', '0', '100', null);
INSERT INTO `pokaz_limits` VALUES ('336', '229', 'Жинси', 'Аёл', '', '0', '100', null);
INSERT INTO `pokaz_limits` VALUES ('337', '229', 'Ёши', 'f50y:do', '', '0', '150', null);
INSERT INTO `pokaz_limits` VALUES ('338', '230', '', '', '', '0,7', '1,9', null);
INSERT INTO `pokaz_limits` VALUES ('339', '231', 'Жинси', 'Эркак', '', '', '30', null);
INSERT INTO `pokaz_limits` VALUES ('340', '231', 'Жинси', 'Аёл', '', '', '30', null);
INSERT INTO `pokaz_limits` VALUES ('341', '231', 'Ёши', 'f50y:do', '', '', '50', null);
INSERT INTO `pokaz_limits` VALUES ('342', '232', '', '', '', '', '10,5', null);
INSERT INTO `pokaz_limits` VALUES ('343', '233', 'Серонегативные', 'Серонегативные', '', '', '15', null);
INSERT INTO `pokaz_limits` VALUES ('344', '233', 'Серопазитивные', 'Серопазитивные старше 3 лет', '', '15,1', '125', null);
INSERT INTO `pokaz_limits` VALUES ('345', '233', 'Бола', 'Чакалок', '', '', '19,5', null);
INSERT INTO `pokaz_limits` VALUES ('346', '233', 'Бола', 'f8m:do', '', '', '42,0', null);
INSERT INTO `pokaz_limits` VALUES ('347', '233', 'Бола', 'f8m-3y:mejdu', '', '', '58,5', null);
INSERT INTO `pokaz_limits` VALUES ('348', '234', 'Серонегативные', 'Серонегативные', '', '', '0,9', null);
INSERT INTO `pokaz_limits` VALUES ('349', '234', 'Серопазитивные', 'Серопазитивные', '', '1,1', '4,9', null);
INSERT INTO `pokaz_limits` VALUES ('350', '235', '', '', '', '', '10,5', null);
INSERT INTO `pokaz_limits` VALUES ('351', '236', 'Серонегативные', 'Серонегативные', '', '0,1', '0,5', null);
INSERT INTO `pokaz_limits` VALUES ('352', '236', 'Серопазитивные', 'Серопазитивные старше 3 лет', '', '0,6', '2,7', null);
INSERT INTO `pokaz_limits` VALUES ('353', '236', 'Бола', 'Чакалок', '', '0,1', '0,9', null);
INSERT INTO `pokaz_limits` VALUES ('354', '236', 'Бола', 'f8m:do', '', '0,1', '1,9', null);
INSERT INTO `pokaz_limits` VALUES ('355', '236', 'Бола', 'f8m-3y:mejdu', '', '0,1', '3,1', null);
INSERT INTO `pokaz_limits` VALUES ('356', '237', 'Серонегативные', 'Серонегативные', '', '', '0,9', null);
INSERT INTO `pokaz_limits` VALUES ('357', '237', 'Серопазитивные', 'Серопазитивные', '', '1,1', '4,9', null);
INSERT INTO `pokaz_limits` VALUES ('358', '238', '', '', '', '', '10,5', null);
INSERT INTO `pokaz_limits` VALUES ('359', '239', 'Серонегативные', 'Серонегативные', '', '', '15,0', null);
INSERT INTO `pokaz_limits` VALUES ('360', '239', 'Серопазитивные', 'Серопазитивные старше 3 лет', '', '15,1', '73,5', null);
INSERT INTO `pokaz_limits` VALUES ('361', '239', 'Бола', 'Чакалок', '', '', '27,0', null);
INSERT INTO `pokaz_limits` VALUES ('362', '239', 'Бола', 'f8m:do', '', '', '48,0', null);
INSERT INTO `pokaz_limits` VALUES ('363', '239', 'Бола', 'f8m-3y:mejdu', '', '', '60,0', null);
INSERT INTO `pokaz_limits` VALUES ('364', '240', '', '', '', '', '0,9', null);
INSERT INTO `pokaz_limits` VALUES ('365', '241', '', '', '', '', '10,5', null);
INSERT INTO `pokaz_limits` VALUES ('366', '242', 'Серонегативные', 'Серонегативные', '', '0,1', '0,9', null);
INSERT INTO `pokaz_limits` VALUES ('367', '242', 'Серопазитивные', 'Серопазитивные старше 3 лет', '', '1,1', '4,9', null);
INSERT INTO `pokaz_limits` VALUES ('368', '242', 'Бола', 'Чакалок', '', '0,1', '1,5', null);
INSERT INTO `pokaz_limits` VALUES ('369', '242', 'Бола', 'f8m:do', '', '0,1', '3,5', null);
INSERT INTO `pokaz_limits` VALUES ('370', '242', 'Бола', 'f8m-3y:mejdu', '', '0,1', '4,8', null);
INSERT INTO `pokaz_limits` VALUES ('371', '243', '', '', '', '', '0,9', null);
INSERT INTO `pokaz_limits` VALUES ('372', '244', 'Серонегативные', 'Серонегативные', '', '0,1', '0,9', null);
INSERT INTO `pokaz_limits` VALUES ('373', '244', 'Серопазитивные', 'Серопазитивные старше 3 лет', '', '1,1', '4,9', null);
INSERT INTO `pokaz_limits` VALUES ('374', '244', 'Бола', 'Чакалок', '', '0,1', '1,8', null);
INSERT INTO `pokaz_limits` VALUES ('375', '244', 'Бола', 'f8m:do', '', '0,1', '3,0', null);
INSERT INTO `pokaz_limits` VALUES ('376', '244', 'Бола', 'f8m-3y:mejdu', '', '0,1', '2,7', null);
INSERT INTO `pokaz_limits` VALUES ('377', '245', '', '', '', '', '0,9', null);
INSERT INTO `pokaz_limits` VALUES ('378', '246', 'Серонегативные', 'Серонегативные', '', '0,1', '0,9', null);
INSERT INTO `pokaz_limits` VALUES ('379', '246', 'Серопазитивные', 'Серопазитивные старше 3 лет', '', '1,1', '3,9', null);
INSERT INTO `pokaz_limits` VALUES ('380', '246', 'Бола', 'Чакалок', '', '0,1', '1,3', null);
INSERT INTO `pokaz_limits` VALUES ('381', '246', 'Бола', 'f8m:do', '', '0,1', '2,6', null);
INSERT INTO `pokaz_limits` VALUES ('382', '246', 'Бола', 'f8m-3y:mejdu', '', '0,1', '2,1', null);
INSERT INTO `pokaz_limits` VALUES ('383', '247', '', '', '', '', '0,9', null);
INSERT INTO `pokaz_limits` VALUES ('384', '248', '', '', '', '', '0,9', null);
INSERT INTO `pokaz_limits` VALUES ('385', '249', '', '', '', '', '0,9', null);

-- ----------------------------
-- Table structure for `registration`
-- ----------------------------
DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `user_id` int NOT NULL,
  `analiz_id` int NOT NULL,
  `sum_amount` int DEFAULT NULL,
  `sum_cash` int DEFAULT NULL,
  `sum_plastik` int DEFAULT NULL,
  `sum_debt` int DEFAULT NULL,
  `add1` varchar(255) DEFAULT NULL,
  `add2` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `change_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of registration
-- ----------------------------
INSERT INTO `registration` VALUES ('1', '1', '1', '1', '28000', '28000', null, null, null, null, null, '2020-12-13 23:03:52', '2020-12-13 23:03:52');

-- ----------------------------
-- Table structure for `reg_dopinfo`
-- ----------------------------
DROP TABLE IF EXISTS `reg_dopinfo`;
CREATE TABLE `reg_dopinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reg_id` int NOT NULL,
  `indikator_id` int DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of reg_dopinfo
-- ----------------------------
INSERT INTO `reg_dopinfo` VALUES ('1', '1', '12', '12');
INSERT INTO `reg_dopinfo` VALUES ('2', '1', '13', '14');
INSERT INTO `reg_dopinfo` VALUES ('3', '1', '14', '16');
INSERT INTO `reg_dopinfo` VALUES ('4', '1', '24', '27');

-- ----------------------------
-- Table structure for `result`
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `id` int NOT NULL AUTO_INCREMENT,
  `main_id` int DEFAULT NULL,
  `analiz_id` int DEFAULT NULL,
  `pokaz_id` int DEFAULT NULL,
  `reslut_value` varchar(255) DEFAULT NULL,
  `result_answer` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of result
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `group` varchar(30) DEFAULT NULL,
  `add1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'Администратор', null, null);
INSERT INTO `role` VALUES ('2', 'Регистратор', null, null);
INSERT INTO `role` VALUES ('3', 'Кассир', null, null);
INSERT INTO `role` VALUES ('4', 'Лаборант', null, null);
INSERT INTO `role` VALUES ('5', 'Старший лаборант', null, null);

-- ----------------------------
-- Table structure for `s_analiz`
-- ----------------------------
DROP TABLE IF EXISTS `s_analiz`;
CREATE TABLE `s_analiz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `ord` int DEFAULT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `add1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of s_analiz
-- ----------------------------
INSERT INTO `s_analiz` VALUES ('1', 'ОБЩИЙ АНАЛИЗ КРОВИ (27 ПОКАЗАТЕЛЕЙ)', '28000', '1', '1', null, '', '0');
INSERT INTO `s_analiz` VALUES ('2', 'ГРУППА КРОВИ – РЕЗУС-ФАКТОР', '45000', '1', '2', null, '', '1');
INSERT INTO `s_analiz` VALUES ('3', 'ОБСЛЕДОВАНИЕ НА РЕЗУС АНТИТЕЛА (RH)', '45000', '1', '3', null, '', '1');
INSERT INTO `s_analiz` VALUES ('4', 'ОБЩИЙ АНАЛИЗ МОЧИ', '17000', '1', '4', null, '', '2');
INSERT INTO `s_analiz` VALUES ('5', 'МОЧА ПО НЕЧИПОРЕНКО', '33000', '1', '5', null, '', '2');
INSERT INTO `s_analiz` VALUES ('6', 'РЕВМАТОИДНЫЙ ФАКТОР (RF)', '28000', '1', '6', null, '', '3');
INSERT INTO `s_analiz` VALUES ('7', 'С-РЕАКТИВНЫЙ БЕЛОК (CRF)', '28000', '1', '7', null, '', '3');
INSERT INTO `s_analiz` VALUES ('8', 'АНТИСТРЕПТОЛИЗИН-О (ASLO)', '28000', '1', '8', null, '', '3');
INSERT INTO `s_analiz` VALUES ('9', 'ХОЛЕСТЕРОЛ ОБЩИЙ', '24000', '1', '9', null, '', '4');
INSERT INTO `s_analiz` VALUES ('10', 'ХОЛЕСТЕРОЛ (ЛПВП)', '24000', '1', '10', null, '', '4');
INSERT INTO `s_analiz` VALUES ('11', 'ХОЛЕСТЕРОЛ (ЛПНП)', '24000', '1', '11', null, '', '4');
INSERT INTO `s_analiz` VALUES ('12', 'ТРИГЛИЦЕРИДЫ', '24000', '1', '12', null, '', '4');
INSERT INTO `s_analiz` VALUES ('13', 'ЖЕЛЕЗО', '21000', '1', '13', null, '', '5');
INSERT INTO `s_analiz` VALUES ('14', 'КАЛЬЦИЙ ОБЩИЙ', '21000', '1', '14', null, '', '5');
INSERT INTO `s_analiz` VALUES ('15', 'ФОСФОР', '21000', '1', '15', null, '', '5');
INSERT INTO `s_analiz` VALUES ('16', 'МАГНИЙ', '21000', '1', '16', null, '', '5');
INSERT INTO `s_analiz` VALUES ('17', 'МАЗОК', '45000', '1', '17', null, '', '6');
INSERT INTO `s_analiz` VALUES ('18', 'ГОРМОНАЛЬНАЯ КОЛЬПОЦИТОГРАММА', '0', '1', '18', null, '', '6');
INSERT INTO `s_analiz` VALUES ('19', 'СПЕРМАГРАММА', '70000', '1', '19', null, '', '6');
INSERT INTO `s_analiz` VALUES ('20', 'ПТИ ', '19000', '1', '20', null, '', '7');
INSERT INTO `s_analiz` VALUES ('21', 'МНО', '19000', '1', '21', null, '', '7');
INSERT INTO `s_analiz` VALUES ('22', 'ФИБРИНОГЕН', '19000', '1', '22', null, '', '7');
INSERT INTO `s_analiz` VALUES ('23', 'ПРОТРОМБИНОВОЕ ВРЕМЯ', '19000', '1', '23', null, '', '7');
INSERT INTO `s_analiz` VALUES ('24', 'АКТ.ЧАСТ.ТРОМ.ВРЕМЯ (АЧТВ)', '45000', '1', '24', null, '', '7');
INSERT INTO `s_analiz` VALUES ('25', 'ТРОМБИНВОЕ ВРЕМЯ ', '19000', '1', '25', null, '', '7');
INSERT INTO `s_analiz` VALUES ('26', 'ВРЕМЯ СВЕРТЫВАЕМОСТИ КРОВИ ', '19000', '1', '26', null, '', '7');
INSERT INTO `s_analiz` VALUES ('27', 'ИММУНОГЛОБУЛИН   Е', '46000', '1', '27', null, '', '8');
INSERT INTO `s_analiz` VALUES ('28', 'ОБЩИЙ БЕЛОК', '20000', '1', '28', null, '', '9');
INSERT INTO `s_analiz` VALUES ('29', 'АЛЬБУМИН', '20000', '1', '29', null, '', '9');
INSERT INTO `s_analiz` VALUES ('30', 'ГЛЮКОЗА           ', '18000', '1', '30', null, '', '9');
INSERT INTO `s_analiz` VALUES ('31', 'ГЛОБУЛИНЫ', '20000', '1', '31', null, '', '9');
INSERT INTO `s_analiz` VALUES ('32', 'БИЛИРУБИН   (общий, прямой, непрямой)', '35000', '1', '32', null, '', '9');
INSERT INTO `s_analiz` VALUES ('33', 'АЛТ', '20000', '1', '33', null, '', '9');
INSERT INTO `s_analiz` VALUES ('34', 'АСТ', '20000', '1', '34', null, '', '9');
INSERT INTO `s_analiz` VALUES ('35', 'КРЕАТИНКИНАЗА', '19000', '1', '35', null, '', '9');
INSERT INTO `s_analiz` VALUES ('36', 'МОЧЕВИНА', '19000', '1', '36', null, '', '9');
INSERT INTO `s_analiz` VALUES ('37', 'КРЕАТИНИН', '19000', '1', '37', null, '', '9');
INSERT INTO `s_analiz` VALUES ('38', 'МОЧЕВАЯ КИСОТА', '19000', '1', '38', null, '', '9');
INSERT INTO `s_analiz` VALUES ('39', 'ГЛИКОЛИЗИРОВАННЫЙ ГЕМОГЛОБИН', '46000', '1', '39', null, '', '9');
INSERT INTO `s_analiz` VALUES ('40', 'Гликозилированный гемоглабин по международной федерации клинической химии', '0', '1', '40', null, '', '9');
INSERT INTO `s_analiz` VALUES ('41', 'Гликозилированный гемоглабин по национальной программе по стандартизации гликогемоглобина', '0', '1', '41', null, '', '9');
INSERT INTO `s_analiz` VALUES ('42', 'гемоглабин', '0', '1', '42', null, '', '9');
INSERT INTO `s_analiz` VALUES ('43', 'ФОСФАТАЗА ЩЕЛОЧНАЯ', '19000', '1', '43', null, '', '9');
INSERT INTO `s_analiz` VALUES ('44', 'АЛЬФА-АМИЛАЗА (ДИАСТАЗА)', '21000', '1', '44', null, '', '9');
INSERT INTO `s_analiz` VALUES ('45', 'ЛАКТАТДЕГИДРОГЕНАЗА', '17000', '1', '45', null, '', '9');
INSERT INTO `s_analiz` VALUES ('46', 'ГАММА-ГЛУТАМИЛТРАНСФЕРАЗА', '17000', '1', '46', null, '', '9');
INSERT INTO `s_analiz` VALUES ('47', 'ОСТАТОЧНЫЙ АЗОТ ', '20000', '1', '47', null, '', '9');
INSERT INTO `s_analiz` VALUES ('48', 'АЛЬФА-ФЕТОПРОТЕИН (АФП)', '57000', '1', '48', null, '', '10');
INSERT INTO `s_analiz` VALUES ('49', 'Раково-эмбриональный антиген (СЕА)', '61000', '1', '49', null, '', '10');
INSERT INTO `s_analiz` VALUES ('50', 'Простатспецифический антиген (ОБЩИЙ) ПСА', '57000', '1', '50', null, '', '10');
INSERT INTO `s_analiz` VALUES ('51', 'Простатспецифический антиген (СВОБОДНЫЙ) ПСА', '57000', '1', '51', null, '', '10');
INSERT INTO `s_analiz` VALUES ('52', 'Углеводный антиген СА 15-3 (онкомаркер молочной железы)', '57000', '1', '52', null, '', '10');
INSERT INTO `s_analiz` VALUES ('53', 'Углеводный антиген СА 125 (онкомаркер яичников и матки)', '57000', '1', '53', null, null, '10');
INSERT INTO `s_analiz` VALUES ('55', 'Углеводный антиген СА 19-9 (онкомаркер печени, желудка, подж.железы, толстой и прямой кишки)', '57000', '1', '54', null, '', '10');
INSERT INTO `s_analiz` VALUES ('56', 'УГЛЕВОДНЫЙ АНТИГЕН СА72-4', '57000', '1', '55', null, '', '10');
INSERT INTO `s_analiz` VALUES ('57', 'ХОРИОНИЧ. ГОНАДОТРОПИН (HCG) ', '57000', '1', '56', null, '', '10');
INSERT INTO `s_analiz` VALUES ('58', 'НЕЙРОНСП ЕЦИФИЧЕСКАЯ ЭНОЛАЗА (NSE) ', '61000', '1', '57', null, '', '10');
INSERT INTO `s_analiz` VALUES ('59', 'He4', '202000', '1', '58', null, '', '10');
INSERT INTO `s_analiz` VALUES ('60', 'ЛЯМБЛИИ СУММАРНЫЕ (lgA. lgM. lgG)', '0', '1', '59', null, '', '11');
INSERT INTO `s_analiz` VALUES ('61', 'HCV (Качественный) (гепатит С)', '122000', '1', '60', null, '', '12');
INSERT INTO `s_analiz` VALUES ('62', 'HCV (Количественный) (гепатит С)', '256000', '1', '61', null, '', '12');
INSERT INTO `s_analiz` VALUES ('63', 'HCV (Генотип) (гепатит С)', '256000', '1', '62', null, '', '12');
INSERT INTO `s_analiz` VALUES ('64', 'HBV (Качественный) (Гепатит B)', '122000', '1', '63', null, '', '12');
INSERT INTO `s_analiz` VALUES ('65', 'HBV  (Количественный) (Гепатит B)', '256000', '1', '64', null, '', '12');
INSERT INTO `s_analiz` VALUES ('66', 'HDV (Качественный) (Гепатит D)', '122000', '1', '65', null, '', '12');
INSERT INTO `s_analiz` VALUES ('67', 'HDV (Количественный) (Гепатит D)', '256000', '1', '66', null, '', '12');
INSERT INTO `s_analiz` VALUES ('68', 'Вирус Эпштейна Барра, цитомегаловирус, вирус простого герпеса 6 тип (EB/СМV/HSV6-скрин)', '220000', '1', '67', null, '', '12');
INSERT INTO `s_analiz` VALUES ('69', 'ВПЧ 16/18', '110000', '1', '68', null, '', '12');
INSERT INTO `s_analiz` VALUES ('70', 'ВИРУС ЭПШТЕЙНА БАРРА ', '165000', '1', '69', null, '', '12');
INSERT INTO `s_analiz` VALUES ('71', 'ВИРУС ПРОСТОГО ГЕРПЕСА I, II ', '165000', '1', '70', null, '', '12');
INSERT INTO `s_analiz` VALUES ('72', 'ВИРУС ПРОСТОГО ГЕРПЕСА 6 ТИП', '110000', '1', '71', null, '', '12');
INSERT INTO `s_analiz` VALUES ('73', 'ЦИТОМЕГАЛОВИРУС', '165000', '1', '72', null, '', '12');
INSERT INTO `s_analiz` VALUES ('74', 'TRICHOMO AS VAGINALIS', '110000', '1', '73', null, '', '12');
INSERT INTO `s_analiz` VALUES ('75', 'Ureaplasma spp. (Ureaplasma urealytic m/parvum)', '110000', '1', '74', null, '', '12');
INSERT INTO `s_analiz` VALUES ('76', 'Toxoplasma gondii', '110000', '1', '75', null, '', '12');
INSERT INTO `s_analiz` VALUES ('77', 'Gardnerella vaginali', '110000', '1', '76', null, '', '12');
INSERT INTO `s_analiz` VALUES ('78', 'HBs-Ag (Гепатит Б)', '32000', '1', '77', null, '', '13');
INSERT INTO `s_analiz` VALUES ('79', 'HCV-Ab (Гепатит С)', '32000', '1', '78', null, '', '13');
INSERT INTO `s_analiz` VALUES ('80', 'HDV-Ab (Гепатит Д)', '32000', '1', '79', null, '', '13');
INSERT INTO `s_analiz` VALUES ('81', 'HIV ВИЧ ', '90000', '1', '80', null, '', '14');
INSERT INTO `s_analiz` VALUES ('82', 'ЭКСПРЕСС ТЕСТ НА СИФИЛИС', '35000', '1', '81', null, '', '14');
INSERT INTO `s_analiz` VALUES ('83', 'БРУЦЕЛЛЕЗ', '31000', '1', '82', null, '', '14');
INSERT INTO `s_analiz` VALUES ('84', 'ТРОПОНИН-I ', '32000', '1', '83', null, '', '14');
INSERT INTO `s_analiz` VALUES ('85', 'HCV-AB (ГЕПАТИТ С)', '32000', '1', '84', null, '', '14');
INSERT INTO `s_analiz` VALUES ('86', 'HBS-AG (ГЕПАТИТ Б) ', '32000', '1', '85', null, '', '14');
INSERT INTO `s_analiz` VALUES ('87', 'РЕВМАТОИДНЫЙ ФАКТОР (RF)', '28000', '1', '86', null, '', '14');
INSERT INTO `s_analiz` VALUES ('88', 'С-РЕАКТИВНЫЙ БЕЛОК (CRF)', '28000', '1', '87', null, '', '14');
INSERT INTO `s_analiz` VALUES ('89', 'АНТИСТРЕПТОЛИЗИН-О (ASLO)', '28000', '1', '88', null, '', '14');
INSERT INTO `s_analiz` VALUES ('90', 'HELICOBACTER PYLORI  IgA, IgM, IgG', '61000', '1', '89', null, '', '15');
INSERT INTO `s_analiz` VALUES ('91', 'CHLAMYDIA PNEUMONIA     IgG', '35000', '1', '90', null, '', '15');
INSERT INTO `s_analiz` VALUES ('92', 'CHLAMYDIA PNEUMONIA      IgМ ', '35000', '1', '91', null, '', '15');
INSERT INTO `s_analiz` VALUES ('93', 'MYCOPLASMA PNEUMONIA   IgG', '35000', '1', '92', null, '', '15');
INSERT INTO `s_analiz` VALUES ('94', 'MYCOPLASMA PNEUMONIA   IgМ ', '35000', '1', '93', null, '', '15');
INSERT INTO `s_analiz` VALUES ('95', 'КОРТИЗОЛ', '57000', '1', '94', null, '', '16');
INSERT INTO `s_analiz` VALUES ('96', 'ПРОГЕСТЕРОН ', '56000', '1', '95', null, '', '16');
INSERT INTO `s_analiz` VALUES ('97', 'РRL-Пролактин', '57000', '1', '96', null, '', '16');
INSERT INTO `s_analiz` VALUES ('98', 'ЛЮТЕИН0ИЗИРУЮЩИЙ ГОРМОН', '56000', '1', '97', null, '', '16');
INSERT INTO `s_analiz` VALUES ('99', 'Фолликулостимурующий гормон ФСГ', '56000', '1', '98', null, '', '16');
INSERT INTO `s_analiz` VALUES ('100', 'ЭСТРАДИОЛ', '56000', '1', '99', null, '', '16');
INSERT INTO `s_analiz` VALUES ('101', 'Эстродиол Е2', '56000', '1', '100', null, '', '16');
INSERT INTO `s_analiz` VALUES ('102', 'САМОТОТРОПНЫЙ ГОРМОН ', '61000', '1', '101', null, '', '16');
INSERT INTO `s_analiz` VALUES ('103', '(TSH) ТИРЕОТРОПНЫЙ ГОРМОН (ТТГ)', '56000', '1', '102', null, '', '16');
INSERT INTO `s_analiz` VALUES ('104', 'FT-3 CВОБОДНЫЙ ТРИЙОДТИРОНИН', '56000', '1', '103', null, '', '16');
INSERT INTO `s_analiz` VALUES ('105', 'Т-3 ОБЩИЙ ТРИЙОДТИРОНИН', '56000', '1', '104', null, '', '16');
INSERT INTO `s_analiz` VALUES ('106', 'FТ-4 CВОБОДНЫЙ ТИРОКСИН', '56000', '1', '105', null, '', '16');
INSERT INTO `s_analiz` VALUES ('107', 'Т-4 ОБЩИЙ ТИРОКСИН ', '56000', '1', '106', null, '', '16');
INSERT INTO `s_analiz` VALUES ('108', 'ТЕСТОСТЕРОН', '56000', '1', '107', null, '', '16');
INSERT INTO `s_analiz` VALUES ('109', 'ИНСУЛИН ', '86000', '1', '108', null, '', '16');
INSERT INTO `s_analiz` VALUES ('110', 'АНТИТЕЛА К ТИРЕОГЛОБУЛИНУ (АТ-ТГ)', '56000', '1', '109', null, '', '16');
INSERT INTO `s_analiz` VALUES ('111', 'С-ПЕПТИД ', '113000', '1', '110', null, '', '16');
INSERT INTO `s_analiz` VALUES ('112', 'ТИРОИД-АНТИ-ТПО', '56000', '1', '111', null, '', '16');
INSERT INTO `s_analiz` VALUES ('113', 'TOXOPLASMA GONDII АВИД', '70000', '1', '112', null, '', '17');
INSERT INTO `s_analiz` VALUES ('114', 'TOXOPLASMA GONDII IgG', '35000', '1', '113', null, '', '17');
INSERT INTO `s_analiz` VALUES ('115', 'TOXOPLASMA GONDII IgМ', '35000', '1', '114', null, '', '17');
INSERT INTO `s_analiz` VALUES ('116', 'CYTOMEGALOVIRUS АВИД', '70000', '1', '115', null, '', '17');
INSERT INTO `s_analiz` VALUES ('117', 'CYTOMEGALOVIRUS IgG', '35000', '1', '116', null, '', '17');
INSERT INTO `s_analiz` VALUES ('118', 'CYTOMEGALOVIRUS IgМ', '35000', '1', '117', null, '', '17');
INSERT INTO `s_analiz` VALUES ('119', 'RUBELLA АВИД', '94000', '1', '118', null, '', '17');
INSERT INTO `s_analiz` VALUES ('120', 'RUBELLA lgG', '47000', '1', '119', null, '', '17');
INSERT INTO `s_analiz` VALUES ('121', 'RUBELLA lgМ', '47000', '1', '120', null, '', '17');
INSERT INTO `s_analiz` VALUES ('122', 'HERPES SIMPLEX 1/2 АВИД', '70000', '1', '121', null, '', '17');
INSERT INTO `s_analiz` VALUES ('123', 'HERPES SIMPLEX 1/2 IgG', '35000', '1', '122', null, '', '17');
INSERT INTO `s_analiz` VALUES ('124', 'HERPES SIMPLEX 1/2 IgМ', '35000', '1', '123', null, '', '17');
INSERT INTO `s_analiz` VALUES ('125', 'CHLAMYDIA TRACHOMATIS IgG', '35000', '1', '124', null, '', '17');
INSERT INTO `s_analiz` VALUES ('126', 'CHLAMYDIA TRACHOMATIS IgМ', '35000', '1', '125', null, '', '17');
INSERT INTO `s_analiz` VALUES ('127', 'MYCOPLASMA HOMINIS IgG', '35000', '1', '126', null, '', '17');
INSERT INTO `s_analiz` VALUES ('128', 'MYCOPLASMA HOMINIS IgМ', '35000', '1', '127', null, '', '17');
INSERT INTO `s_analiz` VALUES ('129', 'UREAPLASMA UREALYCTICUM IgG', '35000', '1', '128', null, '', '17');
INSERT INTO `s_analiz` VALUES ('130', 'UREAPLASMA UREALYCTICUM IgМ', '35000', '1', '129', null, '', '17');

-- ----------------------------
-- Table structure for `s_groups`
-- ----------------------------
DROP TABLE IF EXISTS `s_groups`;
CREATE TABLE `s_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of s_groups
-- ----------------------------
INSERT INTO `s_groups` VALUES ('1', 'ГРУППА КРОВИ');
INSERT INTO `s_groups` VALUES ('2', 'АНАЛИЗ МОЧИ');
INSERT INTO `s_groups` VALUES ('3', 'РЕВМАТОИДНЫЕ ФАКТОРЫ');
INSERT INTO `s_groups` VALUES ('4', 'ЛИПИДНЫЙ СПЕКТР');
INSERT INTO `s_groups` VALUES ('5', 'ЭЛЕКТРОЛИТЫ');
INSERT INTO `s_groups` VALUES ('6', 'АНАЛИЗ ВЫДЕЛЕНИЙ');
INSERT INTO `s_groups` VALUES ('7', 'КОАГУЛОГРАМММА ');
INSERT INTO `s_groups` VALUES ('8', 'ГУМОРАЛЬНЫЙ ИММУНИТЕТ И АЛЛЕРГИЯ');
INSERT INTO `s_groups` VALUES ('9', 'БИОХИМИЧЕСКИЕ АНАЛИЗЫ');
INSERT INTO `s_groups` VALUES ('10', 'ОПУХОЛЕВЫЕ МАРКЕРЫ ');
INSERT INTO `s_groups` VALUES ('11', 'ПАРАЗИТЫ');
INSERT INTO `s_groups` VALUES ('12', 'ПЦР');
INSERT INTO `s_groups` VALUES ('13', 'ВИРУСНЫЕ ГЕПАТИТЫ ');
INSERT INTO `s_groups` VALUES ('14', 'ЭКСПРЕСС-ТЕСТ ');
INSERT INTO `s_groups` VALUES ('15', 'ИНФЕКЦИИ ');
INSERT INTO `s_groups` VALUES ('16', 'ГОРМОНЫ');
INSERT INTO `s_groups` VALUES ('17', 'TORCH-ИНФЕКЦИИ ');
INSERT INTO `s_groups` VALUES ('18', 'ОБЩЯЯ ГРУППА');

-- ----------------------------
-- Table structure for `s_pokazatel`
-- ----------------------------
DROP TABLE IF EXISTS `s_pokazatel`;
CREATE TABLE `s_pokazatel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `analiz_id` int NOT NULL,
  `add1` varchar(255) DEFAULT NULL,
  `ord` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_pokazatel
-- ----------------------------
INSERT INTO `s_pokazatel` VALUES ('1', 'Лейкоциты (WBC)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('2', 'Нейтрофиллы (Neu%)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('3', 'Лимфоциты (Lym%)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('4', 'Моноциты (Mon%)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('5', 'Эозинофиллы (Eos%)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('6', 'Базофиллы (Bas%)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('7', 'Нейтрофиллы (Neu#)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('8', 'Лимфоциты (Lym#)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('9', 'Моноциты (Mon#)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('10', 'Эозинофиллы (Eos#)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('11', 'Базофиллы (Bas#)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('12', 'Эритроциты (RBC)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('13', 'Гемоглобин (HGB)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('14', 'Гематокрит (HCT)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('15', 'Средний объем эритроцита (MCV)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('16', 'Среднее содержание гемоглобина в эритроцие (MCH)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('17', 'Средняя концентрация гемоглобина в эритроците  (MCHC)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('18', 'Ширина распределения эритроцитов по объему – Коэффициент вариации (RDW-CV)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('19', 'Ширина распределения эритроцитов по объему – Стандартное отклонение (RDW-SD)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('20', 'Тромбоциты (PLT)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('21', 'Средний объем тромбоцита (MPV) ', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('22', 'Ширина распределения тромбоцитов по объему (PDW)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('23', 'Тромбокрит (PCT)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('24', 'СОЭ(мм/час)', '1', null, null);
INSERT INTO `s_pokazatel` VALUES ('25', 'ГРУППА КРОВИ – РЕЗУС-ФАКТОР', '2', null, null);
INSERT INTO `s_pokazatel` VALUES ('26', 'ОБСЛЕДОВАНИЕ НА РЕЗУС АНТИТЕЛА (RH)', '3', null, null);
INSERT INTO `s_pokazatel` VALUES ('27', 'Количество ', '4', 'мл', null);
INSERT INTO `s_pokazatel` VALUES ('28', 'Цвет ', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('29', 'Прозрачность ', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('30', 'Лейкоциты', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('31', 'Нитрит', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('32', 'Уробилиноид', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('33', 'Белок', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('34', 'Реакция (pH)', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('35', 'Кровь', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('36', 'Удельный вес', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('37', 'Кетоновые тельца', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('38', 'Билирубин', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('39', 'Глюкоза', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('40', 'Аскорбиновая кислота', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('41', 'МИКРОСКОПИЯ', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('42', 'Эпителий : плоский ', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('43', 'Эпителий : переходный', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('44', 'Эпителий : почечный', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('45', 'Лейкоциты', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('46', 'Эритроциты: измененный', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('47', 'Эритроциты: неизмененный', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('48', 'Цилиндры: гиалиновый', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('49', 'Цилиндры: восковидный', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('50', 'Цилиндры: зернистый', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('51', 'Цилиндры: лейкоцитарный', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('52', 'Цилиндры: эпителиальный', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('53', 'Слизь', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('54', 'Соли: ураты', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('55', 'Соли: мочевая кислота', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('56', 'Соли: оксалаты', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('57', 'Соли: аморфные фосфаты', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('58', 'Соли: трипельфосфаты', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('59', 'Бактерии', '4', null, null);
INSERT INTO `s_pokazatel` VALUES ('60', 'Лейкоцит', '5', null, null);
INSERT INTO `s_pokazatel` VALUES ('61', 'Эритроцит', '5', null, null);
INSERT INTO `s_pokazatel` VALUES ('62', 'Цилиндр', '5', null, null);
INSERT INTO `s_pokazatel` VALUES ('63', 'РЕВМАТОИДНЫЙ ФАКТОР (RF)', '6', 'IU/mL', null);
INSERT INTO `s_pokazatel` VALUES ('64', 'С-РЕАКТИВНЫЙ БЕЛОК (CRF)', '7', 'mg/L', null);
INSERT INTO `s_pokazatel` VALUES ('65', 'АНТИСТРЕПТОЛИЗИН-О (ASLO)', '8', 'IU/mL', null);
INSERT INTO `s_pokazatel` VALUES ('66', 'ХОЛЕСТЕРОЛ ОБЩИЙ', '9', 'mmol/L', null);
INSERT INTO `s_pokazatel` VALUES ('67', 'ХОЛЕСТЕРОЛ (ЛПВП)', '10', 'mmol/L', null);
INSERT INTO `s_pokazatel` VALUES ('68', 'ХОЛЕСТЕРОЛ (ЛПНП)', '11', 'mmol/L', null);
INSERT INTO `s_pokazatel` VALUES ('69', 'ТРИГЛИЦЕРИДЫ', '12', 'mmol/L', null);
INSERT INTO `s_pokazatel` VALUES ('70', 'ЖЕЛЕЗО', '13', 'µmol/L', null);
INSERT INTO `s_pokazatel` VALUES ('71', 'КАЛЬЦИЙ ОБЩИЙ', '14', 'mmol/L', null);
INSERT INTO `s_pokazatel` VALUES ('72', 'ФОСФОР', '15', 'mmol/L', null);
INSERT INTO `s_pokazatel` VALUES ('73', 'МАГНИЙ', '16', 'mmol/L', null);
INSERT INTO `s_pokazatel` VALUES ('74', 'Лейкоцит (U Уретра)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('75', 'Эпит.клетки (U Уретра)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('76', 'Гон.нейсера (U Уретра)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('77', 'Трихоманады (U Уретра)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('78', 'Ключ.клетки (U Уретра)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('79', 'Дрожжи (U Уретра)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('80', 'Слиз (U Уретра)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('81', 'Флора (U Уретра)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('82', 'Лейкоцит  (C Цервикал)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('83', 'Эпит.клетки (C Цервикал)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('84', 'Гон.нейсера (C Цервикал)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('85', 'Трихоманады (C Цервикал)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('86', 'Ключ.клетки (C Цервикал)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('87', 'Дрожжи (C Цервикал)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('88', 'Слиз (C Цервикал)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('89', 'Флора (C Цервикал)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('90', 'Лейкоцит (V Вагина)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('91', 'Эпит.клетки (V Вагина)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('92', 'Гон.нейсера (V Вагина)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('93', 'Трихоманады (V Вагина)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('94', 'Ключ.клетки (V Вагина)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('95', 'Дрожжи (V Вагина)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('96', 'Слиз (V Вагина)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('97', 'Флора (V Вагина)', '17', null, null);
INSERT INTO `s_pokazatel` VALUES ('98', 'ГОРМОНАЛЬНАЯ КОЛЬПОЦИТОГРАММА', '18', null, null);
INSERT INTO `s_pokazatel` VALUES ('99', 'СПЕРМАГРАММА', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('100', 'Количества эякулята', '19', 'мл', null);
INSERT INTO `s_pokazatel` VALUES ('101', 'Консистенция', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('102', 'Цвет', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('103', 'Запах', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('104', 'Время разжижения', '19', 'мин', null);
INSERT INTO `s_pokazatel` VALUES ('105', 'Вязкость', '19', 'см', null);
INSERT INTO `s_pokazatel` VALUES ('106', 'РН', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('107', 'Мутность', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('108', 'Слизь', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('109', 'МИКРОСКОПИЧЕСКОЕ ИСЛЕДОВАНИЕ', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('110', 'Количество сперматозоидов ', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('111', 'А) в/мл', '19', 'млн', null);
INSERT INTO `s_pokazatel` VALUES ('112', 'Б) все эякуляте', '19', 'млн', null);
INSERT INTO `s_pokazatel` VALUES ('113', 'Подвижность ', '19', '%', null);
INSERT INTO `s_pokazatel` VALUES ('114', 'А) активно подвижные', '19', '%', null);
INSERT INTO `s_pokazatel` VALUES ('115', 'Б) малоподвижные ', '19', '%', null);
INSERT INTO `s_pokazatel` VALUES ('116', 'В) неподвижные ', '19', '%', null);
INSERT INTO `s_pokazatel` VALUES ('117', 'Оценка подвижности ', '19', 'балл', null);
INSERT INTO `s_pokazatel` VALUES ('118', 'Количество живых сперматозоидов', '19', '%', null);
INSERT INTO `s_pokazatel` VALUES ('119', 'Количество мертвых сперматозоидов', '19', '%', null);
INSERT INTO `s_pokazatel` VALUES ('120', 'Лейкоциты', '19', 'в поле зрения', null);
INSERT INTO `s_pokazatel` VALUES ('121', 'Эритроциты', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('122', 'Лецитиновая зерна', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('123', 'Амилоидные тельца ', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('124', 'Спермоглютинация', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('125', 'Микрофлора', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('126', 'Элемент семенного пузырка', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('127', 'Фруктоза', '19', 'мл', null);
INSERT INTO `s_pokazatel` VALUES ('128', 'Динамика через 1 час ____ 2 часа _____, через  24 часа ____________', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('129', 'МОРФОЛОГИЧЕСКОЕ ИССЛЕДОВАНИЕ ', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('130', 'С нормальной морфологической головки', '19', '%', null);
INSERT INTO `s_pokazatel` VALUES ('131', 'Патологические формы:', '19', '%', null);
INSERT INTO `s_pokazatel` VALUES ('132', 'Из них: патология головки 25%', '19', 'Хвоста %', null);
INSERT INTO `s_pokazatel` VALUES ('133', 'Клетка сперматогенеза', '19', '%', null);
INSERT INTO `s_pokazatel` VALUES ('134', 'Остаток цитоплазмы', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('135', 'ЗАКЛЮЧЕНИЕ:', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('136', '1. По количеству эякулята: нормоспермия, полиспермия, олигоспермия.', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('137', '2. По количеству сперматозоидов: нормозооспермия, олегозоорспермия, I, II, III астенозооспермия, азооспремия, аспермия.', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('138', '3. По подвижности: тератозооспермия, дискензия, нормокиноспермия, гинокиноспермия, акинозооспермия.', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('139', '4. Некрозооспермия, пиоспермия, гемоспермия.', '19', null, null);
INSERT INTO `s_pokazatel` VALUES ('140', 'ПТИ ', '20', '%', null);
INSERT INTO `s_pokazatel` VALUES ('141', 'МНО', '21', null, null);
INSERT INTO `s_pokazatel` VALUES ('142', 'ФИБРИНОГЕН', '22', 'г/л', null);
INSERT INTO `s_pokazatel` VALUES ('143', 'ПРОТРОМБИНОВОЕ ВРЕМЯ', '23', null, null);
INSERT INTO `s_pokazatel` VALUES ('144', 'АКТ.ЧАСТ.ТРОМ.ВРЕМЯ (АЧТВ)', '24', null, null);
INSERT INTO `s_pokazatel` VALUES ('145', 'ТРОМБИНВОЕ ВРЕМЯ ', '25', null, null);
INSERT INTO `s_pokazatel` VALUES ('146', 'ВРЕМЯ СВЕРТЫВАЕМОСТИ КРОВИ ', '26', null, null);
INSERT INTO `s_pokazatel` VALUES ('147', 'ИММУНОГЛОБУЛИН   Е', '27', 'МЕ/мл', null);
INSERT INTO `s_pokazatel` VALUES ('148', 'ОБЩИЙ БЕЛОК', '28', 'g/L', null);
INSERT INTO `s_pokazatel` VALUES ('149', 'АЛЬБУМИН', '29', 'g/L', null);
INSERT INTO `s_pokazatel` VALUES ('150', 'ГЛЮКОЗА           ', '30', 'mmol/L', null);
INSERT INTO `s_pokazatel` VALUES ('151', 'ГЛОБУЛИНЫ', '31', null, null);
INSERT INTO `s_pokazatel` VALUES ('152', 'БИЛИРУБИН   (общий, прямой, непрямой)', '32', 'µmol/L', null);
INSERT INTO `s_pokazatel` VALUES ('153', 'АЛТ', '33', 'U/L', null);
INSERT INTO `s_pokazatel` VALUES ('154', 'АСТ', '34', 'U/L', null);
INSERT INTO `s_pokazatel` VALUES ('155', 'КРЕАТИНКИНАЗА', '35', 'U/L', null);
INSERT INTO `s_pokazatel` VALUES ('156', 'МОЧЕВИНА', '36', 'mmol/L', null);
INSERT INTO `s_pokazatel` VALUES ('157', 'КРЕАТИНИН', '37', 'µmol/L', null);
INSERT INTO `s_pokazatel` VALUES ('158', 'МОЧЕВАЯ КИСОТА', '38', 'µmol/L', null);
INSERT INTO `s_pokazatel` VALUES ('159', 'ГЛИКОЛИЗИРОВАННЫЙ ГЕМОГЛОБИН', '39', 'mmol/L', null);
INSERT INTO `s_pokazatel` VALUES ('160', 'Гликозилированный гемоглабин по международной федерации клинической химии', '40', null, null);
INSERT INTO `s_pokazatel` VALUES ('161', 'Гликозилированный гемоглабин по национальной программе по стандартизации гликогемоглобина', '41', null, null);
INSERT INTO `s_pokazatel` VALUES ('162', 'гемоглабин', '42', null, null);
INSERT INTO `s_pokazatel` VALUES ('163', 'ФОСФАТАЗА ЩЕЛОЧНАЯ', '43', 'U/L', null);
INSERT INTO `s_pokazatel` VALUES ('164', 'АЛЬФА-АМИЛАЗА (ДИАСТАЗА)', '44', 'U/L', null);
INSERT INTO `s_pokazatel` VALUES ('165', 'ЛАКТАТДЕГИДРОГЕНАЗА', '45', 'U/L', null);
INSERT INTO `s_pokazatel` VALUES ('166', 'ГАММА-ГЛУТАМИЛТРАНСФЕРАЗА', '46', 'U/L', null);
INSERT INTO `s_pokazatel` VALUES ('167', 'ОСТАТОЧНЫЙ АЗОТ ', '47', null, null);
INSERT INTO `s_pokazatel` VALUES ('168', 'АЛЬФА-ФЕТОПРОТЕИН (АФП)', '48', 'ME/мл', null);
INSERT INTO `s_pokazatel` VALUES ('169', 'Раково-эмбриональный антиген (СЕА)', '49', 'нг/мл', null);
INSERT INTO `s_pokazatel` VALUES ('170', 'Простатспецифический антиген (ОБЩИЙ) ПСА', '50', null, null);
INSERT INTO `s_pokazatel` VALUES ('171', 'Простатспецифический антиген (СВОБОДНЫЙ) ПСА', '51', 'нг/мл', null);
INSERT INTO `s_pokazatel` VALUES ('172', 'Углеводный антиген СА 15-3 (онкомаркер молочной железы)', '52', 'Ед/мл', null);
INSERT INTO `s_pokazatel` VALUES ('173', 'Углеводный антиген СА 125 (онкомаркер яичников и матки)', '53', 'Ед/мл', null);
INSERT INTO `s_pokazatel` VALUES ('174', 'Углеводный антиген СА 19-9 (онкомаркер печени, желудка, подж.железы, толстой и прямой кишки)', '55', 'Ед/мл', null);
INSERT INTO `s_pokazatel` VALUES ('175', 'УГЛЕВОДНЫЙ АНТИГЕН СА72-4', '56', 'Ед/мл', null);
INSERT INTO `s_pokazatel` VALUES ('176', 'ХОРИОНИЧ. ГОНАДОТРОПИН (HCG) ', '57', 'МЕ/л', null);
INSERT INTO `s_pokazatel` VALUES ('177', 'НЕЙРОНСП ЕЦИФИЧЕСКАЯ ЭНОЛАЗА (NSE) ', '58', 'нг/мл', null);
INSERT INTO `s_pokazatel` VALUES ('178', 'He4', '59', 'пмоль/л', null);
INSERT INTO `s_pokazatel` VALUES ('179', 'ЛЯМБЛИИ СУММАРНЫЕ (lgA. lgM. lgG)', '60', null, null);
INSERT INTO `s_pokazatel` VALUES ('180', 'HCV (Качественный) (гепатит С)', '61', 'ME/мл', null);
INSERT INTO `s_pokazatel` VALUES ('181', 'HCV (Количественный) (гепатит С)', '62', 'ME/мл', null);
INSERT INTO `s_pokazatel` VALUES ('182', 'HCV (Генотип) (гепатит С)', '63', null, null);
INSERT INTO `s_pokazatel` VALUES ('183', 'HBV (Качественный) (Гепатит B)', '64', 'ME/мл', null);
INSERT INTO `s_pokazatel` VALUES ('184', 'HBV  (Количественный) (Гепатит B)', '65', 'ME/мл', null);
INSERT INTO `s_pokazatel` VALUES ('185', 'HDV (Качественный) (Гепатит D)', '66', 'ME/мл', null);
INSERT INTO `s_pokazatel` VALUES ('186', 'HDV (Количественный) (Гепатит D)', '67', 'ME/мл', null);
INSERT INTO `s_pokazatel` VALUES ('187', 'Вирус Эпштейна Барра, цитомегаловирус, вирус простого герпеса 6 тип (EB/СМV/HSV6-скрин)', '68', null, null);
INSERT INTO `s_pokazatel` VALUES ('188', 'ВПЧ 16/18', '69', null, null);
INSERT INTO `s_pokazatel` VALUES ('189', 'ВИРУС ЭПШТЕЙНА БАРРА ', '70', null, null);
INSERT INTO `s_pokazatel` VALUES ('190', 'ВИРУС ПРОСТОГО ГЕРПЕСА I, II ', '71', null, null);
INSERT INTO `s_pokazatel` VALUES ('191', 'ВИРУС ПРОСТОГО ГЕРПЕСА 6 ТИП', '72', null, null);
INSERT INTO `s_pokazatel` VALUES ('192', 'ЦИТОМЕГАЛОВИРУС', '73', null, null);
INSERT INTO `s_pokazatel` VALUES ('193', 'TRICHOMO AS VAGINALIS', '74', null, null);
INSERT INTO `s_pokazatel` VALUES ('194', 'Ureaplasma spp. (Ureaplasma urealytic m/parvum)', '75', null, null);
INSERT INTO `s_pokazatel` VALUES ('195', 'Toxoplasma gondii', '76', null, null);
INSERT INTO `s_pokazatel` VALUES ('196', 'Gardnerella vaginali', '77', null, null);
INSERT INTO `s_pokazatel` VALUES ('197', 'HBs-Ag (Гепатит Б)', '78', null, null);
INSERT INTO `s_pokazatel` VALUES ('198', 'HCV-Ab (Гепатит С)', '79', null, null);
INSERT INTO `s_pokazatel` VALUES ('199', 'HDV-Ab (Гепатит Д)', '80', null, null);
INSERT INTO `s_pokazatel` VALUES ('200', 'HIV ВИЧ ', '81', null, null);
INSERT INTO `s_pokazatel` VALUES ('201', 'ЭКСПРЕСС ТЕСТ НА СИФИЛИС', '82', null, null);
INSERT INTO `s_pokazatel` VALUES ('202', 'БРУЦЕЛЛЕЗ', '83', null, null);
INSERT INTO `s_pokazatel` VALUES ('203', 'ТРОПОНИН-I ', '84', null, null);
INSERT INTO `s_pokazatel` VALUES ('204', 'HCV-AB (ГЕПАТИТ С)', '85', null, null);
INSERT INTO `s_pokazatel` VALUES ('205', 'HBS-AG (ГЕПАТИТ Б) ', '86', null, null);
INSERT INTO `s_pokazatel` VALUES ('206', 'РЕВМАТОИДНЫЙ ФАКТОР (RF)', '87', null, null);
INSERT INTO `s_pokazatel` VALUES ('207', 'С-РЕАКТИВНЫЙ БЕЛОК (CRF)', '88', null, null);
INSERT INTO `s_pokazatel` VALUES ('208', 'АНТИСТРЕПТОЛИЗИН-О (ASLO)', '89', null, null);
INSERT INTO `s_pokazatel` VALUES ('209', 'HELICOBACTER PYLORI  IgA, IgM, IgG', '90', null, null);
INSERT INTO `s_pokazatel` VALUES ('210', 'CHLAMYDIA PNEUMONIA     IgG', '91', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('211', 'CHLAMYDIA PNEUMONIA      IgМ ', '92', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('212', 'MYCOPLASMA PNEUMONIA   IgG', '93', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('213', 'MYCOPLASMA PNEUMONIA   IgМ ', '94', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('214', 'КОРТИЗОЛ', '95', 'нмоль/л', null);
INSERT INTO `s_pokazatel` VALUES ('215', 'ПРОГЕСТЕРОН ', '96', 'нмоль/л', null);
INSERT INTO `s_pokazatel` VALUES ('216', 'РRL-Пролактин', '97', 'мМЕ/л', null);
INSERT INTO `s_pokazatel` VALUES ('217', 'ЛЮТЕИН0ИЗИРУЮЩИЙ ГОРМОН', '98', 'МЕд/л', null);
INSERT INTO `s_pokazatel` VALUES ('218', 'Фолликулостимурующий гормон ФСГ', '99', 'МЕ/л', null);
INSERT INTO `s_pokazatel` VALUES ('219', 'ЭСТРАДИОЛ', '100', 'нмоль/л', null);
INSERT INTO `s_pokazatel` VALUES ('220', 'Эстродиол Е2', '101', 'pg/ml', null);
INSERT INTO `s_pokazatel` VALUES ('221', 'САМОТОТРОПНЫЙ ГОРМОН ', '102', 'мМЕ/л', null);
INSERT INTO `s_pokazatel` VALUES ('222', '(TSH) ТИРЕОТРОПНЫЙ ГОРМОН (ТТГ)', '103', 'мМЕ/л', null);
INSERT INTO `s_pokazatel` VALUES ('223', 'FT-3 CВОБОДНЫЙ ТРИЙОДТИРОНИН', '104', 'пг/мл', null);
INSERT INTO `s_pokazatel` VALUES ('224', 'Т-3 ОБЩИЙ ТРИЙОДТИРОНИН', '105', 'нг/мл', null);
INSERT INTO `s_pokazatel` VALUES ('225', 'FТ-4 CВОБОДНЫЙ ТИРОКСИН', '106', 'пмоль/л', null);
INSERT INTO `s_pokazatel` VALUES ('226', 'Т-4 ОБЩИЙ ТИРОКСИН ', '107', 'нмоль/л', null);
INSERT INTO `s_pokazatel` VALUES ('227', 'ТЕСТОСТЕРОН', '108', 'нмоль/л', null);
INSERT INTO `s_pokazatel` VALUES ('228', 'ИНСУЛИН ', '109', 'мU/мл', null);
INSERT INTO `s_pokazatel` VALUES ('229', 'АНТИТЕЛА К ТИРЕОГЛОБУЛИНУ (АТ-ТГ)', '110', 'МЕ/мл', null);
INSERT INTO `s_pokazatel` VALUES ('230', 'С-ПЕПТИД ', '111', 'нг/мл', null);
INSERT INTO `s_pokazatel` VALUES ('231', 'ТИРОИД-АНТИ-ТПО', '112', 'МЕ/мл', null);
INSERT INTO `s_pokazatel` VALUES ('232', 'TOXOPLASMA GONDII АВИД', '113', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('233', 'TOXOPLASMA GONDII IgG', '114', 'МЕ/мл', null);
INSERT INTO `s_pokazatel` VALUES ('234', 'TOXOPLASMA GONDII IgМ', '115', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('235', 'CYTOMEGALOVIRUS АВИД', '116', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('236', 'CYTOMEGALOVIRUS IgG', '117', 'Ед/мл', null);
INSERT INTO `s_pokazatel` VALUES ('237', 'CYTOMEGALOVIRUS IgМ', '118', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('238', 'RUBELLA АВИД', '119', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('239', 'RUBELLA lgG', '120', 'МЕ/мл', null);
INSERT INTO `s_pokazatel` VALUES ('240', 'RUBELLA lgМ', '121', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('241', 'HERPES SIMPLEX 1/2 АВИД', '122', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('242', 'HERPES SIMPLEX 1/2 IgG', '123', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('243', 'HERPES SIMPLEX 1/2 IgМ', '124', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('244', 'CHLAMYDIA TRACHOMATIS IgG', '125', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('245', 'CHLAMYDIA TRACHOMATIS IgМ', '126', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('246', 'MYCOPLASMA HOMINIS IgG', '127', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('247', 'MYCOPLASMA HOMINIS IgМ', '128', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('248', 'UREAPLASMA UREALYCTICUM IgG', '129', 'К', null);
INSERT INTO `s_pokazatel` VALUES ('249', 'UREAPLASMA UREALYCTICUM IgМ', '130', 'К', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lavozim` varchar(255) DEFAULT NULL,
  `role_id` tinyint DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `info` text,
  `img` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `add1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Авазбек Тухтасинов', 'Админ', '1', '1', 'admin', 'admin', '+998934493131', 'Тизим администратори', 'partner5.PNG', null, null);

-- ----------------------------
-- Table structure for `vid_analiz`
-- ----------------------------
DROP TABLE IF EXISTS `vid_analiz`;
CREATE TABLE `vid_analiz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `analiz_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sec_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int DEFAULT NULL,
  `ord` int DEFAULT NULL,
  `add1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ed_izm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolkach` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `analiz_id_fk` (`analiz_id`),
  CONSTRAINT `analiz_id_fk` FOREIGN KEY (`analiz_id`) REFERENCES `s_analiz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of vid_analiz
-- ----------------------------
