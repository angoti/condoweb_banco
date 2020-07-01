/*
 Navicat Premium Data Transfer

 Source Server         : MariaDB_Quality
 Source Server Type    : MariaDB
 Source Server Version : 100144
 Source Host           : www.qualitysys.com.br:3300
 Source Schema         : condoweb

 Target Server Type    : MariaDB
 Target Server Version : 100144
 File Encoding         : 65001

 Date: 01/07/2020 19:32:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ContaAReceber
-- ----------------------------
DROP TABLE IF EXISTS `ContaAReceber`;
CREATE TABLE `ContaAReceber`  (
  `id_contaareceber` int(11) NOT NULL AUTO_INCREMENT,
  `data_vencimento` date NULL DEFAULT NULL,
  `valor` double NULL DEFAULT NULL,
  `valor_pago` double NULL DEFAULT NULL,
  `data_pagamento` date NULL DEFAULT NULL,
  `data_referencia` date NULL DEFAULT NULL,
  `id_imovel` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_contaareceber`) USING BTREE,
  INDEX `id_imovel`(`id_imovel`) USING BTREE,
  CONSTRAINT `ContaAReceber_ibfk_1` FOREIGN KEY (`id_imovel`) REFERENCES `Imovel` (`id_imovel`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ContaAReceber
-- ----------------------------
INSERT INTO `ContaAReceber` VALUES (1, '2020-04-25', 200, 200, '2020-04-15', '2020-04-17', 1);
INSERT INTO `ContaAReceber` VALUES (2, '2020-04-25', 200, 150, '2020-04-17', '2020-04-19', 2);
INSERT INTO `ContaAReceber` VALUES (3, '2020-04-25', 200, 200, '2020-04-18', '2020-04-20', 3);
INSERT INTO `ContaAReceber` VALUES (4, '2020-04-25', 200, 140, '2020-04-19', '2020-04-22', 6);
INSERT INTO `ContaAReceber` VALUES (5, '2020-04-25', 200, 200, '2020-04-15', '2020-04-18', 5);
INSERT INTO `ContaAReceber` VALUES (6, '2020-04-25', 200, 120, '2020-04-17', '2020-04-20', 4);
INSERT INTO `ContaAReceber` VALUES (7, '2020-05-25', 200, 0, '0000-00-00', '2020-05-15', 1);
INSERT INTO `ContaAReceber` VALUES (8, '2020-05-25', 250, 0, '0000-00-00', '2020-05-15', 2);
INSERT INTO `ContaAReceber` VALUES (9, '2020-05-25', 200, 0, '0000-00-00', '2020-05-15', 3);
INSERT INTO `ContaAReceber` VALUES (10, '2020-05-25', 260, 0, '0000-00-00', '2020-05-15', 6);
INSERT INTO `ContaAReceber` VALUES (11, '2020-05-25', 200, 0, '0000-00-00', '2020-05-15', 5);
INSERT INTO `ContaAReceber` VALUES (12, '2020-05-25', 280, 0, '0000-00-00', '2020-05-15', 4);
INSERT INTO `ContaAReceber` VALUES (13, '2020-03-25', 250, 0, '0000-00-00', '2020-06-01', 1);
INSERT INTO `ContaAReceber` VALUES (14, '2020-03-25', 250, 0, '0000-00-00', '2020-06-01', 2);
INSERT INTO `ContaAReceber` VALUES (15, '2020-03-25', 250, 0, '0000-00-00', '2020-06-01', 3);
INSERT INTO `ContaAReceber` VALUES (16, '2020-03-25', 250, 0, '0000-00-00', '2020-06-01', 4);
INSERT INTO `ContaAReceber` VALUES (17, '2020-03-25', 250, 0, '0000-00-00', '2020-06-01', 8);
INSERT INTO `ContaAReceber` VALUES (18, '2020-03-25', 250, 0, '0000-00-00', '2020-06-01', 5);
INSERT INTO `ContaAReceber` VALUES (19, '2020-03-25', 250, 0, '0000-00-00', '2020-06-01', 6);
INSERT INTO `ContaAReceber` VALUES (20, '2020-03-25', 250, 0, '0000-00-00', '2020-06-30', 1);
INSERT INTO `ContaAReceber` VALUES (21, '2020-03-25', 250, 0, '0000-00-00', '2020-06-30', 2);
INSERT INTO `ContaAReceber` VALUES (22, '2020-03-25', 250, 0, '0000-00-00', '2020-06-30', 3);
INSERT INTO `ContaAReceber` VALUES (23, '2020-03-25', 250, 0, '0000-00-00', '2020-06-30', 4);
INSERT INTO `ContaAReceber` VALUES (24, '2020-03-25', 250, 0, '0000-00-00', '2020-06-30', 8);
INSERT INTO `ContaAReceber` VALUES (25, '2020-03-25', 250, 0, '0000-00-00', '2020-06-30', 5);
INSERT INTO `ContaAReceber` VALUES (26, '2020-03-25', 250, 0, '0000-00-00', '2020-06-30', 6);
INSERT INTO `ContaAReceber` VALUES (27, '2020-03-25', 250, 0, '0000-00-00', '2020-06-30', 1);
INSERT INTO `ContaAReceber` VALUES (28, '2020-03-25', 250, 0, '0000-00-00', '2020-06-30', 2);
INSERT INTO `ContaAReceber` VALUES (29, '2020-03-25', 250, 0, '0000-00-00', '2020-06-30', 3);
INSERT INTO `ContaAReceber` VALUES (30, '2020-03-25', 250, 0, '0000-00-00', '2020-06-30', 4);
INSERT INTO `ContaAReceber` VALUES (31, '2020-03-25', 250, 0, '0000-00-00', '2020-06-30', 8);
INSERT INTO `ContaAReceber` VALUES (32, '2020-03-25', 250, 0, '0000-00-00', '2020-06-30', 5);
INSERT INTO `ContaAReceber` VALUES (33, '2020-03-25', 250, 0, '0000-00-00', '2020-06-30', 6);

-- ----------------------------
-- Table structure for Imovel
-- ----------------------------
DROP TABLE IF EXISTS `Imovel`;
CREATE TABLE `Imovel`  (
  `id_imovel` int(11) NOT NULL AUTO_INCREMENT,
  `numero_apto` int(11) NULL DEFAULT NULL,
  `numero_bloco` int(11) NULL DEFAULT NULL,
  `id_proprietario` int(11) NULL DEFAULT NULL,
  `id_condomino` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_imovel`) USING BTREE,
  INDEX `id_proprietario`(`id_proprietario`) USING BTREE,
  INDEX `id_condomino`(`id_condomino`) USING BTREE,
  CONSTRAINT `Imovel_ibfk_1` FOREIGN KEY (`id_proprietario`) REFERENCES `Proprietario` (`id_proprietario`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Imovel_ibfk_2` FOREIGN KEY (`id_condomino`) REFERENCES `Pessoa` (`id_pessoa`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Imovel
-- ----------------------------
INSERT INTO `Imovel` VALUES (1, 404, 4, 1, 7);
INSERT INTO `Imovel` VALUES (2, 302, 3, 2, 8);
INSERT INTO `Imovel` VALUES (3, 306, 3, 3, 9);
INSERT INTO `Imovel` VALUES (4, 208, 2, 4, 10);
INSERT INTO `Imovel` VALUES (5, 406, 4, 5, 5);
INSERT INTO `Imovel` VALUES (6, 206, 2, 6, 6);
INSERT INTO `Imovel` VALUES (8, 212, 2, 4, 4);

-- ----------------------------
-- Table structure for Informativo
-- ----------------------------
DROP TABLE IF EXISTS `Informativo`;
CREATE TABLE `Informativo`  (
  `id_informativo` int(11) NOT NULL AUTO_INCREMENT,
  `assunto` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `conteudo` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `data_info` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_informativo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Informativo
-- ----------------------------
INSERT INTO `Informativo` VALUES (2, 'Creche', '', '2020-06-19');
INSERT INTO `Informativo` VALUES (3, 'Salão de festas', '', '2020-04-27');
INSERT INTO `Informativo` VALUES (4, 'Segurança', '', '2020-05-18');
INSERT INTO `Informativo` VALUES (5, 'MO2020', 'Lorem....', '2020-06-03');
INSERT INTO `Informativo` VALUES (6, 'cpu2020', 'Reuniao realizada dia ....', '2020-06-18');

-- ----------------------------
-- Table structure for Perfil
-- ----------------------------
DROP TABLE IF EXISTS `Perfil`;
CREATE TABLE `Perfil`  (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_perfil`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Perfil
-- ----------------------------
INSERT INTO `Perfil` VALUES (1, 'Condomino');
INSERT INTO `Perfil` VALUES (2, 'Sindico');
INSERT INTO `Perfil` VALUES (3, 'Administrador');

-- ----------------------------
-- Table structure for Permissao
-- ----------------------------
DROP TABLE IF EXISTS `Permissao`;
CREATE TABLE `Permissao`  (
  `id_permissao` int(11) NOT NULL AUTO_INCREMENT,
  `pstatus` tinyint(1) NULL DEFAULT NULL,
  `pdata` date NULL DEFAULT NULL,
  `id_pessoa` int(11) NULL DEFAULT NULL,
  `id_perfil` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_permissao`) USING BTREE,
  INDEX `id_pessoa`(`id_pessoa`) USING BTREE,
  INDEX `id_perfil`(`id_perfil`) USING BTREE,
  CONSTRAINT `Permissao_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `Pessoa` (`id_pessoa`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Permissao_ibfk_2` FOREIGN KEY (`id_perfil`) REFERENCES `Perfil` (`id_perfil`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Permissao
-- ----------------------------
INSERT INTO `Permissao` VALUES (1, 1, '2020-04-20', 1, 2);
INSERT INTO `Permissao` VALUES (2, 1, '2018-07-10', 2, 1);
INSERT INTO `Permissao` VALUES (3, 1, '2020-04-25', 3, 1);
INSERT INTO `Permissao` VALUES (4, 0, '2018-06-06', 4, 2);
INSERT INTO `Permissao` VALUES (5, 1, '2019-05-02', 5, 1);
INSERT INTO `Permissao` VALUES (6, 1, '2020-02-13', 6, 3);
INSERT INTO `Permissao` VALUES (7, 1, '2020-03-20', 7, 1);
INSERT INTO `Permissao` VALUES (8, 1, '2019-01-22', 8, 1);
INSERT INTO `Permissao` VALUES (9, 1, '2020-04-16', 9, 1);
INSERT INTO `Permissao` VALUES (10, 0, '2017-05-30', 10, 2);

-- ----------------------------
-- Table structure for Pessoa
-- ----------------------------
DROP TABLE IF EXISTS `Pessoa`;
CREATE TABLE `Pessoa`  (
  `id_pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cpf` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rg` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data_nasc` date NULL DEFAULT NULL,
  `email` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telefone` decimal(15, 0) NULL DEFAULT NULL,
  `telefone_celular` decimal(15, 0) NULL DEFAULT NULL,
  `nome_usuario` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `senha` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `proprietario` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id_pessoa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Pessoa
-- ----------------------------
INSERT INTO `Pessoa` VALUES (1, 'Ana Maria', '12545625899', '45214', '1985-04-03', 'anamaria@gmail.com', 3213221321, 98521456, 'AnaMaria', '1234567', 1);
INSERT INTO `Pessoa` VALUES (2, 'Rogerio Alves', '25896525412', '85241', '1977-08-23', 'rogerio@gmail.com', 3284723894, 98412356, 'RogerioAlves', '1234567', 1);
INSERT INTO `Pessoa` VALUES (3, 'Adriana Silva', '14525875899', '45287', '1960-07-01', 'adriana@gmail.com', 3438428923, 32587412, 'AdrianaSilva', '1234567', 1);
INSERT INTO `Pessoa` VALUES (4, 'Marisa Monte', '02536514588', '852147', '1958-10-10', 'marisa@gmail.com', 3243546454, 98523214, 'MarisaMonte', '1234567', 1);
INSERT INTO `Pessoa` VALUES (5, 'Antônio Filho', '08525412577', '859874', '2001-12-01', 'antonio@gmail.com', 3564634345, 954123256, 'AntonioFilho', '1234567', 1);
INSERT INTO `Pessoa` VALUES (6, 'Jade Marina', '03654125877', '985214', '1999-03-02', 'jade@gmail.com', 3534345345, 96521457, 'JadeMarina', '1234567', 1);
INSERT INTO `Pessoa` VALUES (7, 'Cristiane Alves', '12545874588', '9854125', '1997-01-04', 'cristiane@gmail.com', 3435343463, 98745236, 'CristianeAlves', '1234567', 0);
INSERT INTO `Pessoa` VALUES (8, 'Nazaré Silveira', '05874596522', '652874', '1988-01-08', 'nazare@gmail.com', 3213221321, 94253658, 'NazareSilveira', '1234567', 0);
INSERT INTO `Pessoa` VALUES (9, 'Murilo Alves', '36525414799', '852147', '2000-07-01', 'murilo@gmail.com', 3534534646, 98521478, 'MuriloAlves', '1234567', 0);
INSERT INTO `Pessoa` VALUES (10, 'José Antonio', '45632114755', '8541256', '1998-07-05', 'jose@gmail.com', 3214567321, 93251458, 'JoseAntonio', '1234567', 0);

-- ----------------------------
-- Table structure for Proprietario
-- ----------------------------
DROP TABLE IF EXISTS `Proprietario`;
CREATE TABLE `Proprietario`  (
  `id_proprietario` int(11) NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_proprietario`) USING BTREE,
  INDEX `id_pessoa`(`id_pessoa`) USING BTREE,
  CONSTRAINT `Proprietario_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `Pessoa` (`id_pessoa`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Proprietario
-- ----------------------------
INSERT INTO `Proprietario` VALUES (1, 1);
INSERT INTO `Proprietario` VALUES (2, 2);
INSERT INTO `Proprietario` VALUES (3, 3);
INSERT INTO `Proprietario` VALUES (4, 4);
INSERT INTO `Proprietario` VALUES (5, 5);
INSERT INTO `Proprietario` VALUES (6, 6);

-- ----------------------------
-- Table structure for RecebeInformativo
-- ----------------------------
DROP TABLE IF EXISTS `RecebeInformativo`;
CREATE TABLE `RecebeInformativo`  (
  `id_recebeinfo` int(11) NOT NULL AUTO_INCREMENT,
  `id_imovel` int(11) NULL DEFAULT NULL,
  `id_informativo` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_recebeinfo`) USING BTREE,
  INDEX `id_imovel`(`id_imovel`) USING BTREE,
  INDEX `id_informativo`(`id_informativo`) USING BTREE,
  CONSTRAINT `RecebeInformativo_ibfk_1` FOREIGN KEY (`id_imovel`) REFERENCES `Imovel` (`id_imovel`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `RecebeInformativo_ibfk_2` FOREIGN KEY (`id_informativo`) REFERENCES `Informativo` (`id_informativo`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of RecebeInformativo
-- ----------------------------
INSERT INTO `RecebeInformativo` VALUES (7, 1, 2);
INSERT INTO `RecebeInformativo` VALUES (8, 2, 2);
INSERT INTO `RecebeInformativo` VALUES (9, 3, 2);
INSERT INTO `RecebeInformativo` VALUES (11, 1, 3);
INSERT INTO `RecebeInformativo` VALUES (12, 2, 3);
INSERT INTO `RecebeInformativo` VALUES (13, 3, 3);
INSERT INTO `RecebeInformativo` VALUES (14, 5, 3);
INSERT INTO `RecebeInformativo` VALUES (15, 6, 3);
INSERT INTO `RecebeInformativo` VALUES (21, 1, 4);
INSERT INTO `RecebeInformativo` VALUES (24, 2, 5);
INSERT INTO `RecebeInformativo` VALUES (25, 3, 5);
INSERT INTO `RecebeInformativo` VALUES (26, 4, 5);
INSERT INTO `RecebeInformativo` VALUES (27, 5, 5);
INSERT INTO `RecebeInformativo` VALUES (28, 6, 5);

SET FOREIGN_KEY_CHECKS = 1;
