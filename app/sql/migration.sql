/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Андрей Богуславский'),(2,'Марк Саммерфильд'),(3,'М., Вильямс'),(4,'Уэс Маккинни'),(5,'Брюс Эккель'),(7,'Дэвид Флэнаган'),(8,'Гэри Маклин Холл'),(9,'Джеймс Р. Грофф'),(10,'Люк Веллинг'),(11,'Сергей Мастицкий'),(12,'Джон Вудкок'),(13,'Джереми Блум'),(14,'А. Белов'),(15,'Сэмюэл Грингард'),(16,'Сет Гринберг'),(17,'Александр Сераков'),(18,'Тим Кедлек'),(20,'Роберт Мартин'),(21,'Энтони Грей'),(23,'Джей Макгаврен'),(24,'Дрю Нейл'),(32,'Томас Кормен'),(33,'Чарльз Лейзерсон'),(34,'Рональд Ривест'),(35,'Клиффорд Штайн'),(36,'Пол Дейтел'),(37,'Харви Дейтел'),(38,'Мартин Фаулер'),(39,'Прамодкумар Дж. Садаладж');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors_books`
--

DROP TABLE IF EXISTS `authors_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors_books` (
  `author_id` int DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  KEY `authors_books_ibfk_1` (`author_id`),
  KEY `authors_books_ibfk_2` (`book_id`),
  CONSTRAINT `authors_books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `authors_books_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors_books`
--

LOCK TABLES `authors_books` WRITE;
/*!40000 ALTER TABLE `authors_books` DISABLE KEYS */;
INSERT INTO `authors_books` VALUES (1,22),(2,23),(3,25),(4,26),(5,27),(7,31),(8,32),(9,33),(10,34),(11,35),(12,36),(13,37),(14,38),(15,39),(16,40),(17,41),(18,42),(20,44),(21,45),(23,47),(24,48),(32,49),(33,49),(34,49),(35,49),(36,50),(37,50),(38,51),(39,51);
/*!40000 ALTER TABLE `authors_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_table`
--

DROP TABLE IF EXISTS `basic_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `year` int NOT NULL,
  `pages` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `visiters` int NOT NULL DEFAULT '0',
  `wanted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_table`
--

LOCK TABLES `basic_table` WRITE;
/*!40000 ALTER TABLE `basic_table` DISABLE KEYS */;
INSERT INTO `basic_table` VALUES (22,'СИ++ И КОМПЬЮТЕРНАЯ ГРАФИКА','Андрей Богуславский',2003,351,'Лекции и практикум по программированию на Си++',4,0),(23,'Программирование на языке Go!','Марк Саммерфильд',2016,550,'Перед вами практическое руководство по Go, революционно новому языку программирования со встроенной поддержкой параллельного программирования, который упрощает разработку программ для многопроцессорных систем.',0,0),(25,'Толковый словарь сетевых терминов и аббревиатур','М., Вильямс',2002,368,'Этот словарь представляет собой наиболее полное и свежее собрание терминов и аббревиатур, которые применяются в области сетевых технологий.',2,0),(26,'Python for Data Analysis','Уэс Маккинни',2020,540,'В книге \"Python и анализ данных\" рассматриваются вопросы переформатирования, очистки и обработки данных на Python.',0,0),(27,'Thinking in Java (4th Edition)','Брюс Эккель',2022,1168,'Впервые читатель может познакомиться с полной версией этого классического труда, который ранее на русском языке печатался в сокращении. ',0,0),(29,'Introduction to Algorithms','Томас Кормен, Чарльз Лейзерсон, Рональд Ривест, Клиффорд Штайн',2009,1292,'Some books on algorithms are rigorous but incomplete; others cover masses of material but lack rigor. Introduction to Algorithms uniquely combines rigor and comprehensiveness.',0,0),(31,'JavaScript Pocket Reference','Дэвид Флэнаган',2021,722,'JavaScript — это язык программирования для веб-сети, который в настоящее время используется большим количеством разработчиков программного обеспечения, чем любой другой язык программирования.',0,0),(32,'Adaptive Code via C#: Class and Interface Design, Design Patterns, and SOLID Principles','Гэри Маклин Холл',2014,432,'В этой книге рассматриваются практические вопросы гибкой разработки адаптивного кода с помощью проектных шаблонов и принципов SOLID: единственной ответственности, открытости-закрытости, подстановки Лисков, разделения интерфейса, внедрения зависимостей.',0,0),(33,'SQL: The Complete Referenc','Джеймс Р. Грофф',2009,912,'Publisher\'s Note: Products purchased from Third Party sellers are not guaranteed by the publisher for quality,  authenticity, or access to any online entitlements included with the product.',0,0),(34,'PHP and MySQL Web Development','Люк Веллинг',2008,968,'Provides an in-depth guide to combining the two open source tools to create dynamic Web sites, updated to incorporate the new features of PHP 5.1 and MySQL 5.1',0,0),(35,'Статистический анализ и визуализация данных с помощью R','Сергей Мастицкий',2015,496,'Come let us be friends for once. Let us make life easy on us. Let us be loved ones and lovers. The earth shall be left to no one.',0,0),(36,'Computer Coding for Kid','Джон Вудкок',2019,224,'Techy kids will getting to grips with Scratch 3.0 using this beginner\'s guide to coding.',0,0),(37,'Exploring Arduino: Tools and Techniques for Engineering Wizardry','Джереми Блум',2019,512,'The bestselling beginner Arduino guide, updated with new projects!',0,0),(38,'Программирование микроконтроллеров для начинающих и не только','А. Белов',2016,352,'Книга позволит изучить сразу два языка программирования для микроконтроллеров (язык Ассемблера и язык СИ).',0,0),(39,'The Internet of Things','Сэмюэл Грингард',2016,190,'Уявіть: ви сідаєте в машину, берете в руки книгу і відправляєтеся в дорогу.',0,0),(40,'Sketching User Experiences: The Workbook','Сет Гринберг',2011,272,'Sketching Working Experience: The Workbook provides information about the step-by-step process of the different sketching techniques.',0,0),(41,'InDesign CS6','Александр Сераков',2013,208,'\"InDesign CS6\". Александр Сераков. Автор книги - официальный спикер компании Adobe Systems в России.',0,0),(42,'Адаптивный дизайн. Делаем сайты для любых устройств','Тим Кедлек',2013,288,'Новые устройства и платформы появляются каждый день. У разработчиков мобильных приложений и сайтов существует реальная проблема: как корректно и качественно отобразить весь контент на экране любого размера и соотношения сторон. ',0,0),(43,'Android для разработчиков','Пол Дейтел, Харви Дейтел',2014,384,'Более миллиона человек во всем мире воспользовались книгами Дейтелов, чтобы освоить Java, C#, C++, C, веб-программирование, JavaScript, XML, Visual Basic, Visual C++, Perl, Python и другие языки программирования.',0,0),(44,'Clean Code: A Handbook of Agile Software Craftsmanship','Роберт Мартин',2008,464,'Clean Code is divided into three parts. The first describes the principles, patterns, and practices of writing clean code.',0,0),(45,'Swift Pocket Reference: Programming for iOS and OS X','Энтони Грей',2021,544,'Мечтаете стать iOS-разработчиком, написать собственное приложение и работать в крутой компании? Тогда эта книга для вас!',0,0),(46,'NoSQL Distilled: A Brief Guide to the Emerging World of Polyglot Persistence','Мартин Фаулер, Прамодкумар Дж. Садаладж',2019,192,'Необходимость обрабатывать все более крупные объемы данных является одним из факторов, влияющих на внедрение нового класса нереляционных баз данных NoSQL.',0,0),(47,'Head First Ruby','Джей Макгаврен',2016,656,'Вам интересно, почему буквально все вокруг заговорили о языке Ruby? Спросите себя прямо: вам нравится работать эффективно?',0,0),(48,'Practical Vim','Дрю Нейл',2017,392,'Vim – быстрый и эффективный текстовый редактор, способный повысить скорость и эффективность разработки.',1,0);
/*!40000 ALTER TABLE `basic_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `pages` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `visiters` int DEFAULT '0',
  `wanted` int DEFAULT '0',
  `deletion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (22,'СИ++ И КОМПЬЮТЕРНАЯ ГРАФИКА',2003,351,'Лекции и практикум по программированию на Си++',4,0,NULL),(23,'Программирование на языке Go!',2016,550,'Перед вами практическое руководство по Go, революционно новому языку программирования со встроенной поддержкой параллельного программирования, который упрощает разработку программ для многопроцессорных систем.',0,0,NULL),(25,'Толковый словарь сетевых терминов и аббревиатур',2002,368,'Этот словарь представляет собой наиболее полное и свежее собрание терминов и аббревиатур, которые применяются в области сетевых технологий.',2,0,NULL),(26,'Python for Data Analysis',2020,540,'В книге \"Python и анализ данных\" рассматриваются вопросы переформатирования, очистки и обработки данных на Python.',0,0,NULL),(27,'Thinking in Java (4th Edition)',2022,1168,'Впервые читатель может познакомиться с полной версией этого классического труда, который ранее на русском языке печатался в сокращении. ',0,0,NULL),(31,'JavaScript Pocket Reference',2021,722,'JavaScript — это язык программирования для веб-сети, который в настоящее время используется большим количеством разработчиков программного обеспечения, чем любой другой язык программирования.',0,0,NULL),(32,'Adaptive Code via C#: Class and Interface Design, Design Patterns, and SOLID Principles',2014,432,'В этой книге рассматриваются практические вопросы гибкой разработки адаптивного кода с помощью проектных шаблонов и принципов SOLID: единственной ответственности, открытости-закрытости, подстановки Лисков, разделения интерфейса, внедрения зависимостей.',0,0,NULL),(33,'SQL: The Complete Referenc',2009,912,'Publisher\'s Note: Products purchased from Third Party sellers are not guaranteed by the publisher for quality,  authenticity, or access to any online entitlements included with the product.',0,0,NULL),(34,'PHP and MySQL Web Development',2008,968,'Provides an in-depth guide to combining the two open source tools to create dynamic Web sites, updated to incorporate the new features of PHP 5.1 and MySQL 5.1',0,0,NULL),(35,'Статистический анализ и визуализация данных с помощью R',2015,496,'Come let us be friends for once. Let us make life easy on us. Let us be loved ones and lovers. The earth shall be left to no one.',0,0,NULL),(36,'Computer Coding for Kid',2019,224,'Techy kids will getting to grips with Scratch 3.0 using this beginner\'s guide to coding.',0,0,NULL),(37,'Exploring Arduino: Tools and Techniques for Engineering Wizardry',2019,512,'The bestselling beginner Arduino guide, updated with new projects!',0,0,NULL),(38,'Программирование микроконтроллеров для начинающих и не только',2016,352,'Книга позволит изучить сразу два языка программирования для микроконтроллеров (язык Ассемблера и язык СИ).',0,0,NULL),(39,'The Internet of Things',2016,190,'Уявіть: ви сідаєте в машину, берете в руки книгу і відправляєтеся в дорогу.',0,0,NULL),(40,'Sketching User Experiences: The Workbook',2011,272,'Sketching Working Experience: The Workbook provides information about the step-by-step process of the different sketching techniques.',0,0,NULL),(41,'InDesign CS6',2013,208,'\"InDesign CS6\". Александр Сераков. Автор книги - официальный спикер компании Adobe Systems в России.',0,0,NULL),(42,'Адаптивный дизайн. Делаем сайты для любых устройств',2013,288,'Новые устройства и платформы появляются каждый день. У разработчиков мобильных приложений и сайтов существует реальная проблема: как корректно и качественно отобразить весь контент на экране любого размера и соотношения сторон. ',0,0,NULL),(44,'Clean Code: A Handbook of Agile Software Craftsmanship',2008,464,'Clean Code is divided into three parts. The first describes the principles, patterns, and practices of writing clean code.',0,0,NULL),(45,'Swift Pocket Reference: Programming for iOS and OS X',2021,544,'Мечтаете стать iOS-разработчиком, написать собственное приложение и работать в крутой компании? Тогда эта книга для вас!',0,0,NULL),(47,'Head First Ruby',2016,656,'Вам интересно, почему буквально все вокруг заговорили о языке Ruby? Спросите себя прямо: вам нравится работать эффективно?',0,0,NULL),(48,'Practical Vim',2017,392,'Vim – быстрый и эффективный текстовый редактор, способный повысить скорость и эффективность разработки.',1,0,NULL),(49,'Introduction to Algorithms',2009,1292,'Some books on algorithms are rigorous but incomplete; others cover masses of material but lack rigor. Introduction to Algorithms uniquely combines rigor and comprehensiveness.',0,0,NULL),(50,'Android для разработчиков',2014,384,'Более миллиона человек во всем мире воспользовались книгами Дейтелов, чтобы освоить Java, C#, C++, C, веб-программирование, JavaScript, XML, Visual Basic, Visual C++, Perl, Python и другие языки программирования.',0,0,NULL),(51,'NoSQL Distilled: A Brief Guide to the Emerging World of Polyglot Persistence',2019,192,'Необходимость обрабатывать все более крупные объемы данных является одним из факторов, влияющих на внедрение нового класса нереляционных баз данных NoSQL.',0,0,NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

