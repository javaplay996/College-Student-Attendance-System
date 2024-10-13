/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - daxueshengkaoqin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`daxueshengkaoqin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `daxueshengkaoqin`;

/*Table structure for table `banji` */

DROP TABLE IF EXISTS `banji`;

CREATE TABLE `banji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(200) DEFAULT NULL COMMENT '老师',
  `banji_uuid_number` varchar(200) DEFAULT NULL COMMENT '班级编号',
  `nianji_types` int(11) DEFAULT NULL COMMENT '年级 Search111 ',
  `banji_name` varchar(200) DEFAULT NULL COMMENT '班级名称  Search111 ',
  `banji_address` varchar(200) DEFAULT NULL COMMENT '班级位置',
  `banji_content` longtext COMMENT '班级备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='班级';

/*Data for the table `banji` */

insert  into `banji`(`id`,`laoshi_id`,`banji_uuid_number`,`nianji_types`,`banji_name`,`banji_address`,`banji_content`,`insert_time`,`create_time`) values (1,3,'1684732395359',1,'班级名称1','班级位置1','班级备注1','2023-05-22 13:13:15','2023-05-22 13:13:15'),(2,3,'1684732395300',2,'班级名称2','班级位置2','班级备注2','2023-05-22 13:13:15','2023-05-22 13:13:15'),(3,1,'1684732395374',4,'班级名称3','班级位置3','班级备注3','2023-05-22 13:13:15','2023-05-22 13:13:15'),(4,1,'1684732395308',3,'班级名称4','班级位置4','班级备注4','2023-05-22 13:13:15','2023-05-22 13:13:15'),(5,1,'1684732395340',4,'班级名称5','班级位置5','班级备注5','2023-05-22 13:13:15','2023-05-22 13:13:15'),(6,3,'1684732395337',2,'班级名称6','班级位置6','班级备注6','2023-05-22 13:13:15','2023-05-22 13:13:15'),(7,3,'1684732395313',3,'班级名称7','班级位置7','班级备注7','2023-05-22 13:13:15','2023-05-22 13:13:15'),(8,2,'1684732395302',4,'班级名称8','班级位置8','班级备注8','2023-05-22 13:13:15','2023-05-22 13:13:15'),(9,1,'1684732395306',1,'班级名称9','班级位置9','班级备注9','2023-05-22 13:13:15','2023-05-22 13:13:15'),(10,1,'1684732395294',2,'班级名称10','班级位置10','班级备注10','2023-05-22 13:13:15','2023-05-22 13:13:15'),(11,1,'1684732395325',4,'班级名称11','班级位置11','班级备注11','2023-05-22 13:13:15','2023-05-22 13:13:15'),(12,2,'1684732395285',3,'班级名称12','班级位置12','班级备注12','2023-05-22 13:13:15','2023-05-22 13:13:15'),(13,3,'1684732395325',3,'班级名称13','班级位置13','班级备注13','2023-05-22 13:13:15','2023-05-22 13:13:15'),(14,1,'1684732395349',4,'班级名称14','班级位置14','<p>班级备注14广东省归属感</p>','2023-05-22 13:13:15','2023-05-22 13:13:15'),(15,2,'1684738576181',1,'班级1111','位置i1211','<p>固定死单双杠事故</p>','2023-05-22 14:56:27','2023-05-22 14:56:27');

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `chengji_uuid_number` varchar(200) DEFAULT NULL COMMENT '成绩编号',
  `chengji_name` varchar(200) DEFAULT NULL COMMENT '成绩标题  Search111 ',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `chengji_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `chengji_fenshu` decimal(10,2) DEFAULT NULL COMMENT '分数',
  `chengji_types` int(11) DEFAULT NULL COMMENT '成绩类型 Search111',
  `chengji_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`laoshi_id`,`xuesheng_id`,`chengji_uuid_number`,`chengji_name`,`kemu_types`,`chengji_file`,`chengji_fenshu`,`chengji_types`,`chengji_content`,`insert_time`,`create_time`) values (1,3,1,'1684732395369','成绩标题1',2,'upload/file.rar','242.25',2,'备注1','2023-05-22 13:13:15','2023-05-22 13:13:15'),(2,3,1,'1684732395356','成绩标题2',1,'upload/file.rar','286.35',3,'备注2','2023-05-22 13:13:15','2023-05-22 13:13:15'),(3,3,2,'1684732395299','成绩标题3',3,'upload/file.rar','605.12',2,'备注3','2023-05-22 13:13:15','2023-05-22 13:13:15'),(4,3,1,'1684732395379','成绩标题4',2,'upload/file.rar','598.32',2,'备注4','2023-05-22 13:13:15','2023-05-22 13:13:15'),(5,3,1,'1684732395336','成绩标题5',1,'upload/file.rar','536.93',1,'备注5','2023-05-22 13:13:15','2023-05-22 13:13:15'),(6,2,2,'1684732395320','成绩标题6',3,'upload/file.rar','907.34',2,'备注6','2023-05-22 13:13:15','2023-05-22 13:13:15'),(7,3,2,'1684732395352','成绩标题7',2,'upload/file.rar','293.45',2,'备注7','2023-05-22 13:13:15','2023-05-22 13:13:15'),(8,2,3,'1684732395377','成绩标题8',2,'upload/file.rar','446.13',3,'备注8','2023-05-22 13:13:15','2023-05-22 13:13:15'),(9,3,3,'1684732395317','成绩标题9',2,'upload/file.rar','945.07',1,'备注9','2023-05-22 13:13:15','2023-05-22 13:13:15'),(10,1,3,'1684732395341','成绩标题10',2,'upload/file.rar','108.09',2,'备注10','2023-05-22 13:13:15','2023-05-22 13:13:15'),(11,1,1,'1684732395328','成绩标题11',3,'upload/file.rar','394.77',1,'备注11','2023-05-22 13:13:15','2023-05-22 13:13:15'),(12,1,1,'1684732395342','成绩标题12',2,'upload/file.rar','1.78',2,'备注12','2023-05-22 13:13:15','2023-05-22 13:13:15'),(13,1,3,'1684732395357','成绩标题13',2,'upload/file.rar','852.29',3,'备注13','2023-05-22 13:13:15','2023-05-22 13:13:15'),(14,2,3,'1684732395338','成绩标题14',1,'upload/file.rar','973.32',1,'备注14','2023-05-22 13:13:15','2023-05-22 13:13:15'),(15,1,3,'1684738612781','标日111',1,'/upload/1684738622341.doc','50.00',3,'<p>挂号第三个第三个</p>','2023-05-22 14:57:05','2023-05-22 14:57:05');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-22 13:12:11'),(2,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-22 13:12:11'),(3,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-22 13:12:12'),(4,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-22 13:12:12'),(5,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-05-22 13:12:12'),(6,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-05-22 13:12:12'),(7,'nianji_types','年级',1,'大一',NULL,NULL,'2023-05-22 13:12:12'),(8,'nianji_types','年级',2,'大二',NULL,NULL,'2023-05-22 13:12:12'),(9,'nianji_types','年级',3,'大三',NULL,NULL,'2023-05-22 13:12:12'),(10,'nianji_types','年级',4,'大四',NULL,NULL,'2023-05-22 13:12:12'),(11,'xuesheng_kaoqin_types','学生考勤类型',1,'日常考勤',NULL,NULL,'2023-05-22 13:12:12'),(12,'xuesheng_kaoqin_types','学生考勤类型',2,'考勤类型2',NULL,NULL,'2023-05-22 13:12:12'),(13,'xuesheng_kaoqin_list_types','打卡状态',1,'未打卡',NULL,NULL,'2023-05-22 13:12:12'),(14,'xuesheng_kaoqin_list_types','打卡状态',2,'正常打卡',NULL,NULL,'2023-05-22 13:12:12'),(15,'xuesheng_kaoqin_list_types','打卡状态',3,'迟到',NULL,NULL,'2023-05-22 13:12:12'),(16,'kemu_types','科目',1,'语文',NULL,NULL,'2023-05-22 13:12:12'),(17,'kemu_types','科目',2,'数学',NULL,NULL,'2023-05-22 13:12:12'),(18,'kemu_types','科目',3,'英语',NULL,NULL,'2023-05-22 13:12:12'),(19,'chengji_types','成绩类型',1,'好',NULL,NULL,'2023-05-22 13:12:12'),(20,'chengji_types','成绩类型',2,'一般',NULL,NULL,'2023-05-22 13:12:12'),(21,'chengji_types','成绩类型',3,'差',NULL,NULL,'2023-05-22 13:12:12'),(22,'xueshengqingjia_types','请假类型',1,'生病',NULL,NULL,'2023-05-22 13:12:12'),(23,'xueshengqingjia_types','请假类型',2,'有事',NULL,NULL,'2023-05-22 13:12:12'),(24,'xueshengqingjia_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-05-22 13:12:12'),(25,'xueshengqingjia_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-05-22 13:12:12'),(26,'xueshengqingjia_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-05-22 13:12:12'),(27,'gonggao_types','公告类型',3,'公告类型3',NULL,'','2023-05-22 15:07:51');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-05-22 13:13:15','公告详情1','2023-05-22 13:13:15'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-05-22 13:13:15','公告详情2','2023-05-22 13:13:15'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-05-22 13:13:15','公告详情3','2023-05-22 13:13:15'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-05-22 13:13:15','公告详情4','2023-05-22 13:13:15'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-05-22 13:13:15','公告详情5','2023-05-22 13:13:15'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-05-22 13:13:15','公告详情6','2023-05-22 13:13:15'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-05-22 13:13:15','公告详情7','2023-05-22 13:13:15'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-05-22 13:13:15','公告详情8','2023-05-22 13:13:15'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-05-22 13:13:15','公告详情9','2023-05-22 13:13:15'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-05-22 13:13:15','公告详情10','2023-05-22 13:13:15'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-05-22 13:13:15','公告详情11','2023-05-22 13:13:15'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-05-22 13:13:15','公告详情12','2023-05-22 13:13:15'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-05-22 13:13:15','公告详情13','2023-05-22 13:13:15'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-05-22 13:13:15','公告详情14','2023-05-22 13:13:15');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 Search111 ',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '老师邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_uuid_number`,`laoshi_name`,`laoshi_phone`,`laoshi_id_number`,`laoshi_photo`,`sex_types`,`laoshi_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','1684732395315','老师姓名1','17703786901','410224199010102001','upload/laoshi1.jpg',2,'1@qq.com',1,'2023-05-22 13:13:15'),(2,'a2','123456','1684732395356','老师姓名2','17703786902','410224199010102002','upload/laoshi2.jpg',1,'2@qq.com',1,'2023-05-22 13:13:15'),(3,'a3','123456','1684732395384','老师姓名3','17703786903','410224199010102003','upload/laoshi3.jpg',2,'3@qq.com',1,'2023-05-22 13:13:15');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','wruwhd4p15xwf8fs018v7cqe4itcm6ha','2023-05-22 13:15:57','2023-05-22 16:07:21'),(2,1,'a1','xuesheng','学生','915qcev2ckl9fwhc4ty28qyz6oi10szt','2023-05-22 13:41:42','2023-05-22 16:04:19'),(3,1,'a1','laoshi','老师','n6fzzjnqa7bpyqo01p32b06lkumtfes7','2023-05-22 13:44:59','2023-05-22 16:05:36'),(4,4,'a5','xuesheng','学生','7lds1wain4c3gj2pw5n7qirv949csdx7','2023-05-22 14:55:06','2023-05-22 15:55:07'),(5,2,'a2','xuesheng','学生','sx924v3iwbbfmw00z6elcxtdi386uf87','2023-05-22 14:55:26','2023-05-22 16:04:37'),(6,2,'a2','laoshi','老师','c66vmuijbjfqg61nunzli52hin8wspfw','2023-05-22 14:56:03','2023-05-22 15:56:04'),(7,5,'a6','xuesheng','学生','8mbqsh1yp8c4apd4zq9o3iylsxbgivca','2023-05-22 15:03:57','2023-05-22 16:03:57');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-22 13:12:11');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `banji_id` int(200) DEFAULT NULL COMMENT '班级',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号 Search111 ',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xuesheng_email` varchar(200) DEFAULT NULL COMMENT '学生邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`banji_id`,`username`,`password`,`xuesheng_uuid_number`,`xuesheng_name`,`xuesheng_phone`,`xuesheng_id_number`,`xuesheng_photo`,`sex_types`,`xuesheng_email`,`jinyong_types`,`create_time`) values (1,1,'a1','123456','1684732395352','学生姓名1','17703786901','410224199010102001','upload/xuesheng1.jpg',2,'1@qq.com',1,'2023-05-22 13:13:15'),(2,2,'a2','123456','1684732395364','学生姓名2','17703786902','410224199010102002','upload/xuesheng2.jpg',1,'2@qq.com',1,'2023-05-22 13:13:15'),(3,3,'a3','123456','1684732395348','学生姓名3','17703786903','410224199010102003','upload/xuesheng3.jpg',1,'3@qq.com',1,'2023-05-22 13:13:15'),(4,2,'a5','123456','1684738500127','张安','17788889999','444222999999999991',NULL,NULL,'5@qq.com',1,'2023-05-22 14:55:00'),(5,1,'a6','123456','1684739032097','张96','17788899999','410224199610232005','/upload/1684739044426.jpg',2,'5@qq.com',1,'2023-05-22 15:03:52');

/*Table structure for table `xuesheng_kaoqin` */

DROP TABLE IF EXISTS `xuesheng_kaoqin`;

CREATE TABLE `xuesheng_kaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuesheng_kaoqin_uuid_number` varchar(200) DEFAULT NULL COMMENT '考勤唯一编号 Search111 ',
  `xuesheng_kaoqin_name` varchar(200) DEFAULT NULL COMMENT '考勤标题 Search111 ',
  `xuesheng_kaoqin_types` int(11) DEFAULT NULL COMMENT '学生考勤类型 Search111',
  `xuesheng_kaoqin_content` longtext COMMENT '考勤详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '考勤发起时间',
  `jiezhi_time` timestamp NULL DEFAULT NULL COMMENT '考勤截止时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='学生考勤';

/*Data for the table `xuesheng_kaoqin` */

insert  into `xuesheng_kaoqin`(`id`,`xuesheng_kaoqin_uuid_number`,`xuesheng_kaoqin_name`,`xuesheng_kaoqin_types`,`xuesheng_kaoqin_content`,`insert_time`,`jiezhi_time`,`create_time`) values (1,'1684732395343','考勤标题1',1,'考勤详情1','2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(2,'1684732395316','考勤标题2',2,'考勤详情2','2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(3,'1684732395404','考勤标题3',1,'考勤详情3','2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(4,'1684732395328','考勤标题4',1,'考勤详情4','2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(5,'1684732395350','考勤标题5',1,'考勤详情5','2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(6,'1684732395394','考勤标题6',1,'考勤详情6','2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(7,'1684732395366','考勤标题7',1,'考勤详情7','2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(8,'1684732395329','考勤标题8',2,'考勤详情8','2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(9,'1684732395394','考勤标题9',1,'考勤详情9','2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(10,'1684732395409','考勤标题10',1,'考勤详情10','2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(11,'1684732395393','考勤标题11',1,'考勤详情11','2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(12,'1684732395399','考勤标题12',1,'考勤详情12','2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(13,'1684732395373','考勤标题13',2,'考勤详情13','2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(14,'1684732395365','考勤标题14',2,'考勤详情14','2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(15,'1684739171300','考勤2222',1,'<p>广东省广东省固定事故</p>','2023-05-22 15:06:20','2023-05-25 00:00:00','2023-05-22 15:06:20');

/*Table structure for table `xuesheng_kaoqin_list` */

DROP TABLE IF EXISTS `xuesheng_kaoqin_list`;

CREATE TABLE `xuesheng_kaoqin_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `xuesheng_kaoqin_id` int(11) DEFAULT NULL COMMENT '考勤',
  `xuesheng_kaoqin_list_types` int(11) DEFAULT NULL COMMENT '打卡状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '打卡时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='学生考勤详情';

/*Data for the table `xuesheng_kaoqin_list` */

insert  into `xuesheng_kaoqin_list`(`id`,`xuesheng_id`,`xuesheng_kaoqin_id`,`xuesheng_kaoqin_list_types`,`insert_time`,`update_time`,`create_time`) values (1,2,1,1,'2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(2,2,2,1,'2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(3,3,3,1,'2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(4,3,4,1,'2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(5,2,5,1,'2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(6,1,6,3,'2023-05-22 13:13:15','2023-05-22 15:03:04','2023-05-22 13:13:15'),(7,2,7,1,'2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(8,1,8,2,'2023-05-22 13:13:15','2023-05-22 15:02:09','2023-05-22 13:13:15'),(9,2,9,3,'2023-05-22 13:13:15','2023-05-22 15:04:46','2023-05-22 13:13:15'),(10,3,10,1,'2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(11,3,11,2,'2023-05-22 13:13:15','2023-05-22 14:55:55','2023-05-22 13:13:15'),(12,2,12,2,'2023-05-22 13:13:15','2023-05-22 14:55:44','2023-05-22 13:13:15'),(13,3,13,1,'2023-05-22 13:13:15','2023-05-22 13:13:15','2023-05-22 13:13:15'),(14,1,14,3,'2023-05-22 13:13:15','2023-05-22 13:42:41','2023-05-22 13:13:15'),(15,1,15,1,'2023-05-22 15:06:20',NULL,'2023-05-22 15:06:20'),(16,2,15,1,'2023-05-22 15:06:20',NULL,'2023-05-22 15:06:20'),(17,3,15,1,'2023-05-22 15:06:20',NULL,'2023-05-22 15:06:20'),(18,4,15,1,'2023-05-22 15:06:20',NULL,'2023-05-22 15:06:20'),(19,5,15,1,'2023-05-22 15:06:20',NULL,'2023-05-22 15:06:20');

/*Table structure for table `xueshengqingjia` */

DROP TABLE IF EXISTS `xueshengqingjia`;

CREATE TABLE `xueshengqingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuesheng_id` int(200) DEFAULT NULL COMMENT '学生',
  `xueshengqingjia_name` varchar(200) DEFAULT NULL COMMENT '请假标题 Search111 ',
  `xueshengqingjia_text` longtext COMMENT '请假缘由',
  `xueshengqingjia_types` int(11) DEFAULT NULL COMMENT '请假类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `xueshengqingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `xueshengqingjia_number` int(200) DEFAULT NULL COMMENT '请假天数',
  `xueshengqingjia_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `xueshengqingjia_yesno_text` longtext COMMENT '处理意见',
  `xueshengqingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='学生请假';

/*Data for the table `xueshengqingjia` */

insert  into `xueshengqingjia`(`id`,`xuesheng_id`,`xueshengqingjia_name`,`xueshengqingjia_text`,`xueshengqingjia_types`,`insert_time`,`xueshengqingjia_time`,`xueshengqingjia_number`,`xueshengqingjia_yesno_types`,`xueshengqingjia_yesno_text`,`xueshengqingjia_shenhe_time`,`create_time`) values (1,2,'请假标题1','请假缘由1',2,'2023-05-22 13:13:15','2023-05-22 13:13:15',2,2,'同意','2023-05-22 13:13:15','2023-05-22 13:13:15'),(2,2,'请假标题2','请假缘由2',2,'2023-05-22 13:13:15','2023-05-22 13:13:15',1,2,'同意','2023-05-22 13:13:15','2023-05-22 13:13:15'),(3,2,'请假标题3','请假缘由3',2,'2023-05-22 13:13:15','2023-05-22 13:13:15',1,2,'同意','2023-05-22 13:13:15','2023-05-22 13:13:15'),(4,2,'请假标题4','请假缘由4',1,'2023-05-22 13:13:15','2023-05-22 13:13:15',2,2,'同意','2023-05-22 13:13:15','2023-05-22 13:13:15'),(5,3,'请假标题5','请假缘由5',1,'2023-05-22 13:13:15','2023-05-22 13:13:15',2,2,'同意','2023-05-22 13:13:15','2023-05-22 13:13:15'),(6,2,'请假标题6','请假缘由6',1,'2023-05-22 13:13:15','2023-05-22 13:13:15',2,2,'同意','2023-05-22 13:13:15','2023-05-22 13:13:15'),(7,3,'请假标题7','请假缘由7',1,'2023-05-22 13:13:15','2023-05-22 13:13:15',4,2,'同意','2023-05-22 13:13:15','2023-05-22 13:13:15'),(8,3,'请假标题8','请假缘由8',2,'2023-05-22 13:13:15','2023-05-22 13:13:15',4,2,'同意','2023-05-22 13:13:15','2023-05-22 13:13:15'),(9,3,'请假标题9','请假缘由9',1,'2023-05-22 13:13:15','2023-05-22 13:13:15',4,2,'同意','2023-05-22 13:13:15','2023-05-22 13:13:15'),(10,3,'请假标题10','请假缘由10',2,'2023-05-22 13:13:15','2023-05-22 13:13:15',3,2,'同意','2023-05-22 13:13:15','2023-05-22 13:13:15'),(11,1,'请假标题11','请假缘由11',1,'2023-05-22 13:13:15','2023-05-22 13:13:15',3,2,'同意','2023-05-22 13:13:15','2023-05-22 13:13:15'),(12,1,'请假标题12','请假缘由12',1,'2023-05-22 13:13:15','2023-05-22 13:13:15',3,2,'同意','2023-05-22 13:13:15','2023-05-22 13:13:15'),(13,2,'请假标题13','请假缘由13',1,'2023-05-22 13:13:15','2023-05-22 13:13:15',3,2,'同意','2023-05-22 13:13:15','2023-05-22 13:13:15'),(14,1,'请假标题14','请假缘由14',2,'2023-05-22 13:13:15','2023-05-22 13:13:15',2,2,'同意','2023-05-22 13:13:15','2023-05-22 13:13:15'),(15,2,'枪机22广东省广东省','缘由冻干粉十多个',1,'2023-05-22 15:05:06','2023-05-22 15:05:04',2,3,'给大哥大哥','2023-05-22 15:06:44','2023-05-22 15:05:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
