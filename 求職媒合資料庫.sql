-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: job
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apply_record`
--

DROP TABLE IF EXISTS `apply_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `apply_record` (
  `Student_ID` varchar(9) NOT NULL,
  `Job_ID` int(11) NOT NULL,
  `Apply_record_ID` int(11) NOT NULL,
  `Apply_date` date DEFAULT NULL,
  PRIMARY KEY (`Apply_record_ID`),
  KEY `Student_ID` (`Student_ID`),
  KEY `Job_ID` (`Job_ID`),
  CONSTRAINT `apply_record_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`student_id`),
  CONSTRAINT `apply_record_ibfk_2` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply_record`
--

LOCK TABLES `apply_record` WRITE;
/*!40000 ALTER TABLE `apply_record` DISABLE KEYS */;
INSERT INTO `apply_record` VALUES ('b03701153',1,1,'2018-01-31'),('b03701153',2,2,'2018-02-01'),('b03701153',3,3,'2018-02-02'),('b03701153',4,4,'2018-02-03'),('b03701153',5,5,'2018-02-04'),('b03701153',6,6,'2018-02-05'),('b03701153',7,7,'2018-02-06'),('b03701153',8,8,'2018-02-07'),('b01203041',1,9,'2018-02-08'),('b01203041',2,10,'2018-02-09'),('b01203041',3,11,'2018-02-10'),('b01203041',4,12,'2018-02-11'),('b01203041',5,13,'2018-02-12'),('b01203041',1,14,'2018-02-13'),('b01203041',2,15,'2018-02-14'),('b01203041',3,16,'2018-02-15'),('b03701176',1,17,'2018-02-16'),('b03701176',2,18,'2018-02-17'),('b03701176',3,19,'2018-02-18'),('b03701176',4,20,'2018-02-19'),('b03701176',5,21,'2018-02-20'),('b07402101',20,22,'2018-02-21'),('b07402102',21,23,'2018-02-22'),('b07402103',22,24,'2018-02-23'),('b07402104',23,25,'2018-02-24'),('b07402105',24,26,'2018-02-25'),('b07402106',25,27,'2018-02-26'),('b07402107',26,28,'2018-02-27'),('b07402108',27,29,'2018-02-28'),('b07402109',28,30,'2018-03-01');
/*!40000 ALTER TABLE `apply_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attached_file`
--

DROP TABLE IF EXISTS `attached_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `attached_file` (
  `Resume_ID` int(11) NOT NULL,
  `Attached_file_ID` int(11) NOT NULL,
  `Attached_file` varbinary(60000) DEFAULT NULL,
  PRIMARY KEY (`Attached_file_ID`),
  KEY `Resume_ID` (`Resume_ID`),
  CONSTRAINT `attached_file_ibfk_1` FOREIGN KEY (`Resume_ID`) REFERENCES `resumes` (`resume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attached_file`
--

LOCK TABLES `attached_file` WRITE;
/*!40000 ALTER TABLE `attached_file` DISABLE KEYS */;
INSERT INTO `attached_file` VALUES (1,1,NULL),(1,2,NULL),(1,3,NULL),(1,4,NULL),(1,5,NULL),(4,6,NULL),(4,7,NULL),(4,8,NULL),(4,9,NULL),(4,10,NULL),(7,11,NULL),(7,12,NULL),(7,13,NULL),(7,14,NULL),(7,15,NULL),(10,16,NULL),(10,17,NULL),(10,18,NULL),(10,19,NULL),(10,20,NULL),(13,21,NULL),(13,22,NULL),(13,23,NULL),(13,24,NULL),(13,25,NULL),(16,26,NULL),(16,27,NULL),(16,28,NULL),(16,29,NULL),(16,30,NULL);
/*!40000 ALTER TABLE `attached_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `company` (
  `Company_ID` int(11) NOT NULL,
  `Company_name` varchar(50) DEFAULT NULL,
  `Capital` int(11) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Fax` varchar(15) DEFAULT NULL,
  `URL` varchar(50) DEFAULT NULL,
  `Introduction` varchar(2000) DEFAULT NULL,
  `Staff_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`Company_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'意藍資訊股份有限公司',143100000,'04-33359898','04-25539045','http://www.eland.com.tw/','公司主要市場，包括高科技、電信、金融、零售等產業，擁有超高之覆蓋率，我們的客戶涵蓋大部分之產業龍頭企業。我們在產品創新上，普獲各界肯定，過去三年獲得包括經濟部雲端創新獎及數位時代創業之星首獎等獎項。',85),(2,'億錩通訊行',10000000,'04-9506730','04-25539045','http://www.dwtek-rov.com/','本公司已成立40餘年，秉持「品質穩定，客戶滿意」之經營理念提供服務。業務範圍涵蓋螺絲事業、精密加工事業以及海下設備研發事業。 為提供專業的螺絲扣件及機械零件訂製品服務，本公司於2008年陸續成立大雅與烏日營業處擴展內銷版圖，並設有品質檢驗實驗室及拉力實驗室，為通過ISO 9001:2008年版認證之優良公司。 ',25),(3,'向弘興業股份有限公司',5000000,'02-28332211','04-24392884','www.balances.com.tw','躍凌實業有限公司 創立於民國 85 年，主要從事儀器進口代理貿易商；擁有為數不少的客戶群。 本公司擁有優秀的經營團隊，秉持著『創新,服務,品質』的經營理念，追求企業永續經營及成長；除整體營運穩定外，獲利狀況也逐年提昇，是國內績優廠商之一。 ',11),(4,'天行健法律事務所',1200000,'03-4091899','04-97116384','https://www.easyapp.com.tw','我們是一家專精於行動裝置App開發設計的新創公司。 公司文化自由開放，提供開心舒適的工作環境是我們致力追求的目標 。 我們把員工當做公司最重要的資產，希望可以跟員工一起成長茁壯。',17),(5,'虹虹曜照明有限公司',3800000,'04-35024890','02-29086840','https://www.ebio-health.com/','醫博科技(eBio Technology)團隊深耕軟性感應電子技術與智能照護技術多年，致力開發「3D Intersoft © 智能全軟性感應系統」，提供於”生醫照護”與”智能家居”等各場域應用之解決方案。3D Intersoft 智能模組將有效提供各種臨床應用，涵蓋生理信號監測、褥瘡防治、智能睡眠與坐臥躺的人因力學應用。',10),(6,'躍凌實業有限公司',5000000,'06-3351068','02-87582944','www.biagent.com.tw','隨著世界地球村的形成，藉由跨國投資來取得低廉的勞動力、或是更接近客戶的全球運籌管理，乃至於多角貿易的需求已經是不得不然的選擇，但是企業主們常常苦於沒有一家優良的管理顧問公司可以提供完整的跨國投資規劃，並提醒其應注意的風險和各國法規、稅務上的差異，至使企業蒙受不必要的損失，或是浪費很多時間和精神在自己不專精的領域上。',30),(7,'煜展科技股份有限公司',3000000,'0800-002-272','02-08501533','http://www.beliallamp.com.tw/','虹曜照明有限公創立於民國94年 ， 公司從事專業燈具銷售/專業燈光規劃設計,未來公司將朝著專業照明品牌方向前進.。秉持著「專業積極服務態度，誠信負責」永續經營成長, 期望你一起攜手邁向嶄新未來，創造雙贏。',10),(8,'邑豐科技有限公司',2500000,'02-2331-3360','02-27667958','www.healthwomen.com.tw','本公司創建於1998年2月，為醫療保健產品進口商,主要客戶為900家以上醫療院所，藥局、有機通路，MOMO、東森、Yahoo、PCHOME、UDN購物平台 深獲醫療專業人士肯定與信任。(非傳直銷)公司網站www.healthwomen.com.tw 【赫而司】與許多國際知名食品原料大廠，例如:瑞士DSM、FRUTAROM；美國KEMIN、PHARMACHEM、BIOCELL、ORGANIC BY NATURE；荷蘭LIPID NUTRITION、De Wit；英國CRODA；日本築野、日本製粉、PFI, KANEKA、AJINOMOTO、SABINSA JAPAN、日本金秀；加拿大MILLENNIUM；法國NOVASTELLNaturex； 西班牙Natac；挪威Algea AS；愛爾蘭MARIGOT；以色列LIPOGEN，建立長期合作關係商標授權合約。',100),(9,'商智商務諮詢股份有限公司',5000000,'86-135-3151005','02-26546633','http://www.b2benchmark.com/html/product_detial.php','本公司為30年績優貿商專精國際採購三角貿易.',20),(10,'廖錦盈建築師事務所',7600000,'02-7706-4888','02-25468693','www.8-hi.com.tw','2004年，創辦人在台北西門町商圈開啟了旗下以火鍋為主的餐飲版圖，從社區型態的經營模式開始著手，不斷地鑽研味道，傾聽顧客的需求，秉持分享的初衷，將新鮮、美味的食材平實地提供給顧客，很快就贏得不少饕客的喜愛。',100),(11,'峰崧企業有限公司',10000000,'02-2376-6888','04-49506730','https://0226821905.tw66.com.tw/','良好的工作環境。 需要優秀人才來幫助公司提升更好的競爭力。',30),(12,'新光醫院_新光醫療財團法人新光吳火獅紀念醫院 ',NULL,'02-27052734','02-28355663','www.skh.org.tw','新光醫院於民國81年9月2日正式開幕啟用，目前設有39個醫療科、總病床數936床，以最先進的醫療設備與一流的醫護人員，提供最專業的診斷與治療，並通過衛生署醫院評鑑，成為醫學中心，實踐「取之社會用之於社會，以醫療回饋社會」的重要使命。',2300),(13,'錸勝企業股份有限公司 ',NULL,'02-87226200','03-4092441','http://www.lyssen.com.tw/tw/about.php','錸勝公司位於桃園縣龍潭鄉，生產汽車、卡車、遊艇精密儀錶，已通過ISO/TS16949品質認證專業之 工廠。',95),(14,'玉豐螺絲實業股份有限公司',1500000,'02-27251690','04-22112890','https://www.asian-archi.com.tw/company/105074/inde','設立【玉豐海洋科儀股份有限公司】，為全國第一家無人水下載具研發之優秀團隊，為擴大研發能量、培育海下設備系統操作與設計人才，達成國內海下產業供應鏈自主。 歡迎優秀之有志者加入本公司行列。以積極開發自有產品、提升公司競爭力。',24),(15,'經緯航太科技股份有限公司',450000000,'02-77278000','06-2909405','http://www.geosat.com.tw/','經緯航太科技股份有限公司(GEOSAT Aerospace & Technology Inc.)，成立於2004年。我們是亞洲唯一具備垂直整合上游(研發生產)、中游(操作服務)及下游(資料分析)無人機應用領域加值型服務的廠商。我們有160名專業人士，分別具備航太、測量、都市規劃、空間資訊等專業技能及系統整合、航拍操作及遙測影像資料處理技術。我們的緊急防災應變、治水防洪、水土保育、土地利用管制、自動化環境資源調查、快速更新電子地圖等經驗，結合海量資料分析能力，為我們贏得2015經濟部『國家創新獎』的肯定。',220),(16,'樂活眼鏡行',NULL,'02-27568824',NULL,'http://www.lohasglasses.com/Contact/Visitor/Contac','我們重視每一位員工，除了有良好工作環境、也提供學習及成長的空間，歡迎優秀的朋友一起加入樂活眼鏡行的工作行列。',NULL),(17,'康立安智能醫療設備有限公司',15000000,'02-26538091','02-33331129','https://tec.ntu.edu.tw/team/kneesup/','康立安智能醫療設備有限公司是一家充滿活力的新創公司， 核心團隊成員覆蓋了從物理治療、運動醫學專業人才，到硬體研發、軟體開發、 工業設計等產品研發人才，以及市場開發，銷售等關鍵能力。 致力於結合醫學與物聯網、可穿戴設備、大數據、人工智慧等技術，為骨科與運動醫學領域病患提供智能復建服務。',10),(18,'嘉鋼精密工業股份有限公司',303000000,' 02-27324492','86-03155038700','http://www.cysteel.com.tw/','本公司成立於民國 63 年，迄今已有 40年的歷史。由於流程改善、ERP資訊整合系統推動及生產技術的研發，公司內部已建立起良好的管理制度；由於技術的研發、品質制度的推動，民國 86 年 12 月正式取得 ISO 9002 經濟部商品檢驗局之品保制度證書，且於翌年順利取得國外認證機構 DNV 工廠品保制度證書，使本公司產品與製程達到一定的品質水準。民國 94 年7月7日取得ISO14000品保認證，並於同年8月15日取得TS16949品保認證，自此公司品質水準已達國際標準，並積極開拓國際市場，目前外銷比例已從20%成長至80%，年營業額達6.7億元，目前在大陸有兩家生產工廠，連同海外子公司合計，營業額已成長至十億元，103年5月26日股票已上櫃掛牌【股票代號：2067】，歡迎有志青年加入本公司陣營，共同開創嶄新的未來。',230),(19,'調和聯合會計師事務所',NULL,'02-25590251',NULL,'http://www.swtw.com.tw/','調和的主要業務在審計、帳務、諮詢、專案及工商登記，包括國內外上市櫃集團公司的審計及IPO，提供企業帳務、稅務、薪資、資金管理等全方位的會計服務及財務、稅務的諮詢規劃，為國內較具規模的全方位國際性會計師事務所之一。',110),(20,'荷蘭商臺灣戴爾股份有限公司台灣分公司',5000000,'02-77002000','02-23766887','http://www.dell.com/careers/taiwan','Dell is uniquely positioned to impact industry trends. Dell leads enabling standards and technologies through industry groups and strategic partners. We partner, rather than compete, with top industry technology suppliers and original development manufacturers. These partnerships give us a uniquely broad perspective on the computing landscape. Since the first Dell PC was introduced in 1986, Dell has continued to shape the industry by breaking new ground and pioneering critical developments in home, small business and enterprise computing. We gather requirements directly through tens of thousands of daily customer interactions, organized events, social media venues and customer panels. Maintaining strong internal development capabilities, we spur innovation that delivers value to customers.',1200),(21,'益普索市場研究股份有限公司',NULL,'02-25810021','02-23451023','https://www.ipsos.com/en-tw','Founded in 1975, Ipsos is a company of inquiring minds and passionate people giving a voice and shape to the thoughts of millions of individuals around the world. Ipsos is also the only independent, publicly-listed company in its field that is managed by research professionals. We explore, probe and challenge conventional wisdom. We assess market potential and interpret market trends. We test products and advertising, and help our clients build long-term relationships with customers. ',85),(22,'傑太日煙國際股份有限公司',NULL,'02-24392884','02-31922292','http://www.jti.com/','JT International (JTI) 是一個兼具日本與歐美血統的公司。 Japan Tobacco Inc (JT) 日本菸草產業株式會社，起源自1898年大藏省專賣局。1949年，專賣局被合併為日本專賣公社，扮演國營菸草與鹽製品之專門製造及供應商。1985年，日本專賣公社經過民營的過程之後正式成立為日本菸草產業株式會社。JT 以其最受歡迎之旗艦品牌 Mevius (原Mild Seven)，在日本市場成為香菸製造的領導者。美國 R.J. Reynolds 公司19世紀末成立於美國，並在國際菸草市場上以重要品牌 Winston 與 Camel 聞名。1999年，JT 為強化其在全球市場之地位，併購美國 R.J. Reynolds 公司國際市場業務。並以 JT International 的嶄新面貌呈現於全球消費者面前。合併之後的日本菸草集團，是今日全球第三大的菸草集團。 ',270),(23,'微拓股份有限公司',NULL,'02-24392883','02-27251691','http://www.bebit.com.tw/','beBit為源於日本最大的網路策略顧問公司，2012年開始拓展海外市場，於7月份成立台灣分公司，上海分公司於2013年7月成立，業務範圍涵蓋大中華區；以「使用者中心設計 (UCD, User-centered design) 」為核心理念，透過使用者行動觀察調查，實踐設計概念於策略擬定，規劃出成效卓越的網路策略，為客戶帶來巨大的商業價值；主要顧客有中國信託商業銀行、台灣大哥大、三井住友銀行、SONY、Canon、HONDA、Yahoo!JAPAN、YAMAHA等各產業龍頭；近期出版「決勝數位金融新時代」以及「網站使用者中心策略」二書，暢銷於各大書店。',150),(24,'(遠東集團)鼎鼎企業管理顧問股份有限公司',43000000,'02-24392885','02-27382080','http://www.ddmc.com.tw/','推動遠東關係企業電腦化。遠東集團創辦人徐有庠先生，以「誠信」作為事業體經營發展的最高指導原則，凡事但求確確實實，不作假、不隱瞞，並推而廣之，塑建「誠、勤、樸、慎」的立業精神： 誠:誠者，真誠也。 對顧客、對社會大眾、對同事都要真誠相待，彼此有信，才能合作無間。 勤:勤者，勤奮也。 每個人都要勤奮工作，努力不懈，才能日新又新；以勤補拙，才可望克服萬難。 樸:樸者，儉樸也。 生活簡樸、愛福惜福，自然能夠清心寡欲，人生才會快樂。 慎:慎者，審慎也。 做任何事情，事前都必須審慎評估，做好規劃，才容易成功。 鼎鼎企管自民國79年成立，為遠東集團旗下子公司，公司主要推動遠東關係企業電腦化(遠東新世紀、裕民航運、遠鼎、亞東證券等…) 隨時掌握時代潮流，以前瞻性及全方位方式提供遠東關係企業旗下各公司的資訊需求，並確保資料處理與電子資料通訊的資源與設備充分發揮最高效率，祈望各單位的資訊系統能為業界的典範，同時也促使在同業之間能有較優勢的競爭力。',45),(25,'Klook客路_客遊天下旅行社有限公司',200000000,'02-24392324','02-55933778','https://www.klook.com/zh-TW/','KLOOK客路 -創立於2014年，亞洲最大旅遊體驗預訂平台，我們為旅客提供一種簡單而無縫的方式，以獨家價格探索和預訂城市熱門景點及特色當地體驗，包括：當地交通/通訊、景點門票、一日行程、獨特體驗、美食饗宴。 可以透過我們的網站或手機APP（“2015年度最佳”和“2017年度最佳”由Google Play和Apple App Store提供）。每天我們透過200多個目的地、40,000多種產品，無論是在大阪的日本環球影城省去排隊的時間，在普吉島冒險，還是從雷克雅維克追逐北極光，都讓無數旅行者沉迷於他們對旅行的狂熱和自發。 我們的團隊辦公室分佈於全球15個城市：香港（總部）、深圳、台北、新加坡、首爾、曼谷、吉隆坡、東京、馬尼拉、胡志明市、雅加達、杜拜、孟買、宿霧及阿姆斯特丹，超過500名團隊成員，來自超過20個國家及地區。 我們一直努力著且同時在這一路上有很多樂趣，甚至我們還沒有接近我們的最終目的地。我們的團隊擁有多元化的旅遊興趣，並鼓勵他們創造自己的旅程，但我們都致力於賦予人們隨時隨地創造最佳旅行體驗的使命。',NULL),(26,'91APP_九易宇軒股份有限公司',25000000,'02-24311184','02-265380912','https://enterprise.91app.com/','－關於91APP－ 2013年創立，為台灣成長最快、最大的新零售服務公司。總部位於台北，現有300位員工及超過10,000家知名零售品牌合作。91APP新零售解決方案採用SaaS雲服務模式與企業級服務架構，為品牌快速建置全通路（Omni-Channel）經營環境，包含線上官網、APP與線下門市數位工具等，以顧客(會員)為核心，貫穿所有消費體系，並無縫整合主流社群廣告媒體，全數據導向顧客關係管理系統（Omni-Channel CRM），並運用數據引擎與機器學習相關AI技術進行會員分級/分群、回購預測等，有助精準決策，協助品牌新零售快速佈局。 互聯網快速演進，不少大型零售實體品牌面臨直接衝擊，必須快速數位轉型。91APP已成功協助諸多品牌完成新零售佈局，更見證其高速成長力量。未來將持續透過技術創新及累積品牌經營實務典範，並期許成為全球第一領先的新零售解決方案公司，引領整體零售行業再升級。 ',300),(27,'行動貝果有限公司',NULL,'02-24392814',NULL,'https://mobagel.com/tw/','行動貝果為 史丹佛 (Stanford)、柏克萊 (Berkeley)、臺大 (NTU)等 EECS碩博士團隊於美國矽谷及台灣創立，運用在矽谷最新的機器學習演算法，打造人工智慧引擎Decanter™，藉由其資料分析與預測能力，協助企業用戶找到隱藏在大量數據中的重要意涵，發展具競爭優勢的商業決策，大幅增強其獲利能力。',NULL),(28,'群益律師事務所',NULL,'02-22392884','02-25500651','http://www.cy-law.com.tw/','群益源起 : 『群眾之事，公義之道』。本所中文名稱「群益」，旨為行有益於群眾之事，盡力於公義之道。 匯集學經歷背景優秀的律師組成專業法律團隊，祈願為一般民眾、中小型企業和弱勢族群發聲。 提供多元法律服務，有一般民刑事、行政訴訟、公平交易法、中國大陸法務等領域， 本所位於台北車站對面京站百貨樓上，取其交通之便利，更能為大台北地區客戶提供即時又快速的法律諮詢。',5),(29,'台灣愛立信股份有限公司',NULL,'02-23392884','02-77385803','https://www.ericsson.com/en','愛立信是「網路型社會」（Networked Society）的驅動力量，同時也是全球通訊技術與服務的領導者。我們的服務、軟體及基礎建設 － 特別是在行動、寬頻及雲端方面 － 將能夠幫助電信及其他領域產業，妥善營運事業、提昇效率、改善用戶體驗、同時掌握嶄新契機。',NULL),(30,'創夢市集股份有限公司',155000000,'02-24312884',NULL,'https://www.ditstartup.com/','創夢市集成立於 2014 年，由網銀國際、遊戲橘子、樂陞、昱泉、華義及新光金創投等六家企業共同出資。2017 年，創夢市集推出創業加速器，以一年兩梯、每梯三個月的方式，連結股東企業資源並進行早期投資，在臺灣培育出具有潛力的數位娛樂新創公司以及創業文化。',15);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_address`
--

DROP TABLE IF EXISTS `company_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `company_address` (
  `Company_ID` int(11) NOT NULL,
  `County_or_city` varchar(15) DEFAULT NULL,
  `District` varchar(15) DEFAULT NULL,
  `Road_or_street` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Company_ID`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_address`
--

LOCK TABLES `company_address` WRITE;
/*!40000 ALTER TABLE `company_address` DISABLE KEYS */;
INSERT INTO `company_address` VALUES (1,'台北市','中正區','羅斯福路'),(2,'台北市','大安區','羅斯福路'),(3,'台北市','信義區','大道路'),(4,'台北市','中正區','寧波東街'),(5,'新北市','永和區','中和路'),(6,'新北市','樹林區','三俊街'),(7,'新北市','樹林區','佳園路'),(8,'新竹市','北區','中正路'),(9,'新竹市','東區','中華路'),(10,'新竹市','北區','中山路'),(11,'新竹市','香山區','中山路'),(12,'新竹市','北區','愛文街'),(13,'台中市','大里區','西榮路'),(14,'台中市','太平區','中山北路'),(15,'台中市','太平區','中山南路'),(16,'台中市','西屯區','中山北路'),(17,'台中市','西屯區','中平路'),(18,'彰化市',NULL,'彰員路'),(19,'彰化市',NULL,'中央路'),(20,'宜蘭市',NULL,'中山路'),(21,'台南市','永康區','文化路'),(22,'台南市','永康區','二王路'),(23,'台南市','永康區','大灣路'),(24,'台南市','永康區','環工路'),(25,'高雄市','新興區','中山路'),(26,'高雄市','前鎮區','一心一路'),(27,'高雄市','前鎮區','前鎮街'),(28,'高雄市','前鎮區','天后街'),(29,'高雄市','前鎮區','北江街'),(30,'高雄市','楠梓區','土庫八街');
/*!40000 ALTER TABLE `company_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_company_list`
--

DROP TABLE IF EXISTS `favorite_company_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `favorite_company_list` (
  `Student_ID` varchar(9) NOT NULL,
  `Company_ID` int(11) NOT NULL,
  PRIMARY KEY (`Student_ID`,`Company_ID`),
  KEY `Company_ID` (`Company_ID`),
  CONSTRAINT `favorite_company_list_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`student_id`),
  CONSTRAINT `favorite_company_list_ibfk_2` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_company_list`
--

LOCK TABLES `favorite_company_list` WRITE;
/*!40000 ALTER TABLE `favorite_company_list` DISABLE KEYS */;
INSERT INTO `favorite_company_list` VALUES ('b01203041',1),('b03701153',1),('b03701176',1),('b05305201',1),('b01203041',2),('b03701153',2),('b03701176',2),('b05305201',2),('b01203041',3),('b03701153',3),('b03701176',3),('b05305201',3),('b01203041',4),('b03701153',4),('b03701176',4),('b01203041',5),('b03701153',5),('b03701176',5),('b03701153',6),('b03701153',7),('b03701153',8),('b07402101',20),('b07402102',21),('b07402103',22),('b07402104',23),('b07402105',24),('b07402106',25),('b07402107',26),('b07402108',27),('b07402109',28);
/*!40000 ALTER TABLE `favorite_company_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_industry_list`
--

DROP TABLE IF EXISTS `favorite_industry_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `favorite_industry_list` (
  `Student_ID` varchar(9) NOT NULL,
  `Industry_type_name` varchar(10) NOT NULL,
  PRIMARY KEY (`Student_ID`,`Industry_type_name`),
  KEY `Industry_type_name` (`Industry_type_name`),
  CONSTRAINT `favorite_industry_list_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`student_id`),
  CONSTRAINT `favorite_industry_list_ibfk_2` FOREIGN KEY (`Industry_type_name`) REFERENCES `industry_type` (`industry_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_industry_list`
--

LOCK TABLES `favorite_industry_list` WRITE;
/*!40000 ALTER TABLE `favorite_industry_list` DISABLE KEYS */;
INSERT INTO `favorite_industry_list` VALUES ('b01203041','1'),('b03701153','1'),('b03701176','1'),('b05305201','1'),('b01203041','2'),('b03701153','2'),('b03701176','2'),('b05305201','2'),('b07402101','20'),('b07402102','21'),('b07402103','22'),('b07402104','23'),('b07402105','24'),('b07402106','25'),('b07402107','26'),('b07402108','27'),('b07402109','28'),('b01203041','3'),('b03701153','3'),('b03701176','3'),('b05305201','3'),('b01203041','4'),('b03701153','4'),('b03701176','4'),('b01203041','5'),('b03701153','5'),('b03701176','5'),('b03701153','6'),('b03701153','7'),('b03701153','8');
/*!40000 ALTER TABLE `favorite_industry_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_job_list`
--

DROP TABLE IF EXISTS `favorite_job_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `favorite_job_list` (
  `Student_ID` varchar(9) NOT NULL,
  `Job_ID` int(11) NOT NULL,
  PRIMARY KEY (`Student_ID`,`Job_ID`),
  KEY `Job_ID` (`Job_ID`),
  CONSTRAINT `favorite_job_list_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`student_id`),
  CONSTRAINT `favorite_job_list_ibfk_2` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_job_list`
--

LOCK TABLES `favorite_job_list` WRITE;
/*!40000 ALTER TABLE `favorite_job_list` DISABLE KEYS */;
INSERT INTO `favorite_job_list` VALUES ('b01203041',1),('b03701153',1),('b03701176',1),('b05305201',1),('b01203041',2),('b03701153',2),('b03701176',2),('b05305201',2),('b01203041',3),('b03701153',3),('b03701176',3),('b05305201',3),('b01203041',4),('b03701153',4),('b03701176',4),('b01203041',5),('b03701153',5),('b03701176',5),('b03701153',6),('b03701153',7),('b03701153',8),('b07402101',20),('b07402102',21),('b07402103',22),('b07402104',23),('b07402105',24),('b07402106',25),('b07402107',26),('b07402108',27),('b07402109',28);
/*!40000 ALTER TABLE `favorite_job_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry_company_list`
--

DROP TABLE IF EXISTS `industry_company_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `industry_company_list` (
  `Industry_type_name` varchar(10) NOT NULL,
  `Company_ID` int(11) NOT NULL,
  PRIMARY KEY (`Industry_type_name`,`Company_ID`),
  KEY `Company_ID` (`Company_ID`),
  CONSTRAINT `industry_company_list_ibfk_1` FOREIGN KEY (`Industry_type_name`) REFERENCES `industry_type` (`industry_type_name`),
  CONSTRAINT `industry_company_list_ibfk_2` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry_company_list`
--

LOCK TABLES `industry_company_list` WRITE;
/*!40000 ALTER TABLE `industry_company_list` DISABLE KEYS */;
INSERT INTO `industry_company_list` VALUES ('數位內容產業',1),('軟體/網路業',1),('電信/通訊業',2),('批發業',3),('法律服務業',4),('零售業',5),('批發業',6),('電腦/消費性電子產品',7),('軟體/網路業',8),('軟體/網路業',9),('建築工程業',10),('金屬相關製造業',11),('醫療服務業',12),('運輸工具製造業',13),('金屬相關製造業',14),('運輸相關產業',15),('電信/ 通訊業',15),('零售業',16),('醫療服務業',17),('金屬相關製造業',18),('會計服務業',19),('電腦/消費性電子產品',20),('工商顧問服務業',21),('食品/飲料/菸酒/原',22),('工商顧問服務業',23),('工商顧問服務業',24),('運動/旅遊/休閒業',25),('軟體/網路業',26),('數位內容產業',27),('法律服務業',28);
/*!40000 ALTER TABLE `industry_company_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry_job_list`
--

DROP TABLE IF EXISTS `industry_job_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `industry_job_list` (
  `Industry_type_name` varchar(10) NOT NULL,
  `Job_ID` int(11) NOT NULL,
  PRIMARY KEY (`Industry_type_name`,`Job_ID`),
  KEY `Job_ID` (`Job_ID`),
  CONSTRAINT `industry_job_list_ibfk_1` FOREIGN KEY (`Industry_type_name`) REFERENCES `industry_type` (`industry_type_name`),
  CONSTRAINT `industry_job_list_ibfk_2` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry_job_list`
--

LOCK TABLES `industry_job_list` WRITE;
/*!40000 ALTER TABLE `industry_job_list` DISABLE KEYS */;
INSERT INTO `industry_job_list` VALUES ('軟體/網路業',1),('傳直銷相關',2),('軟體/網路業',2),('軟體/網路業',3),('醫療服務業',4),('醫療服務業',5),('醫療服務業',6),('醫療服務業',7),('軟體/網路業',8),('數位內容產業',9),('軟體/網路業',9),('軟體/網路業',10),('餐飲服務業',11),('機械設備製造修配',12),('會計服務業',13),('工商顧問服務業',14),('工商顧問服務業',15),('傳直銷相關產業',16),('住宿服務業',17),('電信/ 通訊業',18),('電信/ 通訊業',19),('電信/ 通訊業',20),('教育服務業',21),('教育服務業',23),('醫療服務業',24),('電信/ 通訊業',26),('教育服務業',27),('餐飲服務業',28),('教育服務業',29),('醫療服務業',30);
/*!40000 ALTER TABLE `industry_job_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry_type`
--

DROP TABLE IF EXISTS `industry_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `industry_type` (
  `Industry_type_name` varchar(10) NOT NULL,
  PRIMARY KEY (`Industry_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry_type`
--

LOCK TABLES `industry_type` WRITE;
/*!40000 ALTER TABLE `industry_type` DISABLE KEYS */;
INSERT INTO `industry_type` VALUES ('不動產業'),('人力仲介業'),('住宿服務業'),('傳直銷相關產業'),('出版業'),('半導體業'),('家具/辦公設備/裝設'),('工商顧問服務業'),('建築工程業'),('批發業'),('教育服務業'),('數位內容產業'),('會計服務業'),('機械設備製造修配業'),('法律服務業'),('石油/煤製品製造業'),('租賃相關產業'),('軟體/網路業'),('運動/旅遊/休閒業'),('運輸工具製造業'),('運輸相關業'),('郵政快遞業'),('醫療服務業'),('金屬相關製造業'),('金融/保險業'),('零售業'),('電信/ 通訊業'),('電腦/消費性電子產品'),('食品/飲料/菸酒/原'),('餐飲服務業');
/*!40000 ALTER TABLE `industry_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inform_record`
--

DROP TABLE IF EXISTS `inform_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inform_record` (
  `Student_ID` varchar(9) NOT NULL,
  `Company_ID` int(11) NOT NULL,
  `Inform_record_ID` int(11) NOT NULL,
  `Inform_date` date DEFAULT NULL,
  PRIMARY KEY (`Inform_record_ID`),
  KEY `Student_ID` (`Student_ID`),
  KEY `Company_ID` (`Company_ID`),
  CONSTRAINT `inform_record_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`student_id`),
  CONSTRAINT `inform_record_ibfk_2` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inform_record`
--

LOCK TABLES `inform_record` WRITE;
/*!40000 ALTER TABLE `inform_record` DISABLE KEYS */;
INSERT INTO `inform_record` VALUES ('b03701153',1,1,'2018-02-01'),('b03701153',2,2,'2018-02-02'),('b03701153',3,3,'2018-02-03'),('b03701153',4,4,'2018-02-04'),('b03701153',5,5,'2018-02-05'),('b03701153',6,6,'2018-02-06'),('b03701153',7,7,'2018-02-07'),('b03701153',8,8,'2018-02-08'),('b01203041',1,9,'2018-02-09'),('b01203041',2,10,'2018-02-10'),('b01203041',3,11,'2018-02-11'),('b01203041',4,12,'2018-02-12'),('b01203041',5,13,'2018-02-13'),('b05305201',1,14,'2018-02-14'),('b05305201',2,15,'2018-02-15'),('b05305201',3,16,'2018-02-16'),('b03701176',1,17,'2018-02-17'),('b03701176',2,18,'2018-02-18'),('b03701176',3,19,'2018-02-19'),('b03701176',4,20,'2018-02-20'),('b03701176',5,21,'2018-02-21'),('b07402101',20,22,'2018-02-22'),('b07402102',21,23,'2018-02-23'),('b07402103',22,24,'2018-02-24'),('b07402104',23,25,'2018-02-25'),('b07402105',24,26,'2018-02-26'),('b07402106',25,27,'2018-02-27'),('b07402107',26,28,'2018-02-28'),('b07402108',27,29,'2018-03-01'),('b07402109',28,30,'2018-03-02');
/*!40000 ALTER TABLE `inform_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `job` (
  `Job_ID` int(11) NOT NULL,
  `Job_title` varchar(10) DEFAULT NULL,
  `Job_content` varchar(500) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Work_hour` int(11) DEFAULT NULL,
  `Fulltime_or_parttime` varchar(10) DEFAULT NULL,
  `When_to_on_board` date DEFAULT NULL,
  `company_Company_ID` int(11) NOT NULL,
  PRIMARY KEY (`Job_ID`),
  KEY `fk_job_company1_idx` (`company_Company_ID`),
  CONSTRAINT `fk_job_company1` FOREIGN KEY (`company_Company_ID`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'軟體工程師','進行軟體產品研發，包括系統及架構設計、程式撰寫等 ',76862,9,'fulltime','2018-08-01',1),(2,'產品分析師(產品企劃','社群口碑資料源之發展與維運，包含定期檢核資料源狀況，並進行資料源網站與頻道擴充，收納更多元的口碑資料。社群口碑族群分析之發展與維運，包含定期更新族群口碑內容與功能開發，發展更豐富的網路族群口碑。協助執行社群觀測或其他延伸產品原型製作，定義產品規格，可直接面對跨部門研發/設計團隊，制定開發時程、確保工作進度及品質驗證。協助例行維運檢核，制定效能與維運成效監控指標。',53100,9,'fulltime','2018-08-01',1),(3,'產品分析師(Peop','根據市場需求與技術優勢，進行產品功能與規格規劃 、運用資料處理與分析能力進行產品品質提升建議、除錯、 或產品應用報告產出、跨部門溝通(RD與業務單位)與執行各項專案管理流程、設計/實作產品實驗方法、實驗步驟，提升產品價值、運用公司內部之語意分析工具訓練與優化人群描繪模型',53100,9,'fulltime','2018-08-01',1),(4,'藥劑部藥師','負責藥品調劑、藥品核發、藥物諮詢等工作',800000,9,'fulltime','2018-08-01',12),(5,'手術室工作室技工','手術器械清潔打包及消毒工作',23000,12,'fulltime','2018-08-01',12),(6,'血液透析室護理人員','按照單位標準作業流程確實執行透析護理照護。專責病患照護、衛教指導。配合單位之規章執行各項活動。參與單位血液透析護理照護等作業',41000,8,'fulltime','2018-08-02',12),(7,'急診室護理人員','急診室護理臨床業務工作',30000,8,'fulltime','2018-08-02',12),(8,'資料工程師','資料庫系統建置維護(監控/備份/異常處理/效能調校) ，客製化報表產出/查詢，資料庫物件開發與配合前端程式開發系統',50000,8,'fulltime','2018-08-02',27),(9,'資深資料科學家','使用機器學習和分析技術構建需求預測和預測性維護的預測模型。從大量業務數據中分析和提取有價值信息的經驗。與核心技術部門合作。 開發預測模塊。為大規模數據分析，模型開發，模型驗證和模型實施設計高效，可擴展的自動化流程。研究和評估開創性的機器學習和統計模型。',60000,8,'fulltime','2018-08-02',27),(10,'QA人員','學習研究新技術，開發必要的測試工具來達成自動化驗證與測試 針對系統規格、機器規格、領域與開發團隊討論出可被測試的模組 針對測試結果產出可被追蹤的測試報告(單元測試、整合測試、壓力測試) 問題追蹤處理',30000,8,'fulltime','2018-08-02',27),(11,'工務人員','進出貨管理、生產流程控管、廠商聯繫、安排流程.',30000,8,'fulltime','2018-08-03',27),(12,'重機械修護人員','設備保養檢修、故障排除',30000,8,'fulltime','2018-08-03',18),(13,'會計人員','負責一般現金收付作業。核對現金收支記錄是否相符合。 管理零用金異動及撥補作業。收發、記錄及彙整交易產生之原始憑證，整理廠商貨款或費用等應付款項帳務。整理客戶應收款項帳務。整理一般會計帳務。',32000,8,'fulltime','2018-08-03',18),(14,'研發理級主管','擬定研發單位策略、訂定研發整體目標，並負責帶領單位，達成年度目標。協調相關部門配合合作，以利研究開發案能順利進行。研發專案推行、技術移轉。研發人才的培訓。推動研發部門的中、長期策略規劃。',50000,9,'fulltime','2018-08-03',18),(15,'執行企劃人員','負責公司對外的行銷活動與媒體活動（如：展覽、促銷活動），執行行銷企劃案的企劃、撰寫、內容執行、結案報告。進行產業競爭分析及市場調查分析報告。配合品牌定位設定，負責相關文案資料的規劃執行。負責媒體雜誌宣傳及新聞稿撰寫、網頁資訊維護等相關事務。',38000,8,'fulltime','2018-08-03',18),(16,'美編設計專員','平面設計，包含POP美工、排版美工等立體設計，包含櫥窗美工、模型美工、道具美工、招牌美工等公司對外所有相關之形象提昇、產品型錄、封面、樣本、DM等設計包裝確工作圖製程網路維護以及品牌、視覺、形象之提昇 依據所選定之包裝方式，研究包裝材料性質、加工技術、生產方法及製造成本等因素 針對所選定之產品性能與特性，選擇適當包裝表現方式 分析消費者對於造型、圖案、色彩、材料及價格之選擇傾向 進行構思發展並繪製草圖，繪製精模型',25000,8,'fulltime','2018-12-01',25),(17,'飯店房務清潔人員','確實清理旅館房間及公共空間的清潔整理工作 .更換房間的床單被單,完整整理好房間及依規定放置盥洗相關用品 .維持前台及咖啡廳,辦公室,公共空間的乾淨.整理盤點清洗的備品數量與總務交接 ',22000,8,'fulltime','2018-12-01',25),(18,'客服專員─國內組','空運進出口貨物之安排。 客戶服務與貨物異常處理。 主管交付之任務。 ',24000,9,'fulltime','2018-12-01',25),(19,'業務儲備幹部','負責唱片、音響硬體及通路盤點業務。 需配合出差，能搬重物。需負擔唱片、音響硬體及賣場銷售業績並能提出建議方案。',26000,8,'fulltime','2018-12-01',25),(20,'櫃台客服專員','會員住宿中心櫃台接待、洽詢服務。 住宿客人辦理入住與退房等相關事宜。結帳、收銀作業。',28000,8,'fulltime','2018-12-01',25),(21,'幼兒教保人員','娃娃車隨車接送幼兒上下學 校內生活環境管理(包含校內環境佈置…) 活動規劃與執行(如親子活動…) 其他保育相關工作 ',35000,9,'fulltime','2018-12-20',30),(22,'安親課輔老師','指導學童作業，協助輔導加強課業，做課業的複習、代替家長照顧學童，處理學童在班內一切生活事務、與家長溝通讓家長充分了解孩童學習狀況以及生活狀態、處理家長的投訴或者要求，與家長協調解決、主題式課程教學、協助外師授課，並協助活動規劃與執行。',35000,9,'fulltime','2018-12-20',30),(23,'專職美語教師','菁英美語導師 、電話輔導測驗、作業批改、與英美語系教師搭配授課 、教學活動規劃與執行 、其他相關教務工作',35000,9,'fulltime','2018-12-20',30),(24,'牙醫助理','跟診、收送器械、環境整潔、櫃台接待。',38000,4,'parttime','2018-12-20',12),(25,'桃園機場工讀生','出口進倉，出口報關，及包裝作業、出口倉儲異常作業、培訓出口提單組作業/出口文件組作業',22000,6,'parttime','2018-12-20',11),(26,'兼職行政櫃台','接聽電話, 行政文書庶務工作, 其他交辦事項, 維護班內環境。',20000,8,'parttime','2018-04-10',24),(27,'兼職美語老師','兒童美語教學、每月固定1~2次的電輔與電訪、配合班務節慶活動與成果發表、定期參與教務會議、定期參與班所安排之免費在職訓練。',17000,8,'parttime','2018-04-10',24),(28,'餐飲服務人員(兼職)','接待及引導、餐點介紹、協助顧客點餐、維護環境…等。 ',6000,8,'parttime','2018-04-10',24),(29,'助理教保員','協助幼兒自理生活及維護幼兒之安全。 設計幼兒唱歌、跳舞、說話、戶外活動、感統課程。班級經營管理常規訓練、親師溝通教學設計。配合幼教班與家長的需要，教授幼兒相關課程。',6000,8,'parttime','2018-04-10',12),(30,'白班護理兼職人員','提供基本的病患基礎醫藥照顧。 測量並且記錄病患的生理狀態。 進行靜脈注射、肌肉注射、打點滴，觀察記錄患者給藥之後的狀況並加以回報。 觀察、記錄並回報病人在接受醫療後狀態的改變，特別是一些不尋常的症狀反應，必要時採取救護措施。 接聽病患求助電話，並且提供協助。',8000,8,'parttime','2018-04-10',12);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `required_skill`
--

DROP TABLE IF EXISTS `required_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `required_skill` (
  `Skill` varchar(10) NOT NULL,
  `Job_ID` int(11) NOT NULL,
  PRIMARY KEY (`Job_ID`,`Skill`),
  CONSTRAINT `required_skill_ibfk_1` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `required_skill`
--

LOCK TABLES `required_skill` WRITE;
/*!40000 ALTER TABLE `required_skill` DISABLE KEYS */;
INSERT INTO `required_skill` VALUES ('具備Web程式開發基',1),('有Java或網頁開發',1),('熟Java語法',1),('邏輯好、理解力高、能',1),('了解機器學習及語意分',2),('具良好的溝通與協調能',2),('可操作SQL佳',2),('具備基本資料處理程式',3),('具備統計與數據分析能',3),('具數位廣告相關經驗佳',3),('商用英語能力佳',3),('有產品規畫經驗佳',3),('具備高考藥師證照',4),('英文能力佳',4),('台語 -- 略懂',5),('護理助產相關科系畢業',6),('具護理師執照及護理相',7),('熟悉 Java 或 ',8),('熟悉 REST AP',8),('熟悉 Unix-Li',8),('擁有物理學，數學，計',9),('流利的程式語言能力',9),('至少2年的數據分析經',9),('Linux (Ubu',10),('對數據分析機器學習領',10),('熟悉Shell sc',10),('統計數理背景',10),('自動化工具使用經驗 ',10),('重機械修護經驗者佳',11),('製程或工程相關經驗',12);
/*!40000 ALTER TABLE `required_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumes`
--

DROP TABLE IF EXISTS `resumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resumes` (
  `Resume_ID` int(11) NOT NULL,
  `Chinese_name` varchar(15) DEFAULT NULL,
  `English_name` varchar(15) DEFAULT NULL,
  `Photo` blob,
  `Cell_phone_number` varchar(15) DEFAULT NULL,
  `Other_phone_number` varchar(15) DEFAULT NULL,
  `E_mail` varchar(30) DEFAULT NULL,
  `Highest_education_university` varchar(15) DEFAULT NULL,
  `Highest_education_department` varchar(15) DEFAULT NULL,
  `resumes_address_Resume_ID` int(11) NOT NULL,
  PRIMARY KEY (`Resume_ID`),
  KEY `fk_resumes_resumes_address1_idx` (`resumes_address_Resume_ID`),
  CONSTRAINT `fk_resumes_resumes_address1` FOREIGN KEY (`resumes_address_Resume_ID`) REFERENCES `resumes_address` (`resume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumes`
--

LOCK TABLES `resumes` WRITE;
/*!40000 ALTER TABLE `resumes` DISABLE KEYS */;
INSERT INTO `resumes` VALUES (1,'謝佳穎','Elaine Hsieh',NULL,'0970-159-898',NULL,'dew3@gmail.com','台灣大學','工商管理學系',0),(2,'謝佳穎','Elaine Hsieh',NULL,'0970-159-898',NULL,'dew3@gmail.com','台灣大學','工商管理學系',0),(3,'謝佳穎','Elaine Hsieh',NULL,'0970-159-898','03-540-2308','dew3@gmail.com','台灣大學','工商管理學系',0),(4,'姚道順','Danjo Yao',NULL,'0922-386-438',NULL,'Yao@gmail.com','台灣大學','工商管理學系',0),(5,'姚道順','Danjo Yao',NULL,'0922-386-438',NULL,'Yao@gmail.com','台灣大學','工商管理學系',0),(6,'姚道順','Danjo Yao',NULL,'0922-386-438','02-240-2808','Danjo@gmail.com','台灣大學','工商管理學系',0),(7,'李柏霆','Bo Ting Lee',NULL,'0911-223-343',NULL,'BT@gmail.com','台灣大學','公共衛生學系',0),(8,'李柏霆','Bo Ting Lee',NULL,'0911-223-343',NULL,'BT@gmail.com','台灣大學','公共衛生學系',0),(9,'李柏霆','Bo Ting Lee',NULL,'0911-223-343','04-740-2808','BT@gmail.com','台灣大學','公共衛生學系',0),(10,'李彥均','Yen Chun Lee',NULL,'0911-223-344','','YCL@gmail.com','台灣大學','地理學系',0),(11,'李彥均','Yen Chun Lee',NULL,'0911-223-344',NULL,'YCL@gmail.com','台灣大學','地理學系',0),(12,'李彥均','Yen Chun Lee',NULL,'0911-223-344','05-540-2808','YCL@gmail.com','台灣大學','地理學系',0),(13,'王麗雅','Lia Wang',NULL,'0911-223-345',NULL,'liahi@gmail.com','台灣大學','國際企業學系',0),(14,'王麗雅','Lia Wang',NULL,'0911-223-345',NULL,'liahi@gmail.com','台灣大學','國際企業學系',0),(15,'王麗雅','Lia Wang',NULL,'0911-223-345','03-540-2803','liahi@gmail.com','台灣大學','國際企業學系',0),(16,'侯婉伶','Wanling Hou',NULL,'0911-223-346',NULL,'wanglin@yahoo.com.tw','台灣大學','國際企業學系',0),(17,'侯婉伶','Wanling Hou',NULL,'0911-223-346',NULL,'wanglin@yahoo.com.tw','台灣大學','國際企業學系',0),(18,'侯婉伶','Wanling Hou',NULL,'0911-223-346','03-540-2801','wanglin@yahoo.com.tw','台灣大學','國際企業學系',0),(19,'陳煥勳','Shun Chen',NULL,'0911-223-347',NULL,'sc@yahoo.com.tw','台灣大學','會計學系',0),(20,'陳煥勳','Shun Chen',NULL,'0911-223-347',NULL,'sc@yahoo.com.tw','台灣大學','會計學系',0),(21,'陳煥勳','Shun Chen',NULL,'0911-223-347','06-240-2811','sc@yahoo.com.tw','台灣大學','會計學系',0),(22,'鄧艾比','Abbey Dzeng',NULL,'0911-223-348',NULL,'abbey@yahoo.com','台灣大學','國際企業學系',0),(23,'鄧艾比','Abbey Dzeng',NULL,'0911-223-348',NULL,'abbey@yahoo.com','台灣大學','國際企業學系',0),(24,'鄧艾比','Abbey Dzeng',NULL,'0911-223-348','02-240-2808','abbey@yahoo.com','台灣大學','國際企業學系',0),(25,'王一明','Ming Wang',NULL,'0911-223-349',NULL,'ww@gmail.com','台灣大學','台灣文學研究所',0),(26,'王一明','Ming Wang',NULL,'0911-223-349',NULL,'ww@gmail.com','台灣大學','台灣文學研究所',0),(27,'王一明','Ming Wang',NULL,'0911-223-349','03-540-2855','ww@gmail.com','台灣大學','台灣文學研究所',0),(28,'王一明','Ming Wang',NULL,'0911-223-349',NULL,'ww@gmail.com','台灣大學','台灣文學研究所',0),(29,'王一明','Ming Wang',NULL,'0911-223-349',NULL,'ww@gmail.com','台灣大學','台灣文學研究所',0),(30,'王一明','Ming Wang',NULL,'0911-223-349','02-222-2808','ww@gmail.com','台灣大學','台灣文學研究所',0);
/*!40000 ALTER TABLE `resumes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumes_address`
--

DROP TABLE IF EXISTS `resumes_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resumes_address` (
  `Resume_ID` int(11) NOT NULL,
  `County_or_city` varchar(15) DEFAULT NULL,
  `District` varchar(15) DEFAULT NULL,
  `Road_or_street` varchar(50) DEFAULT NULL,
  `Street` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Resume_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumes_address`
--

LOCK TABLES `resumes_address` WRITE;
/*!40000 ALTER TABLE `resumes_address` DISABLE KEYS */;
INSERT INTO `resumes_address` VALUES (1,'新竹市','香山區','中山路',NULL),(2,'新竹市','香山區','中山路',NULL),(3,'新竹市','香山區','中山路',NULL),(4,'台北市','信義區','松壽路',NULL),(5,'台北市','信義區','松壽路',NULL),(6,'台北市','信義區','松壽路',NULL),(7,'台北市','大安區','羅斯福路',NULL),(8,'台北市','大安區','羅斯福路',NULL),(9,'台北市','大安區','羅斯福路',NULL),(10,'台南市','永康區','文化路',NULL),(11,'台南市','永康區','文化路',NULL),(12,'台南市','永康區','文化路',NULL),(13,'彰化市',NULL,'中央路',NULL),(14,'彰化市',NULL,'中央路',NULL),(15,'彰化市',NULL,'中央路',NULL),(16,'新北市','樹林區','八德路',NULL),(17,'新北市','樹林區','八德路',NULL),(18,'新北市','樹林區','八德路',NULL),(19,'花蓮市',NULL,'民權路',NULL),(20,'花蓮市',NULL,'民權路',NULL),(21,'花蓮市',NULL,'民權路',NULL),(22,'高雄市','楠梓區','南昌街',NULL),(23,'高雄市','楠梓區','南昌街',NULL),(24,'高雄市','楠梓區','南昌街',NULL),(25,'台北市','文山區','興隆路',NULL),(26,'台北市','文山區','興隆路',NULL),(27,'台北市','文山區','興隆路',NULL),(28,'台北市','文山區','興隆路',NULL),(29,'台北市','文山區','興隆路',NULL),(30,'台北市','文山區','興隆路',NULL);
/*!40000 ALTER TABLE `resumes_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_product`
--

DROP TABLE IF EXISTS `service_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `service_product` (
  `S_p` varchar(15) NOT NULL,
  `Company_ID` int(11) NOT NULL,
  PRIMARY KEY (`Company_ID`,`S_p`),
  CONSTRAINT `service_product_content_ibfk_1` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_product`
--

LOCK TABLES `service_product` WRITE;
/*!40000 ALTER TABLE `service_product` DISABLE KEYS */;
INSERT INTO `service_product` VALUES ('Datamarket.tw數據',1),('OpView網路社群分析平台',1),('PeopleView人群資料庫',1),('龍捲風搜尋平台(TDS)',1),('龍捲風語意分析平台(Torna',1),('裝修人員',2),('產品全部外銷：主要產品為 Po',3),('兒童及少年保護事件',4),('公司商務案件',4),('勞資爭議事件',4),('家庭暴力及性侵害等相關婦幼案件',4),('智慧財產權案件',4),('民、刑事訴訟',4),('行政救濟程序',4),('財稅及財經法律案件',4),('金融稅務案件',4),('照明設備銷售/規劃 ',5),('經營流行燈飾 ',5),('飛利浦LED照明 經銷商',5),('代理以色列SARINE鑽石分析',6),('代理新加坡PRESIDIUM儀',6),('代理日本CARTON顯微鏡',6),('代理日本島津SHIMADZU電',6),('代理美國DAZOR座燈',6),('代理美國UVP螢光鑑定儀',6),('3C電子產品的零件設備。',7),('其它相關的零件設備。',7),('手機的零件設備。',7),('電腦產品的零件設備。',7),('Mobile App 開發與設',8);
/*!40000 ALTER TABLE `service_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `skill` (
  `Skill_ID` int(11) NOT NULL,
  `Resume_ID` int(11) NOT NULL,
  `Language_skill` varchar(30) DEFAULT NULL,
  `Language_Level` varchar(30) DEFAULT NULL,
  `computer_skill` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Skill_ID`),
  KEY `Resume_ID` (`Resume_ID`),
  CONSTRAINT `skill_ibfk_1` FOREIGN KEY (`Resume_ID`) REFERENCES `resumes` (`resume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,1,'英文','全民英檢中高級通過','Linux'),(2,1,'西班牙文','DELE C1 通過','Linux'),(3,1,'法文','精通法文。','Java'),(4,2,'英文','TOEIC 990 / TOEFL120','C++'),(5,2,'德文','DAF A1通過','Python'),(6,2,'西班牙文','DELE A2通過','Window Shell'),(7,3,'日文','JLPT n1通過','Microsoft Office'),(8,3,'韓文','TOPIK 6等通過','C++'),(9,3,'英文','GRE 340分','Java'),(10,4,'印尼文','印尼語檢定A2通過','SQL'),(11,4,'馬來文','有馬來西亞居鑾中學畢業證書。','Linux'),(12,4,'韓文','TOPIK 3等通過','SQL'),(13,5,'盧森堡文','LaF A1通過','XML'),(14,5,'日文','JLPT n5通過','Java'),(15,5,'瑞典文','SWEDEX B2通過','Python'),(16,6,'英文','GRE 340分','Adobe Creative Cloud'),(17,6,'阿拉伯文','有多次至阿聯酋國家旅行之經驗','Excel'),(18,6,'匈牙利文','ECL A2通過','C++'),(19,7,'英文','多益850/990','Java'),(20,7,'韓文','TOPIK 3級通過','SQL'),(21,7,'西班牙文','DELE B1通過','Linux'),(22,8,'英文','托福95/120、多益910/990','Maya'),(23,8,'芬蘭文','Yleiset kielitutkinnot 檢定A1通過','CorelDraw'),(24,8,'日文','JLPT n4通過','Python'),(25,9,'土耳其文','TELC B1通過','Unix'),(26,9,'西班牙文','DELE C2通過','XML'),(27,9,'日文','JLPT n4通過','Linux'),(28,10,'日文','JLPT n4通過','C++'),(29,10,'緬甸文','MLT A1通過','Linux'),(30,10,'俄文','CATTI A1通過','Adobe Photoshop');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `Student_ID` varchar(9) NOT NULL,
  `Department` varchar(10) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('b01203041','化學系','a3453'),('b01203042','化學系','a3786'),('b01203043','化學系','a4119'),('b01203044','化學系','a4452'),('b01203045','化學系','a4785'),('b01203046','化學系','a5118'),('b01203047','化學系','a5451'),('b03701153','工商管理學系','a123'),('b03701154','工商管理學系','a456'),('b03701155','工商管理學系','a789'),('b03701156','工商管理學系','a1122'),('b03701157','工商管理學系','a1455'),('b03701158','工商管理學系','a1788'),('b03701159','工商管理學系','a2121'),('b03701160','工商管理學系','a2454'),('b03701161','工商管理學系','a2787'),('b03701162','工商管理學系','a3120'),('b03701176','物理學系','a7782'),('b03701177','物理學系','a8115'),('b03701178','物理學系','a8448'),('b03701179','物理學系','a8781'),('b05305201','社會學系','a5784'),('b05305202','社會學系','a6117'),('b05305203','社會學系','a6450'),('b05305204','社會學系','a6783'),('b05305205','社會學系','a7116'),('b05305206','社會學系','a7449'),('b07402101','牙醫學系','a9114'),('b07402102','牙醫學系','a9447'),('b07402103','牙醫學系','a9780');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `welfare`
--

DROP TABLE IF EXISTS `welfare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `welfare` (
  `Company_ID` int(11) NOT NULL,
  `Welfare` varchar(50) NOT NULL,
  PRIMARY KEY (`Company_ID`,`Welfare`),
  CONSTRAINT `welfare_ibfk_1` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `welfare`
--

LOCK TABLES `welfare` WRITE;
/*!40000 ALTER TABLE `welfare` DISABLE KEYS */;
INSERT INTO `welfare` VALUES (1,'員工分紅入股'),(1,'年節獎金、婚喪喜慶補助、急難求助補助'),(1,'年終尾牙摸彩晚會'),(1,'提供員工完善勞健保制度'),(1,'提供國內旅遊補助'),(1,'男性同仁陪產假'),(1,'福委會每月慶生會、定期舉辦各項休閒活動'),(1,'週休二日、人性化管理'),(1,'開放的溝通管道與晉升機會'),(2,'年終尾牙摸彩晚會'),(3,'上班比照公家機構，每天上班時數7.5小時(8:30~12:00/13:30~17:30)'),(3,'生日禮金、員工旅遊、婚喪補助'),(3,'週休二日、人性化管理'),(3,'除勞、健保外並提供醫療保險'),(4,'年終獎金'),(5,'三節獎金/禮品'),(5,'不定期部門聚餐 '),(5,'員工購物優惠'),(5,'國內外年度旅遊補助 '),(5,'國內旅遊'),(5,'國外旅遊'),(5,'年終獎金'),(5,'特休/年假'),(5,'符合勞基法權利保障：勞保、健保、6%勞退金'),(5,'週休二日'),(6,'三節獎金/禮品'),(6,'健保'),(6,'勞保'),(6,'員工團保'),(6,'年終獎金');
/*!40000 ALTER TABLE `welfare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_experience`
--

DROP TABLE IF EXISTS `work_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `work_experience` (
  `Resume_ID` int(11) NOT NULL,
  `Work_exp_ID` int(11) NOT NULL,
  `Work_exp_title` varchar(50) DEFAULT NULL,
  `Work_exp_content` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Work_exp_ID`),
  KEY `Resume_ID` (`Resume_ID`),
  CONSTRAINT `work_experience_ibfk_1` FOREIGN KEY (`Resume_ID`) REFERENCES `resumes` (`resume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_experience`
--

LOCK TABLES `work_experience` WRITE;
/*!40000 ALTER TABLE `work_experience` DISABLE KEYS */;
INSERT INTO `work_experience` VALUES (1,1,'王品牛排_外場工讀生','協助點餐、整理用餐環境。'),(1,2,'台大工管系系辦公室_行政工讀生','協助行政庶務、公文遞交。'),(1,3,'西雅圖牙醫診所_牙醫助理','協助醫療器具清洗、櫃台掛號事宜。'),(1,4,'Google_暑期實習生','在行銷、人資、專案部門間進行輪調，學習專案技巧、行銷文宣撰寫、影片剪輯，並於期末發表專題。'),(1,5,'益普索市調公司_行銷實習生','協助ppt製作、圖表繪製、行銷數據收集。'),(4,6,'創夢市集_產業分析實習生','協助孵化器進行各候選公司之產業狀況評估、製作分析報告。'),(4,7,'台大國際事務處_行政工讀生','協助公文遞交、日常庶務處理。'),(4,8,'全家活大店_夜班店員','協助貨品上架、消費者結帳、便利商店環境維護。'),(4,9,'麥當勞活大店_日班工讀生','於後台處理、維護食物相關事宜 (例如：炸薯條、炸雞塊、確保存放漢堡之食用期限)'),(4,10,'四海遊龍活大店_午班工讀生','協助櫃台點餐、後台食物處理事宜。'),(7,11,'金盃美活大店_工讀生','協助櫃台點餐、物料補給。'),(7,12,'八方雲集台大小福店_櫃台工讀生','協助後台食物處理事宜 (專司麵條處理)。'),(7,13,'摩斯漢堡台大小福店_工讀生','協助於中午用餐尖峰時刻至人潮處販售99元商業午餐，為公司帶來極大收益來源。另外也負責行銷宣傳，製作摩斯漢堡宣傳海報。'),(7,14,'金興發文具批發行台大小福店_工讀生','協助文具商品上架、補貨，維持環境秩序，協助櫃台庶務。'),(7,15,'智雄單車台大店_工讀生','工作內容主要在日常單車修理、維護事宜。'),(10,16,'義饗食堂台大店_外場工讀生','協助用餐環境之維護、定期支援櫃台點餐服務、協助回答民眾之相關問題。'),(10,17,'魯山人台大二活店_外場工讀生','工作主要內容為用餐環境之維護與不定期支援點餐。'),(10,18,'SUBWAY潛艇堡三明治台大二活店_櫃台工讀生','協助客人點餐，不定期參與餐廳宣傳海報與影片之製作。'),(10,19,'茄子洋廚台大二活店_行銷工讀生','協助粉絲專業之經營管理。'),(10,20,'酷碼創意工作坊台大二活店_行銷工讀生','協助酷碼粉絲專業之經營，拍攝酷碼粉絲專業之宣傳圖片，最高點閱率曾達1000人次。'),(13,21,'龐德羅莎_會計工讀生','協助餐廳之會計帳務維護項目。'),(13,22,'台大集思會議中心_行政工讀生','協助行政庶務之處理、公文之遞交。'),(13,23,'台大工管系郭瑞祥教授_研究助理','協助教授收集供應鏈領域之研究文獻、翻譯研究文獻之內容、定期與教授開會報告研究文獻之內容大綱。'),(13,24,'台大工管系劉怡靖教授_研究助理','協助教授進行團隊領域之研究文獻收集、參與團隊研究實驗之設計。'),(13,25,'台大工管系簡怡雯教授_教學助理','協助教授準備授課用ppt之製作、維護ceiba網頁並上傳教學相關檔案、將英文個案翻譯成中文。'),(16,26,'台大工管系陳家麟教授_教學助理','協助教授準備授課用ppt之製作，協助行政庶務內容，批改課程作業內容。'),(16,27,'台大資管系孔令傑教授_教學助理','製作與排版教授授課用ppt。在助教課上授課，協助同學在程式語言上的問題。'),(16,28,'台大工管系楊立偉教授_教學助理','協助行政庶務之處理、維護ceiba課程、回答同學問題。'),(16,29,'小飯館兒韓式餐廳_外場工讀生','協助點餐、維持用餐環境之衛生。'),(16,30,'韓天閣公館店_外場工讀生','協助點餐、維持用餐環境之衛生。');
/*!40000 ALTER TABLE `work_experience` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-23 19:56:11
