CREATE DATABASE  IF NOT EXISTS `videojuegos` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `videojuegos`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: videojuegos
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `idcompra` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `iddetalle` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcompra`),
  KEY `FK_idusuario_idx` (`idusuario`),
  CONSTRAINT `FK_idusuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle`
--

DROP TABLE IF EXISTS `detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle` (
  `iddetalle` int(11) NOT NULL AUTO_INCREMENT,
  `idcompra` int(11) NOT NULL,
  `idvideojuego` int(11) NOT NULL,
  PRIMARY KEY (`iddetalle`),
  KEY `FK_idcompra_idx` (`idcompra`),
  KEY `FK_idvideojuego_idx` (`idvideojuego`),
  CONSTRAINT `FK_idcompra` FOREIGN KEY (`idcompra`) REFERENCES `compra` (`idcompra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_idvideojuego` FOREIGN KEY (`idvideojuego`) REFERENCES `videojuego` (`idvideojuego`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle`
--

LOCK TABLES `detalle` WRITE;
/*!40000 ALTER TABLE `detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plataforma`
--

DROP TABLE IF EXISTS `plataforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plataforma` (
  `idplataforma` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `empresa` varchar(45) NOT NULL,
  `lanzamiento` varchar(45) NOT NULL,
  PRIMARY KEY (`idplataforma`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plataforma`
--

LOCK TABLES `plataforma` WRITE;
/*!40000 ALTER TABLE `plataforma` DISABLE KEYS */;
INSERT INTO `plataforma` VALUES (1,'PlayStation 4','Sony','2014'),(2,'XBOX One',' Microsoft','2014'),(3,'pc','valve','2000'),(4,'switch','nintendo','2017');
/*!40000 ALTER TABLE `plataforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Juan','spalla valenciano','juan chabas 23','admin','admin123');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videojuego`
--

DROP TABLE IF EXISTS `videojuego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videojuego` (
  `idvideojuego` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `precio` double NOT NULL,
  `categoria` enum('accion','arcade','aventura','beatemup','deportes','estrategia','lucha','puzzle','retro','shootemup','survival','terror') NOT NULL,
  `año` varchar(45) NOT NULL,
  `idplataforma` int(11) NOT NULL,
  `imagen` varchar(45) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` mediumtext NOT NULL,
  PRIMARY KEY (`idvideojuego`),
  UNIQUE KEY `idvideojuego` (`idvideojuego`),
  KEY `FK_idplataforma_idx` (`idplataforma`),
  CONSTRAINT `FK_idplataforma` FOREIGN KEY (`idplataforma`) REFERENCES `plataforma` (`idplataforma`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videojuego`
--

LOCK TABLES `videojuego` WRITE;
/*!40000 ALTER TABLE `videojuego` DISABLE KEYS */;
INSERT INTO `videojuego` VALUES (3,'Assassin`s Creed: Syndicate',59.9,'accion','Noviembre 2013',1,'assassinGrande.jpg',45,'El peculiar enfrentamiento entre Assassins y Templarios de esta entrega nos traslada a la impresionante capital británica en el siglo XIX, justo en plena Revolución Industrial. Desde Buckingham Palace a Whitechapel pasando por los túneles subterráneos, el gigantesco mundo abierto del Londres Victoriano es fiel testigo de una revolución histórica, pero también de una revolución de las clases trabajadoras que, de forma clandestina, se organizan en bandas para sobrevivir y luchar por la igualdad en una aventura con muchas misiones de liberación de niños y mujeres poco menos que esclavizados.'),(4,'Mafia III',59.9,'accion','Octubre 2016',3,'mafiaGrande.jpg',33,'Tercer episodio de la serie Mafia inspirada en el mundo criminal, y de larga tradición en las propuestas de mundo abierto desde sus orígenes ambientados en la época clásica de los gángsters y la ley seca.'),(5,'Killing Floor 2',59.9,'accion','Noviembre 2016',1,'killingGrande.jpg',10,'Segunda entrega de la serie Killing Floor que se caracterizará por ser \"un juego tan enfermizo como sea posible\". El videojuego de acción está cargado de desmembramientos, explosiones de cuerpos y balas volando en todas direcciones, haciendo gala \"del sistema gore más avanzado hasta la fecha\". En resumen: un shooter descerebrado, frenético y cargado de adrenalina donde no sólo importa matar, sino también hacerlo más rápido y de forma más efectiva que nadie.'),(6,'Watch Dogs 2',59.9,'accion','Noviembre 2016',2,'watchGrande.jpg',93,'Es la secuela del videojuego de aventura, acción e infiltración Watch Dogs donde el jugador encarnaba a Aiden, un hacker con grandes habilidades. Basado en el uso de las nuevas tecnologías y con la habilidad de hackear para alcanzar sus objetivos, la historia del lanzamiento evoluciona en un universo moderno, abierto y siempre conectado que, en esta ocasión, nos lleva a la bella ciudad de San Francisco en la costa californiana.'),(7,'For Honor',59.9,'accion','Febrero 2017',1,'forhonorGrande.jpg',33,'Título medieval con especial énfasis en la cooperación entre varios jugadores por equipos, para este videojuego de violentos combates y poderoso apartado gráfico que se cuenta entre las propuestas de nueva IP más diferentes y originales que se han visto con esa temática.'),(8,'Jotun: Valhalla Editionr',59.9,'accion','Septiembre 2016',4,'jotunGrande.jpg',12,'De la mitología nórdica nace esta épica aventura de acción y exploración protagonizada por una guerrera vikinga, Thora, que tras morir en un naufragio debe mostrar su valía haciendo frente a poderosos gigantes en el reino de los dioses. Jotun: Valhalla Edition se inspira en obras como Shadow of the Colossus y Journey al combinar épicas peleas contra enemigos de proporciones gigantescas, con la exploración de una amplia variedad de enigmáticos escenarios con muchos misterios en su interior.'),(9,'Mario Kart 8',59.9,'arcade','Abril 2017',4,'marioGrande.jpg',97,'Locas carreras de Nintendo a Wii U. Mario, Luigi, Bowser y compañía vuelven a ponerse al volante de varios bólidos con características propias, ¡esta vez jugando con la gravedad! Arriba, abajo ¡nada importa en este videojuego!, en el que tan pronto compites sobre una pista de asfalto, como lo haces recorriendo las paredes de un gran castillo o ejecutando saltos imposibles en mitad de un aeropuerto.'),(10,'Sonic & Sega All Stars Racing',59.9,'arcade','Febrero 2010',4,'sonicGrande.jpg',2,'personajes del mundo de Sega se suben a todo tipo de vehículos para disputar alocadas carreras en este juego de corte Mario Kart. Cada personaje tiene un movimiento específico y el juego cuenta con la posibilidad de disputar carreras multijugador.'),(11,'The Pinball Arcade',59.9,'arcade','Noviembre 2013',2,'pinballGrande.jpg',35,'Cuenta con recreaciones exactas de las mejores máquinas Pinball de todos los tiempos en un solo juego. Cada aleta, parachoques, efecto de sonido y píxeles de la pantalla han sido concienzudamente emulados con sorprendentes detalles.'),(12,'Enter the Gungeon',59.9,'arcade','Abril 2016',2,'enterGrande.jpg',67,'Es un juego de lucha de disparos en mazmorras que tiene como protagonistas a una banda de bandidos que solo quieren disparar, saquear, esquivar y lanzarlo todo por los aires.'),(13,'Disney Infinity 3.0',59.9,'arcade','Septiembre 2015',3,'disneyGrande.jpg',9,'Título donde los fans pueden jugar con personajes de Disney, Pixar, Marvel y Star Wars juntos en una única experiencia. Cada Play Set de `Star Wars` ofrece experiencias distintas, con infinidad de juegos, ambientes y personajes.'),(14,'Kromaia',59.9,'arcade','Noviembre 2015',1,'kromaiaGrande.jpg',34,'nos devuelve a tiempos pasados gracias a su acción a la vieja escuela frenético propia de clásicos de recreativas. El título combina explosiones de alto octanaje con hordas de enemigos en entornos de 360 grados, lo que nos permite volar, girar y disparar hacia cualquier dirección.'),(15,'SOMA',59.9,'aventura','Septiembre 2015',1,'somaGrande.jpg',33,'Una genial puesta en escena aderezada por una de esas historias de terror difíciles de olvidar. Es inteligente, te hace cuestionarte muchas cosas y además te mantiene en constante tensión. También los puzles, el diseño de niveles, las criaturas monstruosas si es que SOMA es puro espectáculo. Si te gusta el terror no lo dudes. Hay pocos juegos mejor que este.'),(16,'Heavy Rain',59.9,'aventura','Marzo 2016',1,'heavyGrande.jpg',43,'el videojuego de Quantic Dream lanzado originalmente en PS3 se adapta a PlayStation4. El título, una aventura de acción, misterio y estilo cinematográfico, se vende tanto de forma individual en descarga digital como en un pack junto a Beyond: Dos Almas en formato físico.'),(17,'Firewatch',59.9,'aventura','Febrero 2016',3,'firewatchGrande.jpg',4,'Suspense y misterio en un contexto tan atípico como el de un vigilante de fuegos o agente forestal, que comienza a cuestionarse su propia percepción de las cosas en este videojuego de aventura y exploración que algunos etiquetan dentro del género \"walking simulator\".'),(18,'Gone Home',59.9,'aventura','Febrero 2016',1,'goneGrande.jpg',67,'Magnifica aventura gráfica de perspectiva en primera persona, desarrollada por The Fullbright Company, estudio encabezado por tres empleados que trabajaron en Bioshock 2, Bioshock Infinite y XCOM.'),(19,'Deliriant',59.9,'aventura','Mayo 2017',1,'deliriantGrande.jpg',7,'Ambientado en los años 70, e inspirado por propuestas como Gone Home, Journey y Myst, el videojuego Deliriant se presenta como un un experimento de empatía donde el jugador comparte el trauma de una víctima de maltrato psicológico. En concreto la propuesta lleva hasta un apartamento ubicado en los años 70, donde cada habitación, objeto y persona es la causante del sufrimiento del protagonista.'),(20,'Armikrog',59.9,'aventura','Agosto 2016',1,'armikrogGrande.jpg',67,'Secuela espiritual de la clásica aventura gráfica The Neverhood, y de ella recupera el uso de la técnica de animación tradicional claymation, recreando de manera artesanal con plastilina y arcilla todos los personajes y escenarios del videojuego.'),(21,'FIFA 2017',59.95,'deportes','Noviembre 2016',1,'fifa2017Grande.jpg',40,'Domina cada instante en el campo con la increíble innovación en la forma en la que los jugadores piensan, se mueven, interactúan físicamente con los rivales y ejecutan estrategias ofensivas. Además de importantes cambios en la inteligencia artificial, que transforma el comportamiento de los jugadores en todas las zonas del césped y extiende su actividad cuando se encuentran lejos del balón, la jugabilidad de FIFA 17 añade nuevas opciones de control en libres directos, saques de esquina, penaltis, saques cortos y desmarques con los que desarrollar técnicas más creativas para abrirte paso entre tus rivales.'),(22,'nba 2k 2017',54.95,'deportes','Noviembre 2016',1,'nba2kGrande.jpg',25,'Tras un lanzamiento de récord con NBA 2K16, NBA 2K continua su puja por el trono al juego de deporte más realista con NBA 2K17. Como la saga a la que “todos los juegos de deporte deberían aspirar a parecerse” (GamesRadar), NBA 2K17 llevará la franquicia hasta nuevos límites y seguirá haciendo cada vez más delgada la línea entre videojuego y realidad.'),(23,'Formula 1 2016',54.95,'deportes','Noviembre 2016',2,'formula1Grande.jpg',25,'En Formula 1 2016 te convertirás en leyenda. La nueva entrega del simulador oficial del Campeonato Mundial de Fórmula 1 2016 llega a PlayStation 4 y Xbox One introduciendo un nuevo modo Carrera en el que podrás vivir cada segundo del automovilismo desde la frenética y peligrosa vertiente competitiva hasta fuera de la pista.'),(24,'Madden NFL 2017',54.95,'deportes','Noviembre 2016',1,'nflGrande.jpg',25,'El mejor fútbol americano llega por fin formato físico con Madden NFL 17 para PlayStation 4 incluyendo nuevas características como el Modo Franquicia más profundo hasta la fecha en el que te encontrarás en el centro de la carrera de tu equipo y el adictivo Ultimate Team. Con mejoras en los tres pilares del fútbol: ofensa, defensa y equipos especiales; Madden NFL 17 añade nuevas mecánicas e inteligencia artificial realista que redefine los partidos, perfecciona la defensa zonal y equilibra los pases.'),(25,'Rocket League',12.95,'deportes','Marzo 2010',3,'rocketGrande.jpg',25,'Soccer meets driving once again in the long-awaited, physics-based multiplayer-focused sequel to Supersonic Acrobatic Rocket-Powered Battle-Cars! Choose a variety of high-flying vehicles equipped with huge rocket boosters to score amazing aerial goals and pull-off incredible game-changing saves!'),(26,'Pro cycling manager 2017',19.95,'deportes','Noviembre 2016',3,'cyclingGrande.jpg',25,'Conviértete en director de un equipo ciclista profesional y compite contra los mejores ciclistas de la actualidad en más de 200 carreras y 500 etapas icónicas, como la Vuelta o el Tour de Francia.'),(27,'Age of Empire II HD',4.95,'estrategia','Noviembre 2014',3,'ageGrande.jpg',25,'Age of Empires II ha entrado al mundo de la alta definición sumando además nuevas funciones y ajustes, mejoras en la inteligencia artificial, cromos de Steam, soporte para Steam Workshop, integración con Steamworks, ¡y más!'),(28,'Civilitation VI',24.95,'estrategia','Marzo 2010',3,'civilitationGrande.jpg',25,'Juega como uno de los 20 líderes históricos, incluido Felipe II.'),(29,'XCOM 2',34.95,'estrategia','Noviembre 2015',3,'xcom2Grande.jpg',35,'XCOM 2 es la secuela de XCOM: Enemy Unknown, el galardonado juego de estrategia. Han pasado veinte años desde que la humanidad perdió la guerra contra los invasores alienígenas y hay un nuevo orden en la Tierra. Tras años escondidos en la sombra, las fuerzas XCOM deben alzarse y eliminar'),(30,'Total War: ROME II ',44.95,'estrategia','marzo 2010',3,'totalwarrome2Grande.jpg',25,'Acerca de Total War: ROME II - Emperor EditionEmperor Edition es la edición definitiva de ROME II, y contiene un sistema político mejorado, cadenas de construcción renovadas, batallas reequilibradas y mejores gráficos tanto en campaña como en batalla.'),(31,'Stellaris',14.95,'estrategia','Noviembre 2015',3,'stellarisGrande.jpg',25,'¡Explora una vasta galaxia llena de maravillas! Paradox Development Studio, creadores de las series Crusader Kings y Europa Universalis, presenta Stellaris, una evolución del gran género de estrategia con la exploración espacial como núcleo.'),(32,'Age of Empire III Complete Collection',4.95,'estrategia','Febrero 2010',3,'ageIIIGrande.jpg',25,'Microsoft Studios te trae tres épicos juegos de Age of Empires III reunidos por primera vez en una colección monumental.'),(33,'Castle Crashers',54.95,'beatemup','Noviembre 2016',3,'castleGrande.jpg',25,': Castle Crashers, el culpable del revival del género. Sigue siendo uno de los mejores representantes de \"yo contra el barrio\" de la actualidad y de la historia. Rabiosamente divertido.'),(34,'Dungeons & Dragons: Chronicles of Mystara',14.95,'beatemup','Noviembre 2012',3,'d_dGrande.jpg',25,'ablando del rey de Roma... Puesta al día de los clásicos, con letras mayúsculas, ‘Dungeons & Dragons: Tower of Doom’ y ‘Dungeons & Dragons: Shadow over Mystara’. Dungeons & Dragons: Chronicles of Mystara es un lote imprescindible para cualquier fan.'),(35,'Foul Play',14.95,'beatemup','Noviembre 2012',3,'foulplayGrande.jpg',25,'pocas veces hemos luchado dentro de un teatro siendo un cazademonios que puede hacer combos aéreos y cuyo objetivo es, a su vez, entretener al público. Así es Foul Play.'),(36,'Final Fight',4.95,'beatemup','Noviembre 1980',2,'finalGrande.jpg',25,'Pese a ser menos innovador que los anteriores títulos de la lista, Final Fight es un clásico con mayúsculas, también versionado hasta la saciedad (impagable aquel Final Fight One de Game Boy Advance o la versión de Mega CD). En este caso el juego destacaba por su cuidadísimos gráficos, el carisma de sus protagonistas y unos villanos que parecían recién sacados de un videoclip de Guns and Roses o Motley Crue.'),(37,'Golden Axe:beast riders',14.95,'beatemup','Marzo 2008',2,'goldenaxeGrande.jpg',25,'La protagonista es una amazona, Tyris Flare, que pertenece al primer juego Golden Axe (1987) de Recreativa System 16 y Mega Drive. El resto de \"personajes clásicos\", aunque no sean jugables, irán apareciendo a lo largo del juego. El juego se centrará en el combate sobre criaturas, de aquí el nombre del título. Cada criatura tiene sus propias habilidades y características. Estas pueden estar domadas por un jinete enemigo o son salvajes, pudiendo domarlas.3 En el combate a pie, la protagonista poseerá capacidad de esquivar o bloquear ataques, realizar un número de combos y de lanzar hechizos. Para recuperar la salud y el maná, tendremos que robárselo a unos gnomos que aparecerán en el camino. También se podrá equiparse con nuevas armas, incluso con la clásica \"Golden Axe\".'),(38,'The Simpson Arcade Game',4.95,'beatemup','Marzo 1991',2,'simpsonGrande.jpg',25,'El señor Burns, junto a unos maléficos secuaces (entre los que se encuentra el señor Smithers) roban un diamante muy valioso. Pero, la familia se encuentra muy cerca del lugar y mientras el señor Burns y sus secuaces salen de la joyería de donde robaron el diamante, el señor Smithers (que tenía el diamante) choca contra Homer y el diamante cae en la boca de Maggie. Debido a ello, el señor Smithers, que estaba muy apurado para irse rápido del lugar, secuestrando a Maggie.'),(39,'Mortal Kombat X',12.3,'lucha','Marzo 2015',2,'mortalGrande.jpg',23,'El juego ofrece una nueva experiencia conectada que permite a los jugadores participar en una competición online donde cada lucha será fundamental en una batalla global por la supremacía'),(40,'Dragon Ball XEnoverse',11.8,'lucha','Junio 2016',3,'dragonGrande.jpg',29,'Ofrece a los jugadores combates frenéticos entre Goku y sus mayores enemigos tales como Vegeta, Freezer, Célula y muchos otros'),(41,'Street Fighter V',21.3,'lucha','Diciembre 2016',1,'streetGrande.jpg',24,'¡Regresa la legendaria saga de lucha con Street Fighter V! Con un nuevo apartado gráfico generado gracias a la tecnología Unreal Engine 4, disfrutarás apasionantes mecánicas de combate que se adaptarán a todo tipo de jugadores.'),(42,'Tekken 7',31.4,'lucha','Octubre 2016',3,'tekkenGrande.jpg',18,'¡Regresa la legendaria saga de lucha con Street Fighter V! Con un nuevo apartado gráfico generado gracias a la tecnología Unreal Engine 4, disfrutarás apasionantes mecánicas de combate que se adaptarán a todo tipo de jugadores.'),(43,'Garou:Mark of the Wolves',11.2,'lucha','Febrero 1999',2,'garouGrande.jpg',19,'¡Regresa la legendaria saga de lucha con Street Fighter V! Con un nuevo apartado gráfico generado gracias a la tecnología Unreal Engine 4, disfrutarás apasionantes mecánicas de combate que se adaptarán a todo tipo de jugadores.'),(44,'Guilty Gear Xrd',17.2,'lucha','Junio 2014',4,'guiltyGrande.jpg',19,' Guilty Gear Xrd regresa para seguir luciendo las virtudes que lo convierten en uno de los mejores juegos de lucha de la presente generación. Revelator nos trae nuevos personajes, nueva historia, nuevas mecánicas y una excelencia visual única en su género. Heaven or Hell? Let’s Rock!.'),(45,'Portal 2',12.8,'puzzle','Abril 2011',2,'portal2Grande.jpg',3,'Sentido del humor, rompecabezas tremendamente ingeniosos y hábil mezcla de destreza cerebral con habilidad... ¿Imposible de combinar? En absoluto. Portal 2 es, al mismo tiempo, imaginativo, estimulante, adictivo y cargado de momentos hilarantes, y como tal puede ser recomendado a cualquier tipo de público.'),(46,'The Witness',18.2,'puzzle','Enero 2016',2,'witnessGrande.jpg',4,'Absorbente, hermoso y, sobre todo, muy inteligente. Con pocas palabras y mucha habilidad, el nuevo juego del creador de Braid nos explica de una forma muy sencilla y accesibles sus mecánicas jugables.'),(47,'Inside',18.2,'puzzle','Julio 2016',1,'insideGrande.jpg',11,'El aspecto gráfico, la dirección artística, la banda sonora de Martin Stig Andersen… Todo funciona como un reloj suizo para hacer de Inside un videojuego que entra por los sentidos.'),(48,'World of Goo',21.2,'puzzle','Junio 2009',3,'worldGrande.jpg',19,'El aspecto gráfico, la dirección artística, la banda sonora de Martin Stig Andersen… Todo funciona como un reloj suizo para hacer de Inside un videojuego que entra por los sentidos.'),(49,'Braid',19.7,'puzzle','Abril 2014',4,'braidGrande.jpg',9,'No se trata de un videojuego para todos los públicos: Su carácter intelectual, su tratamiento profundo y adulto y el impecable estilo que desbordan estética y sonido no son aptos para toda clase de jugadores.'),(50,'The Swapper',13.8,'puzzle','Mayo 2013',2,'swapperGrande.jpg',15,'Se ha ganado un puesto de honor entre las aventuras de puzles más destacadas de la década. El impecable diseño de sus rompecabezas, la importancia y encanto que destila a nivel argumental, y su poderosa ambientación son aspectos que están muy por encima de la media.'),(51,'Metal Slug 2',8.2,'retro','Febrero 1998',3,'metalGrande.jpg',6,'¿ Conseguirás vencer a todo un ejército de mercenarios ? Muevete con los cursores. Pulsa A para disparar con la ametralladora, S para saltar y D para disparar el cañón de tu tanque o lanzar granadas.'),(52,'Golden Axe 2',6.5,'retro','Enero 1989',3,'goldenGrande.jpg',8,'Un villano llamado Death Adder aterroriza a los lugareños del Reino de Yuria y ha raptado a su princesa y al rey. Escoge de entre uno de los 3 personajes, el que más te guste y adéntrate en un juego de acción cuyo objetivo es luchar contra tus enemigos sirviéndote de tu poderosa espada y de algunas habilidades mágicas.'),(53,'Ghost n Goblins',10.9,'retro','Marzo 1992',3,'ghostGrande.jpg',8,'Uno de los mejores juegos de las máquinas recreativas de los años 80 por fin en versión flash y con los mismos gráficos. Usa los cursores para caminar y escalar, la tecla Shift para saltar y Ctrl para disparar.'),(54,'Joe & Mac Caveman Ninja',11.1,'retro','Agosto 1990',3,'joeGrande.jpg',13,'Tendremos que ir salvando los obstáculos mientras nos enfrentamos en el camino con la tribu rival y las diferentes criaturas prehistóricas que nos irán apareciendo. Para ello empezamos con un arma básica (un hacha) que podemos ir cambiando por diferentes armas.'),(55,'Toki',12.5,'retro','Septiembre 1992',3,'tokiGrande.jpg',20,'La princesa Mohio es raptada por el malvado doctor Vookimedlo y te ha convertido en un primate. Acaba con todos los enemigos y dirígete al castillo dorado para rescatarla.'),(56,'Altered Beast',13.8,'retro','Junio 198',3,'alteredGrande.jpg',18,'Eres Altered Beast y acabas de salir de tu tumba para luchar contra los demonios de Hades. Transfórmate en depredadores asesinos usando los místicos orbes energéticos y usa tus garras para llegar a las profundidades del infierno y rescatar a la hija de Zeus, Atenea. Combate contra las hordas de demonios, libra grotescas batallas contra jefes finales ¡y destroza a los ejércitos malditos! '),(57,'Silent Hill',49.95,'terror','Agosto 2004',1,'silenthillGrande.jpg',12,'Bienvenidos a Silent Hill, un pueblo fantasma, sumergido en la niebla, que esconde muchos secretos. En particular, algunos capaces de acabar con la vida de Harry Mason, el protagonista del juego, o de su hija Cheryl. Acompañadnos si os atrevéis.'),(58,'Manhunt 2',29.99,'terror','Abril 2004',2,'manhuntGrande.jpg',3,'La trama nos sitúa en un hospital psiquiátrico,de la ciudad de \"Cottonmouth\",donde Daniel Lamb \"despierta\" y junto a él se encuentra el cadáver de una doctora.Daniel conoce a Leo Kasper, y juntos tendrán que escapar de ese macabro lugar, en ese momento es cuando empieza su aventura.'),(59,'Dead Space',35.95,'terror','Octubre 2008',2,'deadspaceGrande.jpg',5,'La historia gira en torno al rescate de una nave minera, allá por el año 2500, de la cual se ha perdido todo contacto.'),(60,'Amnesia: The Dark Descent',45,'terror','Septiembre 2010',3,'amnesiaGrande.jpg',10,'El juego transcurre en el año de 1839 en la regiones nórdicas de Europa, específicamente en el castillo de Brennenburg en los oscuros bosques de Prussia, como jugadores encarnaremos a Daniel, un hombre Londinense que despierta en medio de la noche sobre el suelo del tétrico castillo y que por algún motivo no recuerda nada de su pasado o de su situación actual.'),(61,'Until Dawn',60,'terror','Agosto 2015',1,'untildawnGrande.jpg',8,' un grupo de típicos adolescentes va a pasar unos días a una cabaña solitaria en unas montañas nevadas, sabes que las cosas no van a terminar bien. Como si no fuera suficiente con las tensiones por las hormonas, unas misteriosas desapariciones y un psicópata suelto se agregan a la fórmula. Lo demás depende de ti.'),(62,'F.E.A.R',45,'terror','Marzo 2005',2,'fearGrande.jpg',6,'El M.I.E.D.O. te aguarda en cada esquina, en cada lugar, en F.E.A.R. descubrirás lo que es el terror y uno de los mejores juegos de PC de todos los tiempos. ¿A qué esperas para verlo en movimiento?'),(63,'The last of us',59.95,'survival','Junio 2013',1,'thelastofusGrande.jpg',6,'“The Last Of Us” sigue a Joel, quien intenta proteger a su familia en los primeros momentos del brote, sin embargo, un problema con los militares le da un terrible giro a su vida.'),(64,'Dying light',49.95,'survival','Enero 2015',3,'dyinglightGrande.jpg',10,'Dying Light nos mete en la piel de Kyle Crane, un operativo militar desplegado en Harran, una ciudad aislada y en cuarentena por el estallido de un virus zombi. Nuestro objetivo es localizar a Suliman, un tipo que ha robado un dossier con un posible remedio al virus.'),(65,'Dead rising',29.95,'survival','Agosto 2013',2,'deadrisingGrande.jpg',2,'Un reportero gráfico freelance obsesionado por obtener la exclusiva del siglo, el jugador se ve recluído en un centro comercial, último reducto donde los habitantes de Willamette, Colorado, se parapetan para evitar ser devorados por la oleada zombie que ha arrasado su pueblo. El objetivo consiste en sobrevivir a este espástico infierno tres días.'),(66,'Alien: Isolation',10.95,'survival','Octubre 2014',1,'alienGrande.jpg',6,'En esta aventura nos pondremos en la piel de Amanda Ripley, la hija de Ellen, que lleva 15 años tratando de dar con su madre siguiendo la pista de la Nostromo, su mítica nave. La caja negra de la desaparecida tripulación ha acabado en la estación espacial Sevastopol así que allí nos dirigiremos.'),(67,'Terminator Salvation',4.99,'survival','Abril 2014',3,'terminatorsalvationGrande.jpg',3,'En Salvation, el videojuego, encarnaremos a John Connor, el protagonista de la película, dos años antes de los hechos que acaecen en la cinta. Comenzaremos, por lo tanto, como un soldado más sobre el que de hecho sus compañeros no tienen demasiada confianza, y asistiremos a su progreso y a su crecimiento hasta convertirse en el líder nato que vemos en el largometraje.'),(68,'Black Mirror',9.95,'survival','Abril 2004',3,'blackmirrorGrande.jpg',5,'La vida de Darren Michaels va a cambiar. En una mañana, todo lo que daba por sentado en su vida se tambalea y amenaza desmoronarse como un frágil castillo de naipes. Vamos a unirnos a él en la búsqueda de su pasado.'),(69,'Sine Mora',30.95,'shootemup','Marzo 2012',2,'sinemoraGrande.bmp',6,'Acción sin tregua, enemigos por doquier, una pantalla que se queda pequeña ante la cantidad de disparos a esquivar, y descomunales jefazos de final de fase esperando machacarnos salvajemente.'),(70,'Super Stardust HD',20.99,'shootemup','Junio 2007',1,'superstardustGrande.jpg',5,'Estamos ante un arcade de los que hacen uso de ambos sticks para disparar en todas direcciones. Vamos a movernos sobre la atmósfera de pequeños planetas, lo cual hace que, pese poner en juego mecánicas realmente bidimensionales, la sensación sea de que jugamos a un videojuego tridimensional.'),(71,'Devil May Cry',6.95,'shootemup','Diciembre 2001',3,'devilmaycryGrande.jpg',7,'Dante, cazador de demonios, es mitad humano, mitad demonio. Su padre, el legendario caballero oscuro Sparda contrajo matrimonio con la que sería su madre, una chica humana. A parte de aceptar trabajos como cazademonios y sus constantes luchas de hordas demoníacas, también lo veremos luchar contra todas las deudas financieras que lleva a sus espaldas'),(72,'Ratchet & Clank',29.95,'shootemup','Abril 2016',1,'ratchetandclankGrande.jpg',11,'Es una aventura encantadora y creativa. Lombax y su amigo robótico inician un viaje a través de la galaxia que se convertirá en una hermosa aventura.'),(73,'Ikaruga',7.95,'shootemup','Diciembre 2001',2,'ikarugaGrande.jpg',2,'Hace muchos años en la pequeña isla de la nación de Horai, una de los más poderosos hombres de la nación, Tenro Horai, ha descubierto el Ubusunagami Okinokai (el poder de los dioses).'),(74,'Raiden V',25.99,'shootemup','Febrero 2016',1,'raidenvGrande.jpg',8,'Únete a la guerra por el futuro de la Tierra, donde la batalla tendrá sorpresas constantes.');
/*!40000 ALTER TABLE `videojuego` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-30 11:31:43
