/*
 Navicat Premium Data Transfer

 Source Server         : 魔扣测试数据库服务器
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : 47.104.107.246:3306
 Source Schema         : unit7website

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 28/08/2018 01:20:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `AdminID` int(11) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `AdminPwd` varchar(64) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `AdminType` smallint(6) NULL DEFAULT 0,
  `LastLoginTime` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '暂无登录',
  PRIMARY KEY (`AdminID`) USING BTREE,
  INDEX `AdminUID`(`AdminName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (3, 'admin', '123456', 2, '2016-7-4 9:27:48');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `NewsID` int(11) NOT NULL AUTO_INCREMENT,
  `NewsTitle` varchar(60) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `NewsContent` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `NewsTime` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `AdminName` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`NewsID`) USING BTREE,
  INDEX `NewsID`(`NewsID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '无人驾驶竞赛愈演愈烈 英伟达靠两大平台独占鳌头', '在美国密歇根州诺维（Novi）举行的2018年无人驾驶汽车大会（Autonomous Vehicle 2018），英伟达是首批出席的公司之一，也再次确认了它在无人驾驶领域的领导者地位', '2018-08-28 09:58', 'admin');
INSERT INTO `news` VALUES (2, '计算30年-国家863计划计算机主题30年回顾', '中国科技网讯（记者 马爱平）2017年1月22日由科学出版社出版的《计算30年-国家863计划计算机主题30年回顾》在北京举行新书发布会。参加发布会的有：原科技部部长朱丽兰、原国家外专局局长马俊如、原科技部高新司司长冀复生、中国工程院院士汪成为、李国杰、高文；中国科学院院士梅宏等863计划计算机主题历届专家组的部分专家和科技部高新司、科技部高技术中心的领导', '2018-10-10 09:59', 'admin');
INSERT INTO `news` VALUES (3, '《C程序设计(第五版)》新书发布会在京举行', '正2017年8月30日上午,《C程序设计》发行1400万册纪念会暨《C程序设计(第五版)》新书发布会在清华大学学研大厦隆重举行。纪念会暨发布会由清华大学出版社卢先和副社长主持。清华大学出版社宗俊峰社长致欢迎辞并与谭浩强教授共同为《C程序设计(第五版)》新书揭幕。中国科学院张钹院士,全国高等院校计算机基础教', '2018-10-10 09:59', 'test');
INSERT INTO `news` VALUES (4, '利用Python进行数据分析（原书第2版）', '阅读本书可以获得关于在Python下操作、处理、清洗、规整数据集的完整说明。本书第2版针对Python 3.6进行了更新，并增加了实际案例向你展示如何有效地解决一系列数据分析问题。你将在阅读过程中学习到新版本的pandas、NumPy、IPython和Jupyter', '2018-10-10 10:00', 'test');
INSERT INTO `news` VALUES (5, '李彦宏：AI模仿人脑是走不通的', '人工智能（Artificial Intelligence）并不是一个新的概念，它实际上诞生于 20 世纪 50 年代。作为一门前沿交叉学科，人工智能一直没有统一的定义，而大众对人工智能也有诸多误解。在今日（8 月 23 日）上午举行的中国国际智能产业博览会上，百度董事长李彦宏就谈到了其中的三个误解：\r\n\r\n第一个误解，人工智能应该长得像人。如果要让机器去替代人的体力劳动，那我们在工业化时代已经解决了这个问题，（现在）我们要解决的是让机器能够像人一样思考。\r\n\r\n第二个误解，人工智能应该像人一样思考。现在有很多的研究是研究人脑怎么工作，我认为这条路也走不通。人工智能不是模仿人脑的工作原理，而是要用机器的方式实现人脑能够实现的价值或者作用。\r\n\r\n第三个误解，人工智能威胁论。很多人担心有一天人类会被机器所控制，完全没有必要。AGI（通用人工智能）离我们还非常远，我们更应该担心技术成熟得不够快，会出问题。', '2018-10-10 10:01', 'admin');
INSERT INTO `news` VALUES (6, 'Dota2团战击溃AI；不如跳舞！伯克利最新人体动作迁移研究', '8 月 24 日早间，OpenAI 的人工智能在 DOTA2 国际邀请赛(Dota 2 at The International)中输给了人类职业玩家。这是人类职业玩家与 OpenAI 机器人三场对决中的第一场，另外两轮比赛将在接下来的两天内举行，每天都有不同的人类团队出赛。（via 网易智能）', '2018-10-10 10:05', 'admin');
INSERT INTO `news` VALUES (7, '新的测试新闻1', '测试新闻111111', '2018-08-13 01:40', 'admin');
INSERT INTO `news` VALUES (8, '测试新闻2', '测试2', '2018-08-16 22:58', 'admin');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `NoticeId` int(11) NOT NULL,
  `NoticeTitle` varchar(60) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `NoticeContent` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `NoticeTime` varchar(50) CHARACTER SET gbk COLLATE gbk_bin NOT NULL,
  `AdminName` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`NoticeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '机房搬迁，网站停机公告', '   我司定于2015年8月29日星期六上午9:30进行联通IDC机房搬迁到厦门街IDC机房的工作，届时会导致断网。建议在搬迁之前贵方到站前IDC机房将托管的设备电源关闭，如无法到机房的请远程关机（如未关闭机器电源搬迁后出现的问题与我方无关）。搬迁时间大致为一天，对于搬迁给您带来的不便表示歉意。感谢您的配合！', '2016-08-26 10:53', 'mr');
INSERT INTO `notice` VALUES (2, '中秋国庆放假通知', '    值中秋节来临之际，根据国务院办公厅公布的《2015年节假日安排的通知》的有关规定，结合我公司实际情况，现将2015年中秋节国庆节放假事项通知如下：\r\n \r\n    因业务发展需要，公司将搬迁至通潭富苑，公司决定从9月26日-10月25日开始放假准备新家装修。\r\n \r\n    因公司搬迁期间给您带来的不便，我们深表歉意！我司将以此次搬迁为一个新的起点，进一步为您提供更优质的产品和服务，与您共同发展，并再次感谢您长期以来给予本公司的支持与合作！  \r\n\r\n    特此通知！ \r\n\r\n\r\n                                                                                                                                2015年9月22日', '2016-08-26 10:57', 'mr');
INSERT INTO `notice` VALUES (3, '诚聘网站设计师', '岗位要求：#\r\n \r\n1.负责项目的创意决策，把握创意大方向；#\r\n2.分析客户资料，理解客户意图和客户行业方向，与客户进行创意沟通，演示概念和想法，确认设计方向并获得认可；#\r\n3.保证内容、视觉、交互、活动等创意产出的质量； #\r\n4.与策划及技术团队沟通，提供明确的设计稿件和执行的方向；#\r\n \r\n任职资格：#\r\n \r\n1.艺术设计相关专业本科以上学历，有良好的美术基础，从业3年以上（能力优秀者可放宽）；#\r\n2.具备天马行空的创意能力、完美具体的表现功力，具备优秀美学素养、善长视觉表达，在设计方面有独到的创意和见解；#\r\n3.在本领域内具备丰富的知识和经验，对专业问题有敏锐的判断，能够熟练、有效的解决专业问题； #\r\n4.良好的语言沟通和客户谈判能力和统筹组织能力，人际沟通能力和分析判断能力，具有团队合作精神、项目统筹能力；#\r\n5.精通Adobe Photoshop、Adobe Illustrator等设计软件#', '2016-08-26 10:59', 'mr');
INSERT INTO `notice` VALUES (4, '明日科技--微信营销', '微信营销是网络经济时代企业营销模式的一种创新，是伴随着微信的火热而兴起的一种网络营销方式。微信不存在距离的限制，用户注册微信后，可与周围同样注册的“朋友”形成一种联系，用户订阅自己所需的信息，商家通过提供用户需要的信息，推广自己的产品，从而实现点对点的营销。#\r\n微信营销主要体现在以安卓系统、苹果系统的手机或者平板电脑中的移动客户端进行的区域定位营销，商家通过微信公众平台，结合微信会员卡管理系统展示商家微官网、微会员、微推送、微支付、微活动，已经形成了一种主流的线上线下微信互动营销方式。#\r\n       随着移动互联网时代的到来，营销也迎来了大变革时代，营销广告开始迈向崭新的“微营销”时代。#', '2016-08-26 11:01', 'mr');
INSERT INTO `notice` VALUES (5, '2016猴年春节放假通告！', '亲爱的客户及员工们：#\r\n\r\n首先，感谢新老客户多年来的支持与帮助，再次，感谢员工的辛勤与付出，新年将近，明日科技提前送上新春的祝福，愿您猴年争上游，幸福长长久!\r\n #\r\n2016年春节即将到来，根据国务院关于法定节假日的规定和明日科技工作实际情况，现将2016年春节放假的有关事项通知如下：\r\n #\r\n一、单位放假时间为#\r\n（1）技术人员2016年2月6日到2016年2月14日，2016年2月15日正常上班；#\r\n（2）业务人员2016年2月6日到2016年2月22日，2016年2月23日正常上班。#', '2016-08-26 11:02', 'mr');

SET FOREIGN_KEY_CHECKS = 1;
