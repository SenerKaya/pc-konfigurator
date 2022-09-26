-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: backend
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration` (
  `configuration_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1499) DEFAULT NULL,
  `configuration_description` varchar(4999) DEFAULT NULL,
  `cpu_id` int NOT NULL,
  `gpu_id` int NOT NULL,
  `ram_id` int NOT NULL,
  `motherboard_id` int NOT NULL,
  `disk_storage_id` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`configuration_id`),
  KEY `cpu_id` (`cpu_id`),
  KEY `gpu_id` (`gpu_id`),
  KEY `ram_id` (`ram_id`),
  KEY `motherboard_id` (`motherboard_id`),
  KEY `disk_storage_id` (`disk_storage_id`),
  CONSTRAINT `configuration_ibfk_1` FOREIGN KEY (`cpu_id`) REFERENCES `cpu_unit` (`id`),
  CONSTRAINT `configuration_ibfk_2` FOREIGN KEY (`gpu_id`) REFERENCES `gpu_unit` (`id`),
  CONSTRAINT `configuration_ibfk_3` FOREIGN KEY (`ram_id`) REFERENCES `ram` (`id`),
  CONSTRAINT `configuration_ibfk_4` FOREIGN KEY (`motherboard_id`) REFERENCES `motherboard` (`id`),
  CONSTRAINT `configuration_ibfk_5` FOREIGN KEY (`disk_storage_id`) REFERENCES `disk_storage` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
INSERT INTO `configuration` VALUES (1,'Haushaltsbuero und Produktivitaets-PC','Dieser PC ist so konzipiert, dass er eine hervorragende Leistung fuer Aufgaben wie E-Mail, Surfen und Office-Anwendungen bietet. Er verfuegt ueber einen leistungsfaehigen Prozessor mit integrierter Grafik, viel Arbeitsspeicher fuer Multitasking und eine SSD fuer schnelle Leistung. Sie koennen ihn mit den vorgestellten Upgrade-Optionen an Ihre Beduerfnisse anpassen.',1,1,1,1,1,343.00),(2,'Hochwertiger Flugsimulator-PC - Intel','Dieser PC verwendet High-End-Komponenten, um das Beste aus anspruchsvollen Simulatoren herauszuholen. Wir kombinieren eine erstklassige Intel i9 CPU mit dem Z690 Chipsatz, um Ãœbertaktung und maximale Leistung zu ermoeglichen. Es werden 32 GB DDR5-RAM und eine Hochgeschwindigkeits-PCIe-4.0-Haupt-SSD verwendet. Die Grafikleistung wird von den neuesten High-End-GPUs von Nvidia bereitgestellt, wobei die RX 6900XT als Option erhaeltlich ist, wenn Sie dies bevorzugen. Wir unterstuetzen diese Schluesselkomponenten mit erstklassigen Motherboards, Gehaeusen und Netzteilen, damit Sie sicher sein koennen, dass Sie das Beste aus Flight Sim 2020, den neuesten AAA-Titeln und anderen aehnlichen Titeln herausholen koennen. Dieser PC wird auch bei anspruchsvollen Aufgaben wie Videobearbeitung und einer Vielzahl anderer Aktivitaeten glaenzen',2,2,2,2,2,2608.00),(3,'Hochwertiger 4K-Gaming-PC - Intel','Dieser PC verwendet eine erstklassige Grafikkarte und hochwertige Komponenten, um ein wirklich herausragendes Gaming-System zu schaffen. Er ermoeglicht Ihnen die beste Grafik, die derzeit bei anspruchsvollen AAA-Spielen moeglich ist, und spielt auch einfachere Titel mit hohen Bildraten. Auch Streaming ist mit Leichtigkeit moeglich. Obwohl er fuer Spiele optimiert ist, ist er vielseitig einsetzbar und bewaeltigt auch anspruchsvolle Aufgaben wie die Videobearbeitung mit Leichtigkeit. Dieser PC bietet die bestmoegliche Leistung und stellt dennoch sicher, dass kein Geld fuer unnoetige Overkill-Teile verschwendet wird.',3,3,3,3,3,2513.00),(4,'High-End-Videobearbeitungs-Workstation PC','Dieser PC verwendet die neuesten Komponenten, um die bestmoegliche Leistung in Anwendungen wie Adobe Premiere Pro, After Effects und DaVinci Resolve zu erzielen. Dank des Hochleistungsspeichers kann er problemlos grosses Quellmaterial mit hoher Bitrate verarbeiten und dank der ausgewaehlten leistungsstarken CPU und GPU das Material in hohem Tempo rendern. Wir haben dafuer gesorgt, dass die Kuehlung erstklassig ist, damit alles stabil und zuverlaessig bleibt. Wenn Sie ein 4K-Arbeitspferd brauchen, ist dies das Richtige fuer Sie.',4,4,4,4,4,2465.00),(5,'Hochwertiger Flugsimulator-PC - AMD','Dieser PC verwendet High-End-Komponenten, um das Beste aus anspruchsvollen Simulatoren herauszuholen. Wir haben uns fuer den AMD Ryzen 7 5800X3D entschieden, die derzeit leistungsstaerkste CPU fuer den Flugsimulator 2020, und bieten die Option eines 5900X oder 5950X, wenn Sie bei anderen Aufgaben 12 oder 16 Kerne fuer maximale Leistung benoetigen. Es werden 32 GB geschwindigkeitsoptimierter DDR4-RAM und eine Hochgeschwindigkeits-PCIe-4.0-Haupt-SSD verwendet. Die Grafikleistung wird von den neuesten High-End-GPUs von Nvidia bereitgestellt, wobei die RX 6900XT als Option erhaeltlich ist, wenn Sie dies bevorzugen. Wir unterstuetzen diese Schluesselkomponenten mit erstklassigen Motherboards, Gehaeusen und Netzteilen, damit Sie sicher sein koennen, dass Sie das Beste aus Flight Sim 2020, den neuesten AAA-Titeln und anderen aehnlichen Titeln herausholen koennen. Dank des 96 MB grossen Level-3-Vcache wird dieser PC auch in anderen Spielen brillieren.',5,5,5,5,5,2325.00),(6,'Hochwertiger 4K Gaming PC - AMD','Dieser PC praesentiert die beste Technologie, die AMD zu bieten hat, um Ihnen einen aussergewoehnlichen Gaming-PC zu bauen. Wir haben die besten Komponenten der aktuellen Generation ausgewaehlt, um einen PC zu liefern, der vielseitig ist und die anspruchsvollsten Spiele und Anwendungen bewaeltigen kann. Wenn Sie auf der Suche nach einem PC sind, mit dem Sie streamen, Ihr Filmmaterial bearbeiten, hochwertige Inhalte liefern und alle aktuellen Titel spielen koennen, dann ist dies der richtige PC fuer Sie! Mit den von uns definierten Optionen koennen Sie die Spezifikation an Ihre speziellen Beduerfnisse anpassen.',6,6,6,6,6,2176.00),(7,'Hochwertiger 1440p Gaming-PC - AMD','Dieser PC verwendet ausschliesslich hochwertige Komponenten, um ein herausragendes 1440p-Gaming-Erlebnis zu bieten. Er nutzt den fantastischen 12-Kern-Prozessor 5900X, um reichlich CPU-Leistung fuer Spiele, Streaming und vieles mehr zu bieten, und GPUs, die auf beste Leistung bei 1440p-Aufloesung ausgerichtet sind. Es gibt eine Reihe von AMDs besten CPUs im Angebot, wenn Sie Frameraten bevorzugen (5800X3D) oder andere anspruchsvolle Produktivitaetsarbeiten am PC erledigen muessen (5950X). Es ist darauf ausgerichtet, AAA-Titel mit hoechsten Grafikeinstellungen auszufuehren und wettbewerbsfaehige Online-Spiele mit sehr hohen Bildraten selbst bei dieser anspruchsvollen Aufloesung zu spielen. Dennoch haben wir darauf geachtet, dass Sie nur dort Geld ausgeben, wo Sie einen Nutzen davon haben, und wir haben Aufruestungsoptionen bereitgestellt, mit denen Sie Ihren perfekten PC individuell gestalten koennen.',7,7,7,7,7,1894.00),(8,'Hochwertiger 1440p Gaming-PC - Intel','Dieser PC verwendet ausschliesslich hochwertige Komponenten, um ein herausragendes 1440p-Gaming-Erlebnis zu bieten. Er ist darauf ausgelegt, AAA-Titel mit hoechsten Grafikeinstellungen auszufuehren und wettbewerbsfaehige Online-Spiele mit sehr hohen Bildraten selbst bei dieser anspruchsvollen Aufloesung zu spielen. Dennoch haben wir darauf geachtet, dass Sie nur dort Geld ausgeben, wo Sie einen Nutzen davon haben, und wir haben Aufruestungsoptionen bereitgestellt, mit denen Sie Ihren perfekten PC individuell gestalten koennen.',8,8,8,8,8,1881.00),(9,'Mittelklasse 4K Gaming PC - Intel','Dieser PC bietet ein ausgewogenes Verhaeltnis zwischen Leistung und Wert, um den perfekten Sweet Spot zu finden. Sie erhalten die gesamte Leistung, einige nette Funktionen und das Aussehen, ohne zu viel Geld auszugeben. Wir haben einer Hochleistungs-Grafikkarte den Vorzug gegeben, um das Beste aus der Grafik der neuesten 4K-Spiele herauszuholen, und sie mit einer starken CPU gepaart. Dieser PC ist ein fantastischer Allrounder, der gleichermassen gut zum Spielen und Arbeiten geeignet ist.',9,9,9,9,9,1689.00),(10,'Mittelklasse Flugsimulator PC - Intel','Dieser PC liefert eine fantastische Leistung im Microsoft Flight Simulator 2020, basierend auf unseren Tests und der Bewertung der aktuellen Komponenten. Er nutzt den leistungsstarken i7-12700K, optimierten Arbeitsspeicher und die allerbesten GPUs, um eine hervorragende Leistung bei 1440p oder 1440p Ultrawide zu liefern. Er ist auch zu guter VR-Leistung faehig. Fuer das letzte Quaentchen an zusaetzlicher Leistung koennen Sie die CPU aufruesten, aber wie angegeben trifft dieser PC den absoluten Sweet Spot in diesem Titel.',10,10,10,10,10,1685.00),(11,'Hochwertiger 1080p Gaming-PC - AMD','Dieser PC nutzt die besten Komponenten von AMD, um ein rasantes Gaming-Kraftpaket zu schaffen. Mit einer leistungsstarken Zen 3-CPU, optimiertem Arbeitsspeicher und einem leistungsstarken Grafikprozessor liefert er ultimative Leistung in Ego-Shootern und kompetitiven Online-Spielen. Nutzen Sie die Leistung einer Nvidia-GPU fuer Streaming mit minimalen Auswirkungen auf Ihr eigenes Spiel. Mit fantastischen Qualitaetskomponenten repraesentiert dieser PC die beste Leistung, die AMD bieten kann.',11,11,11,11,11,1617.00),(12,'Mittelklasse 4K Gaming PC - AMD','Dieser PC bietet ein ausgewogenes Verhaeltnis zwischen Leistung und Wert, um den perfekten Sweet Spot zu finden. Sie erhalten die gesamte Leistung, einige nette Funktionen und das Aussehen, ohne zu viel Geld auszugeben. Wir haben einer Hochleistungs-Grafikkarte den Vorzug gegeben, um das Beste aus der Grafik der neuesten 4K-Spiele herauszuholen, und sie mit einer starken CPU gepaart. Dieser PC ist ein fantastischer Allrounder, der gleichermassen gut zum Spielen und Arbeiten geeignet ist.',12,12,12,12,12,1614.00),(13,'Hochwertiger 1080p-Gaming-PC - Intel','Dieser PC nutzt unsere erstklassigen Komponenten, um einen herausragenden Gaming-PC zu liefern. Er zielt auf eine aussergewoehnlich hohe Leistung in kompetitiven Shootern und eine atemberaubende Grafik in den neuesten AAA-Titeln ab. Ausserdem koennen Sie Ihr Spiel muehelos streamen. Wir haben die leistungsfaehigsten Komponenten und einen leistungsstarken Grafikprozessor ausgewaehlt, um sicherzustellen, dass es Ihrem PC an nichts mangelt.',13,13,13,13,13,1609.00),(14,'Mittelklasse-Workstation fuer die Videobearbeitung PC','Dieser PC ist mit den neuesten Komponenten ausgestattet, um eine hervorragende Workstation fuer die Videobearbeitung zu bieten. Optimiert fuer Anwendungen der Adobe Suite (Premiere Pro, After Effects) sowie andere beliebte Bearbeitungssoftware, verwendet er einen Hochleistungsprozessor, SSDs und RAM, um sicherzustellen, dass Sie ungehindert arbeiten koennen. Wir haben uns fuer DDR4-RAM entschieden, da die Leistung in fast allen Situationen mit DDR5 identisch ist, aber erhebliche Kosten gespart werden koennen. Sie koennen aus einer Reihe von Nvidia-GPUs waehlen, um Ihren Workflow und das Rendering von Videos zu beschleunigen. Der empfohlene RTX 3060 verfuegt ueber 12 GB VRAM und die neuesten RTX-Tensorkerne, um die Erstellung von 3D-Inhalten und sogar maschinelles Lernen auf Einstiegsniveau zu ermoeglichen. Die Laufwerke wurden so ausgewaehlt, dass sie Spitzenleistung ohne uebermaessige Kosten bieten, sodass Sie je nach Bedarf Scratch- und Archivlaufwerke hinzufuegen koennen. Nach getaner Arbeit laeuft dieses System auch mit den neuesten Spielen gut!',14,14,14,14,14,1414.00),(15,'Mittelklasse Flugsimulator 2020 PC - AMD','Dieser PC ist fuer den Flight Simulator 2020 und aehnliche Simulatoren wie DCS World und XPlane 11 optimiert. Die Spezifikationen basieren auf unseren umfangreichen Tests, sodass wir zuversichtlich sind, dass dieser PC in dieser Preisklasse das Beste ist, was es gibt. Es zielt auf ein grossartiges 1440p-Simulationserlebnis zu einem optimalen Preis ab, und Sie koennen die Optionen so anpassen, dass sie zu Ihrem Budget und Ihrer gewuenschten Leistung passen. Die AMD Ryzen 7-CPU ist gleichwertig mit Intels Alder Lake i5-12600K/i7-12700, und sobald die CPU-Upgrade-Option auf den Ryzen 5800X3D verfuegbar ist, wird dieses Geraet zu einem Flight Sim Powerhouse!',15,15,15,15,15,1286.00),(16,'Mittelklasse 1440p Gaming PC - AMD','Dieser PC findet die Balance, indem er die besten Komponenten verwendet, ohne das Budget zu sprengen. Wir haben uns fuer eine leistungsstarke AMD Ryzen 5-CPU, 16 GB Arbeitsspeicher, die auf Geschwindigkeit optimiert sind, und eine leistungsstarke Grafikkarte entschieden. Mit diesem vielseitigen System koennen Sie die neuesten AAA-Spiele mit hohen Einstellungen und guten Bildraten spielen, und es laesst sich auch gut streamen.',16,16,16,16,16,1180.00),(17,'Mittelklasse 1440p Gaming PC - Intel','Dieser PC schafft den Spagat, die besten Komponenten zu verwenden, ohne das Budget zu sprengen. Wir haben uns fuer eine leistungsstarke Intel i5-CPU der 12. Generation, 16 GB RAM und eine leistungsstarke Grafikkarte entschieden. Mit diesem vielseitigen System koennen Sie die neuesten AAA-Spiele mit hohen Einstellungen und guten Frameraten spielen und auch gut streamen.',17,17,17,17,17,1165.00),(18,'Guenstiger 4K-Gaming-PC - Intel','Dieser PC verwendet preiswerte, aber leistungsstarke Komponenten und setzt auf eine leistungsstarke Grafikkarte, um das bestmoegliche 4K-Erlebnis fuer das Geld zu liefern. Die CPU und der Arbeitsspeicher sind fuer 4K 60FPS in anspruchsvollen AAA-Titeln optimiert, aber er ist ein vielseitiger Allrounder, der sich auch hervorragend fuer kreative oder administrative Arbeiten eignet.',18,18,18,18,18,1159.00),(19,'Einstiegs-PC fuer die Videobearbeitung','Dieser PC \nrichtet sich an Personen, die in die Videobearbeitung einsteigen und kurze, weniger komplexe \nProduktionen wie Werbespots, Geschaeftsfilme oder YouTube-Inhalte erstellen moechten. \nDennoch ist er in der Lage, 4K-Material zu verarbeiten und liefert eine hervorragende \nLeistung in Anwendungen wie Sony Vegas, Adobe Premiere Pro und DaVinci Resolve. \nWir kombinieren eine leistungsfaehige, kostenguenstige CPU mit 32 GB RAM und einer \nhochwertigen SSD fuer optimale Leistung zu diesem Preis. Ausserdem fuegen wir einen \nNvidia-Grafikprozessor hinzu, der viele Videobearbeitungsprozesse und -effekte sowie \nTranscodierungen und Renderings beschleunigt. Sie koennen den Grafikprozessor entfernen, \num die Anschaffungskosten zu senken. Der PC funktioniert dann zwar immer noch, aber \ndie Rendering-Leistung wird erheblich reduziert. Wir stellen eine Reihe von Speicheroptionen \nvor und empfehlen den Einbau einer separaten \"Scratch\"-SSD, um die fluessige Bearbeitung und \nDateiorganisation zu unterstuetzen. \nDieser PC stellt die beste Videoproduktionsleistung dar, die derzeit zu diesem \nPreis erhaeltlich ist.',19,19,19,19,19,1078.00),(20,'Mittelklasse 1080p Esports PC - AMD','Dieser Build stellt das beste Preis-Leistungs-Verhaeltnis dar, das AMD derzeit zu bieten hat. Wir haben eine fantastische Zen 3-CPU mit optimiertem RAM gepaart, um die Leistung zu steigern. Es zielt auf leistungsstarkes 1080p-Gaming ab, mit hohen Frameraten in kompetitiven Spielen und wunderbarer Grafik in AAA-Titeln. Wir haben uns fuer eine Nvidia-GPU entschieden, da sie in Fortnite eine ueberragende Leistung bietet und der Nvenc Encoder fuer das Streaming mitgeliefert wird, aber du kannst auch zu einer AMD-GPU wechseln, wenn du das moechtest.',20,20,20,20,20,1004.00),(21,'Einsteiger-Flugsimulator PC - Intel','Dieser PC ist fuer den Flight Simulator 2020 und aehnliche Simulatoren wie DCS World und X-Plane 11 optimiert. Die Spezifikationen basieren auf unseren umfangreichen Tests, sodass wir zuversichtlich sind, dass dieser PC in dieser Preisklasse das Beste ist, was es gibt. Sie zielt auf ein grossartiges 1080p-Simulationserlebnis zu einem optimalen Preis ab und Sie koennen die Optionen so anpassen, dass sie zu Ihrem Budget und Ihrer gewuenschten Leistung passen.',21,21,21,21,21,981.00),(22,'Einsteiger-Flugsimulator PC - AMD','Dieser PC ist fuer den Flight Simulator 2020 und aehnliche Simulatoren wie DCS World und X-Plane 11 optimiert. Die Spezifikationen basieren auf unseren umfangreichen Tests, sodass wir zuversichtlich sind, dass dieser PC in dieser Preisklasse das Beste ist, was es gibt. Sie zielt auf ein grossartiges 1080p-Simulationserlebnis zu einem optimalen Preis ab und Sie koennen die Optionen so anpassen, dass sie zu Ihrem Budget und Ihrer gewuenschten Leistung passen.',22,22,22,22,22,977.00),(23,'Mittelklasse 1080p Esports PC - Intel','Dieser PC nutzt die leistungsstarken und preiswerten Intel-CPUs der 12. Generation, um eine fantastische Spieleleistung zu liefern. Wir optimieren die Wahl des Motherboards und des Arbeitsspeichers, um sicherzustellen, dass Sie das Beste aus der CPU herausholen, und bieten 1 TB SSD-Speicher an. Wir haben uns fuer den RTX 3060-Grafikprozessor entschieden, weil er in Fortnite eine ueberragende Leistung erbringt und einen NVENC-Encoder fuer das Streaming enthaelt, aber wir bieten auch AMD-Optionen an, falls Sie dies bevorzugen. Dieser PC wird sowohl in kompetitiven Spielen mit hohen FPS als auch in AAA-Titeln brillieren.',23,23,23,23,23,966.00),(24,'Kompakter 1080p-Gaming-PC - AMD','Dieses Gehaeuse mit kleinem Formfaktor bietet viel Platz auf kleinem Raum! Er ist auf leistungsstarke 1080p-Spiele ausgerichtet und ideal, wenn Sie ihn mitnehmen muessen, wenig Platz haben oder einfach einen kleineren PC bevorzugen. Dank der vielseitigen Grafikkarte und der exzellenten Zen 3-CPU kommt er mit einer breiten Palette von Spielen gut zurecht. Das Gehaeuse wurde aufgrund seiner Flexibilitaet und des einfachen Aufbaus ausgewaehlt, wenn Sie neu im Bereich der PCs mit kleinem Formfaktor sind, sowie wegen seiner guten Kuehleigenschaften.',24,24,24,24,24,955.00),(25,'Preiswerter 1440p-Gaming-PC - Intel','Dieser PC verwendet preiswerte Komponenten und einen starken Grafikprozessor, um eine gute Leistung bei Spielen mit einer Aufloesung von 1440p zu erzielen. Alle Komponenten wurden sorgfaeltig ausgewaehlt, um Ihnen das Beste fuer Ihr Geld zu bieten. Er spielt AAA-Titel gut bei mittleren bis hohen Grafikeinstellungen und ist ideal fuer Strategie- und andere langsamere Titel geeignet, aber er wird auch bei anspruchsvolleren AAA-Titeln und schnellen Shootern gut abschneiden!',25,25,25,25,25,929.00),(26,'Mittelklasse 1080p Gaming PC - AMD','Dieses Build stellt das beste Preis-Leistungs-Verhaeltnis dar, das AMD derzeit zu bieten hat. Unter Ausnutzung der juengsten Zen 3-Rabatte erhalten Sie eine fantastische CPU und eine starke GPU zum gleichen Preis. Es zielt auf leistungsstarkes 1080p-Gaming ab, mit hohen Frameraten in kompetitiven Spielen und wunderbarer Grafik in AAA-Titeln.',26,26,26,26,26,924.00),(27,'Mittelklasse 1080p Gaming PC - Intel','Dieser PC verwendet die leistungsstarken und preiswerten Intel-CPUs der 12. Generation, um eine fantastische Spieleleistung zu erzielen. Wir optimieren die Wahl des Motherboards und des Arbeitsspeichers, um sicherzustellen, dass Sie das Beste aus der CPU herausholen, und bieten 1 TB SSD-Speicher an. Wir suchen nach dem niedrigsten Preis fuer GPUs, die eine gute Leistung bei 1080p-Aufloesung liefern. Dieser PC wird sowohl in kompetitiven Spielen mit hohen FPS als auch in AAA-Titeln brillieren.',27,27,27,27,27,886.00),(28,'Budget 1080p Esports Gaming PC - Intel','Dieser PC nutzt Intels preisguenstige, aber leistungsstarke 4-Kern-i3-CPU der 12. Generation, um eine grossartige Spieleleistung zu liefern, ohne das Budget zu sprengen. Er zielt auf Esports und weniger anspruchsvolle Titel bei 1080p ab, spielt aber auch AAA-Spiele und anspruchsvollere Titel bei reduzierten Einstellungen. Wir haben uns fuer die Nvidia-Grafikkarte entschieden, da sie speziell in Fortnite eine hoehere Leistung bietet, aber Sie koennen auch aus AMD-Optionen waehlen, wenn Sie dies bevorzugen. Wir stellen auch eine Reihe von preiswerten GPU-Upgrades vor, wenn Sie die Leistung ein wenig steigern moechten. Wir haben den Aufbau mit guenstigen Teilen fuer RAM, Speicher und Stromversorgung abgerundet, um sicherzustellen, dass Sie einen PC erhalten, der gut laeuft und den Test der Zeit uebersteht.',28,28,28,28,28,716.00),(29,'Gaming-PC der Einstiegsklasse mit 1080p - AMD','Dieser PC nutzt AMDs preisguenstige Ryzen-CPU, um grossartige Gaming-Leistung zu liefern, ohne die Bank zu sprengen. Er richtet sich an Esports und weniger anspruchsvolle Titel mit 1080p, spielt aber auch AAA-Spiele und anspruchsvollere Titel mit reduzierten Einstellungen. Die AMD RX 6500XT ist derzeit die guenstigste 1080p-Grafikkarte und bietet ein gutes Einstiegserlebnis. Wir stellen auch eine Reihe von GPU-Upgrades vor, wenn Sie die Leistung ein wenig steigern moechten. Wir haben den Aufbau mit preiswerten Teilen fuer RAM, Speicher und Netzteil abgerundet, um sicherzustellen, dass Sie einen PC erhalten, der gut laeuft und den Test der Zeit uebersteht.',29,29,29,29,29,584.00),(30,'Preiswerter 1080p-Gaming-PC - Intel','Dieser PC nutzt Intels preisguenstige, aber leistungsstarke 4-Kern-i3-CPU der 12. Generation, um eine grossartige Spieleleistung zu liefern, ohne das Budget zu sprengen. Er ist fuer Esports und weniger anspruchsvolle Titel mit 1080p ausgelegt, spielt aber auch AAA-Spiele und anspruchsvollere Titel mit reduzierten Einstellungen. Die PCIe 4.0-Faehigkeit sorgt dafuer, dass die empfohlene 6500XT optimal arbeitet und eine gute 1080p-Grafikloesung fuer Einsteiger darstellt. Wir stellen auch eine Reihe von preiswerten GPU-Upgrades vor, falls Sie die Leistung noch etwas steigern moechten. Wir haben den Aufbau mit preiswerten Teilen fuer RAM, Speicher und Netzteil abgerundet, um sicherzustellen, dass Sie einen PC erhalten, der gut laeuft und den Test der Zeit uebersteht.',30,30,30,30,30,577.00);
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpu_unit`
--

DROP TABLE IF EXISTS `cpu_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpu_unit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image_src` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpu_unit`
--

LOCK TABLES `cpu_unit` WRITE;
/*!40000 ALTER TABLE `cpu_unit` DISABLE KEYS */;
INSERT INTO `cpu_unit` VALUES (1,'Intel Core i3-10100',NULL),(2,'Intel Core i9-12900KF',NULL),(3,'Intel Core i7-12700KF',NULL),(4,'Intel Core i9-12900K',NULL),(5,'AMD Ryzen 7 5800X3D',NULL),(6,'AMD Ryzen 9 5900X',NULL),(7,'AMD Ryzen 9 5900X',NULL),(8,'Intel Core i7-12700KF',NULL),(9,'Intel Core i5-12600KF',NULL),(10,'Intel Core i7-12700KF',NULL),(11,'AMD Ryzen 7 5800X',NULL),(12,'AMD Ryzen 7 5800X',NULL),(13,'Intel Core i5-12600KF',NULL),(14,'Intel Core i7-12700',NULL),(15,'AMD Ryzen 7 5800X',NULL),(16,'AMD Ryzen 5 5600',NULL),(17,'Intel Core i5-12400',NULL),(18,'Intel Core i5-12400',NULL),(19,'Intel Core i5-12400',NULL),(20,'AMD Ryzen 5 5600',NULL),(21,'Intel Core i5-12400F',NULL),(22,'AMD Ryzen 5 5600X',NULL),(23,'Intel Core i5-12400F',NULL),(24,'AMD Ryzen 5 5600',NULL),(25,'Intel Core i5-10400F',NULL),(26,'AMD Ryzen 5 5600',NULL),(27,'Intel Core i5-12400F',NULL),(28,'Intel Core i3-12100',NULL),(29,'AMD Ryzen 5 5600',NULL),(30,'Intel Core i3-12100',NULL),(31,'AMD Ryzen 5 5600G',NULL);
/*!40000 ALTER TABLE `cpu_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disk_storage`
--

DROP TABLE IF EXISTS `disk_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disk_storage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image_src` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disk_storage`
--

LOCK TABLES `disk_storage` WRITE;
/*!40000 ALTER TABLE `disk_storage` DISABLE KEYS */;
INSERT INTO `disk_storage` VALUES (1,'Silicon Power P34A60 512 GB',NULL),(2,'Seagate FireCuda 520 2 TB',NULL),(3,'Crucial P5 Plus 2 TB',NULL),(4,'Seagate FireCuda 520 2 TB',NULL),(5,'Seagate FireCuda 520 2 TB',NULL),(6,'Seagate FireCuda 520 2 TB',NULL),(7,'Crucial P5 Plus 2 TB',NULL),(8,'Crucial P5 Plus 2 TB',NULL),(9,'PNY XLR8 CS03040 1 TB',NULL),(10,'Silicon Power P34A80 1 TB',NULL),(11,'Seagate FireCuda 520 2 TB',NULL),(12,'PNY XLR8 CS03040 1 TB',NULL),(13,'Seagate FireCuda 520 2 TB',NULL),(14,'Crucial P5 Plus 1 TB',NULL),(15,'Silicon Power A60 1 TB',NULL),(16,'Silicon Power A60 1 TB',NULL),(17,'Silicon Power A60 1 TB',NULL),(18,'Silicon Power A60 1 TB',NULL),(19,'PNY XLR8 CS03040 1 TB',NULL),(20,'Silicon Power A60 1 TB',NULL),(21,'Silicon Power A60 1 TB',NULL),(22,'Silicon Power A60 1 TB',NULL),(23,'Silicon Power A60 1 TB',NULL),(24,'Silicon Power A60 1 TB',NULL),(25,'Silicon Power A60 1 TB',NULL),(26,'Silicon Power A60 1 TB',NULL),(27,'Silicon Power A60 1 TB',NULL),(28,'Silicon Power P34A60 512 GB',NULL),(29,'Silicon Power P34A60 512 GB',NULL),(30,'Silicon Power P34A60 512 GB',NULL),(31,'Silicon Power A60 1 TB',NULL);
/*!40000 ALTER TABLE `disk_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gpu_unit`
--

DROP TABLE IF EXISTS `gpu_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gpu_unit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image_src` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gpu_unit`
--

LOCK TABLES `gpu_unit` WRITE;
/*!40000 ALTER TABLE `gpu_unit` DISABLE KEYS */;
INSERT INTO `gpu_unit` VALUES (1,'Integrated graphics',NULL),(2,'MSI RTX 3080 Ti Gaming X TRIO',NULL),(3,'EVGA RTX 3080 Ti FTW3 Ultra Gaming',NULL),(4,'Asus RTX 3080 12GB LHR TUF Gaming OC',NULL),(5,'MSI RTX 3080 Ti Gaming X TRIO',NULL),(6,'PowerColor RX 6900 XT Red Devil Ultimate',NULL),(7,'Gigabyte RTX 3070 Ti Gaming OC',NULL),(8,'Gigabyte RTX 3070 Ti Gaming OC',NULL),(9,'Gigabyte RTX 3080 10GB LHR Gaming OC Rev 2.0',NULL),(10,'Gigabyte RTX 3070 Ti Gaming OC',NULL),(11,'EVGA RTX 3070 LHR FTW3 Ultra Gaming iCX3',NULL),(12,'Gigabyte RTX 3080 10GB LHR Gaming OC Rev 2.0',NULL),(13,'PNY RTX 3070 XLR8 Gaming REVEL EPIC-X RGB',NULL),(14,'Gigabyte RTX 3060 GV-N3060Eagle OC12GD',NULL),(15,'PNY RTX 3070 XLR8 Gaming REVEL EPIC-X RGB',NULL),(16,'PNY RTX 3070 XLR8 Gaming REVEL EPIC-X RGB',NULL),(17,'PNY RTX 3070 XLR8 Gaming REVEL EPIC-X RGB',NULL),(18,'PNY RTX 3070 XLR8 Gaming REVEL EPIC-X RGB',NULL),(19,'Gigabyte RTX 3050 8GB EAGLE OC',NULL),(20,'Gigabyte RTX 3060 GV-N3060Eagle OC12GD',NULL),(21,'Gigabyte RTX 3060 GV-N3060Eagle OC12GD',NULL),(22,'Gigabyte RTX 3060 GV-N3060Eagle OC12GD',NULL),(23,'Gigabyte RTX 3060 GV-N3060Eagle OC12GD',NULL),(24,'PowerColor RX 6600 XT Fighter',NULL),(25,'Gigabyte RTX 3060 Ti Gaming OC',NULL),(26,'PowerColor RX 6600 XT Fighter',NULL),(27,'PowerColor RX 6600 XT Fighter',NULL),(28,'Gigabyte RTX 3050 8GB EAGLE OC',NULL),(29,'Sapphire RX 6500 XT PULSE',NULL),(30,'Sapphire RX 6500 XT PULSE',NULL),(31,'Integrated graphics',NULL);
/*!40000 ALTER TABLE `gpu_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motherboard`
--

DROP TABLE IF EXISTS `motherboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motherboard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image_src` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motherboard`
--

LOCK TABLES `motherboard` WRITE;
/*!40000 ALTER TABLE `motherboard` DISABLE KEYS */;
INSERT INTO `motherboard` VALUES (1,'MSI B560M Pro',NULL),(2,'Asus ROG Strix Z690-F Gaming WiFi',NULL),(3,'Asus ROG Strix Z690-F Gaming WiFi',NULL),(4,'ASRock Z690 Extreme',NULL),(5,'Gigabyte X570S AERO G',NULL),(6,'Gigabyte X570S AERO G',NULL),(7,'Asus TUF Gaming X570-Pro WiFi',NULL),(8,'ASRock Z690 Extreme WiFi 6E',NULL),(9,'ASRock Z690 Extreme WiFi 6E',NULL),(10,'ASRock Z690 Extreme',NULL),(11,'Gigabyte B550 Aorus Elite AX V2',NULL),(12,'Asus TUF Gaming B550-Plus',NULL),(13,'ASRock Z690 Extreme WiFi 6E',NULL),(14,'ASRock Z690 Extreme',NULL),(15,'Asus TUF Gaming B550-Plus',NULL),(16,'Asus TUF Gaming B550-Plus',NULL),(17,'MSI PRO B660M-A DDR4',NULL),(18,'Asus PRIME B660M-A D4',NULL),(19,'Gigabyte B660 Aorus Master DDR4',NULL),(20,'Gigabyte B550M Aorus Pro-P',NULL),(21,'Asus PRIME B660M-A D4',NULL),(22,'MSI B550M-A Pro',NULL),(23,'MSI PRO B660M-A DDR4',NULL),(24,'Gigabyte B550I Aorus Pro AX',NULL),(25,'MSI B560M-A Pro',NULL),(26,'Gigabyte B550M Aorus Pro-P',NULL),(27,'MSI PRO B660M-A DDR4',NULL),(28,'Gigabyte B660M DS3H DDR4',NULL),(29,'MSI B550M-A Pro',NULL),(30,'Gigabyte B660M DS3H DDR4',NULL),(31,'Gigabyte B550M Aorus Pro-P',NULL);
/*!40000 ALTER TABLE `motherboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ram`
--

DROP TABLE IF EXISTS `ram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ram` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image_src` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ram`
--

LOCK TABLES `ram` WRITE;
/*!40000 ALTER TABLE `ram` DISABLE KEYS */;
INSERT INTO `ram` VALUES (1,'Corsair Vengeance LPX 16GB, DDR4-3600',NULL),(2,'Corsair Vengeance 32 GB DDR5-5600 CL36',NULL),(3,'Corsair Vengeance 32 GB DDR5-5600 CL36',NULL),(4,'G.Skill Ripjaws V 64 GB DDR4-3200 CL16',NULL),(5,'G.Skill Ripjaws V 32 GB DDR4-3600 CL16',NULL),(6,'G.Skill Ripjaws V 32 GB DDR4-3600 CL16',NULL),(7,'Corsair Vengeance LPX 32 GB DDR4-3600 CL16',NULL),(8,'Corsair Vengeance LPX 32 GB DDR4-3600 CL16',NULL),(9,'G.Skill Ripjaws V 16 GB DDR4-3600 CL16',NULL),(10,'Team T-Create Expert 32 GB DDR4-3600 CL18',NULL),(11,'G.Skill Ripjaws V 16 GB DDR4-3600 CL16',NULL),(12,'G.Skill Ripjaws V 16 GB DDR4-3600 CL16',NULL),(13,'G.Skill Ripjaws V 16 GB DDR4-3600 CL16',NULL),(14,'Corsair Vengeance LPX 16GB, DDR4-3600',NULL),(15,'G.Skill Ripjaws V 16 GB DDR4-3600 CL16',NULL),(16,'G.Skill Ripjaws V 16 GB DDR4-3600 CL16',NULL),(17,'Corsair Vengeance LPX 16GB, DDR4-3600',NULL),(18,'Corsair Vengeance LPX 16GB, DDR4-3600',NULL),(19,'Corsair Vengeance LPX 16GB, DDR4-3600',NULL),(20,'G.Skill Ripjaws V 16 GB DDR4-3600 CL16',NULL),(21,'Corsair Vengeance LPX 16GB, DDR4-3600',NULL),(22,'Team T-Force Dark Za 16 GB DDR4-3600 CL18',NULL),(23,'Corsair Vengeance LPX 16GB, DDR4-3600',NULL),(24,'Team T-Force Dark Za 16 GB DDR4-3600 CL18',NULL),(25,'Corsair Vengeance LPX 16GB, DDR4-3600',NULL),(26,'G.Skill Ripjaws V 16 GB DDR4-3600 CL16',NULL),(27,'Corsair Vengeance LPX 16GB, DDR4-3600',NULL),(28,'Corsair Vengeance LPX 16GB, DDR4-3600',NULL),(29,'Corsair Vengeance LPX 16GB, DDR4-3600',NULL),(30,'Corsair Vengeance LPX 16GB, DDR4-3600',NULL),(31,'Team T-Force Dark Za 16 GB DDR4-3600 CL18',NULL);
/*!40000 ALTER TABLE `ram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registered` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('37e6a707-0a1a-4c14-9bf7-93d0237ae4bc','Sener Kaya','$2a$10$mEhGU4K/d0h77IudhjEjVu3nAj7AdbxUBjNJw.qj1wW5YiXJ.fWf.','2022-09-24 23:44:16','2022-09-24 23:44:50'),('9fde99f5-fbbb-4781-b7d8-dae03e314071','sener','$2a$10$vdZswRkqJnzas507NuWKTOtY9g9P9PmUBMdQRtjj03Ju51KWBs8J2','2022-09-25 00:13:01','2022-09-26 13:33:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'backend'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 14:37:11
