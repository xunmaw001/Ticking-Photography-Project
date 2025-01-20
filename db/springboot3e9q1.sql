-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot3e9q1
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614309000044 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (71,'2021-02-26 02:54:01',1,1,'提问1','回复1',1),(72,'2021-02-26 02:54:01',2,2,'提问2','回复2',2),(73,'2021-02-26 02:54:01',3,3,'提问3','回复3',3),(74,'2021-02-26 02:54:01',4,4,'提问4','回复4',4),(75,'2021-02-26 02:54:01',5,5,'提问5','回复5',5),(76,'2021-02-26 02:54:01',6,6,'提问6','回复6',6),(1614308824719,'2021-02-26 03:07:03',1614308629795,NULL,'客服交流测试',NULL,0),(1614309000043,'2021-02-26 03:09:59',1614308629795,1,NULL,'shoudao',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot3e9q1/upload/1614308301237.jpeg'),(2,'picture2','http://localhost:8080/springboot3e9q1/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot3e9q1/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusssheyingfuwu`
--

DROP TABLE IF EXISTS `discusssheyingfuwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusssheyingfuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614308731172 DEFAULT CHARSET=utf8 COMMENT='摄影服务评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusssheyingfuwu`
--

LOCK TABLES `discusssheyingfuwu` WRITE;
/*!40000 ALTER TABLE `discusssheyingfuwu` DISABLE KEYS */;
INSERT INTO `discusssheyingfuwu` VALUES (121,'2021-02-26 02:54:01',1,1,'评论内容1','回复内容1'),(122,'2021-02-26 02:54:01',2,2,'评论内容2','回复内容2'),(123,'2021-02-26 02:54:01',3,3,'评论内容3','回复内容3'),(124,'2021-02-26 02:54:01',4,4,'评论内容4','回复内容4'),(125,'2021-02-26 02:54:01',5,5,'评论内容5','回复内容5'),(126,'2021-02-26 02:54:01',6,6,'评论内容6','回复内容6'),(1614308731171,'2021-02-26 03:05:30',1614308598112,1614308629795,'看起来技术不错',NULL);
/*!40000 ALTER TABLE `discusssheyingfuwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusssheyingzuopin`
--

DROP TABLE IF EXISTS `discusssheyingzuopin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusssheyingzuopin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614308705455 DEFAULT CHARSET=utf8 COMMENT='摄影作品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusssheyingzuopin`
--

LOCK TABLES `discusssheyingzuopin` WRITE;
/*!40000 ALTER TABLE `discusssheyingzuopin` DISABLE KEYS */;
INSERT INTO `discusssheyingzuopin` VALUES (111,'2021-02-26 02:54:01',1,1,'评论内容1','回复内容1'),(112,'2021-02-26 02:54:01',2,2,'评论内容2','回复内容2'),(113,'2021-02-26 02:54:01',3,3,'评论内容3','回复内容3'),(114,'2021-02-26 02:54:01',4,4,'评论内容4','回复内容4'),(115,'2021-02-26 02:54:01',5,5,'评论内容5','回复内容5'),(116,'2021-02-26 02:54:01',6,6,'评论内容6','回复内容6'),(1614308705454,'2021-02-26 03:05:04',1614308546431,1614308629795,'好可爱的小猫','测试');
/*!40000 ALTER TABLE `discusssheyingzuopin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614309069795 DEFAULT CHARSET=utf8 COMMENT='摄影论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1614308864048,'2021-02-26 03:07:43','摄影帖子','<p>测试测试</p>',0,1614308629795,'01','开放'),(1614309069794,'2021-02-26 03:11:09',NULL,'测试评论',1614308864048,1614308437868,'001',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614308373579 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-02-26 02:54:01','系统公告测试','公告内容测试','http://localhost:8080/springboot3e9q1/upload/1614308317454.jpeg','<p>编辑器可上传图文<img src=\"http://localhost:8080/springboot3e9q1/upload/1614308340039.jpeg\"></p>'),(1614308373578,'2021-02-26 02:59:33','公告测试2','测试','http://localhost:8080/springboot3e9q1/upload/1614308358700.jpg','<p>编辑器可上传图文<img src=\"http://localhost:8080/springboot3e9q1/upload/1614308370676.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sheyingfuwu`
--

DROP TABLE IF EXISTS `sheyingfuwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sheyingfuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sheyingshizhanghao` varchar(200) DEFAULT NULL COMMENT '摄影师账号',
  `sheyingshixingming` varchar(200) DEFAULT NULL COMMENT '摄影师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `sheyingnianxian` varchar(200) DEFAULT NULL COMMENT '摄影年限',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `daibiaozuopin` varchar(200) DEFAULT NULL COMMENT '代表作品',
  `shoufeileixing` varchar(200) DEFAULT NULL COMMENT '收费类型',
  `shoufeijiage` int(11) DEFAULT NULL COMMENT '收费价格',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614308598113 DEFAULT CHARSET=utf8 COMMENT='摄影服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sheyingfuwu`
--

LOCK TABLES `sheyingfuwu` WRITE;
/*!40000 ALTER TABLE `sheyingfuwu` DISABLE KEYS */;
INSERT INTO `sheyingfuwu` VALUES (1614308598112,'2021-02-26 03:03:17','001','李摄影','男','35','5','13800000000','138@qq.com','http://localhost:8080/springboot3e9q1/upload/1614308479437.jpg','http://localhost:8080/springboot3e9q1/upload/1614308497006.jpg','按小时收费',200,1,0);
/*!40000 ALTER TABLE `sheyingfuwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sheyingshi`
--

DROP TABLE IF EXISTS `sheyingshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sheyingshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sheyingshizhanghao` varchar(200) NOT NULL COMMENT '摄影师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `sheyingshixingming` varchar(200) NOT NULL COMMENT '摄影师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `sheyingnianxian` int(11) DEFAULT NULL COMMENT '摄影年限',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `daibiaozuopin` varchar(200) DEFAULT NULL COMMENT '代表作品',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sheyingshizhanghao` (`sheyingshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614308437869 DEFAULT CHARSET=utf8 COMMENT='摄影师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sheyingshi`
--

LOCK TABLES `sheyingshi` WRITE;
/*!40000 ALTER TABLE `sheyingshi` DISABLE KEYS */;
INSERT INTO `sheyingshi` VALUES (1614308437868,'2021-02-26 03:00:37','001','001','李摄影','男',35,5,'13800000000','138@qq.com','http://localhost:8080/springboot3e9q1/upload/1614308479437.jpg','http://localhost:8080/springboot3e9q1/upload/1614308497006.jpg');
/*!40000 ALTER TABLE `sheyingshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sheyingzuopin`
--

DROP TABLE IF EXISTS `sheyingzuopin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sheyingzuopin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuopinbiaoti` varchar(200) DEFAULT NULL COMMENT '作品标题',
  `sheyingshizhanghao` varchar(200) DEFAULT NULL COMMENT '摄影师账号',
  `sheyingshixingming` varchar(200) DEFAULT NULL COMMENT '摄影师姓名',
  `zuopinyilan` varchar(200) DEFAULT NULL COMMENT '作品一览',
  `zuopinjieshao` longtext COMMENT '作品介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614308584173 DEFAULT CHARSET=utf8 COMMENT='摄影作品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sheyingzuopin`
--

LOCK TABLES `sheyingzuopin` WRITE;
/*!40000 ALTER TABLE `sheyingzuopin` DISABLE KEYS */;
INSERT INTO `sheyingzuopin` VALUES (1614308546431,'2021-02-26 03:02:25','慵懒小猫','001','李摄影','http://localhost:8080/springboot3e9q1/upload/1614308517291.jpg','<p>猫猫懒懒的<img src=\"http://localhost:8080/springboot3e9q1/upload/1614308544481.jpg\"></p><p><br></p>',1,0),(1614308584172,'2021-02-26 03:03:03','花海','001','李摄影','http://localhost:8080/springboot3e9q1/upload/1614308563846.jpg','<p>花海花的海洋<img src=\"http://localhost:8080/springboot3e9q1/upload/1614308581598.jpg\"></p>',0,0);
/*!40000 ALTER TABLE `sheyingzuopin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoufeileixing`
--

DROP TABLE IF EXISTS `shoufeileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoufeileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoufeileixing` varchar(200) DEFAULT NULL COMMENT '收费类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614308263191 DEFAULT CHARSET=utf8 COMMENT='收费类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoufeileixing`
--

LOCK TABLES `shoufeileixing` WRITE;
/*!40000 ALTER TABLE `shoufeileixing` DISABLE KEYS */;
INSERT INTO `shoufeileixing` VALUES (1614308254582,'2021-02-26 02:57:34','按小时收费'),(1614308263190,'2021-02-26 02:57:43','按天数收费');
/*!40000 ALTER TABLE `shoufeileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614308721952 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614308694643,'2021-02-26 03:04:53',1614308629795,1614308546431,'sheyingzuopin','慵懒小猫','http://localhost:8080/springboot3e9q1/upload/1614308517291.jpg'),(1614308721951,'2021-02-26 03:05:21',1614308629795,1614308598112,'sheyingfuwu','李摄影','http://localhost:8080/springboot3e9q1/upload/1614308497006.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','e152pq9oppziwm3fkw2j3jtvbgkcs0ry','2021-02-26 02:56:50','2021-02-25 20:09:31'),(2,1614308437868,'001','sheyingshi','摄影师','l6rxpo9dtsoj3vfxnbhhm0ffypvhucsz','2021-02-26 03:00:59','2021-02-25 20:10:53'),(3,1614308629795,'01','yonghu','用户','7lwev8baa2r77is05y5zo6nk5wmifmec','2021-02-26 03:04:02','2021-02-25 20:04:02');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-26 02:54:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614308629796 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (1614308629795,'2021-02-26 03:03:49','01','01','王小姐','女','13800000000','138@qq.com','http://localhost:8080/springboot3e9q1/upload/1614308661388.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuexinxi`
--

DROP TABLE IF EXISTS `yuyuexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sheyingshizhanghao` varchar(200) DEFAULT NULL COMMENT '摄影师账号',
  `sheyingshixingming` varchar(200) DEFAULT NULL COMMENT '摄影师姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shoufeileixing` varchar(200) DEFAULT NULL COMMENT '收费类型',
  `shoufeijiage` int(11) DEFAULT NULL COMMENT '收费价格',
  `paisheshizhang` int(11) DEFAULT NULL COMMENT '拍摄时长',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `yuyuedidian` varchar(200) DEFAULT NULL COMMENT '预约地点',
  `beizhu` longtext COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614308802823 DEFAULT CHARSET=utf8 COMMENT='预约信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuexinxi`
--

LOCK TABLES `yuyuexinxi` WRITE;
/*!40000 ALTER TABLE `yuyuexinxi` DISABLE KEYS */;
INSERT INTO `yuyuexinxi` VALUES (1614308802822,'2021-02-26 03:06:42','01','王小姐','13800000000','001','李摄影','13800000000','按小时收费',200,5,'1000','2021-02-28 00:05:42','某某风景区，主要拍人物和风景',NULL,'是','很高兴为您服务','已支付');
/*!40000 ALTER TABLE `yuyuexinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-27  9:35:05
