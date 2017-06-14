/*
SQLyog Ultimate v9.02 
MySQL - 5.5.5-10.1.21-MariaDB : Database - sgp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `centro` */

CREATE TABLE `centro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(100) DEFAULT NULL,
  `tipo_ident` varchar(10) DEFAULT NULL,
  `identificador` varchar(20) DEFAULT NULL,
  `responsable` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `coordenadas` varchar(50) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `horario` varchar(250) DEFAULT NULL,
  `fecha_alta` datetime DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `centro` */

insert  into `centro`(`id`,`razon_social`,`tipo_ident`,`identificador`,`responsable`,`direccion`,`coordenadas`,`telefono`,`email`,`horario`,`fecha_alta`,`observaciones`) values (1,'CENTRO MEDICO ROSSI','CUIT','dsfds','Dr. Alberto Rossi','Av. Cordoba 1846',NULL,'011 20456734','consultas@rossi.com.ar',NULL,NULL,'c,xm,mvx,.cmv.,x\r\n');

/*Table structure for table `centro_especialidades` */

CREATE TABLE `centro_especialidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_especialidad_medica` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `centro_especialidades` */

insert  into `centro_especialidades`(`id`,`id_especialidad_medica`) values (1,1);
insert  into `centro_especialidades`(`id`,`id_especialidad_medica`) values (2,2);
insert  into `centro_especialidades`(`id`,`id_especialidad_medica`) values (3,3);
insert  into `centro_especialidades`(`id`,`id_especialidad_medica`) values (4,10);
insert  into `centro_especialidades`(`id`,`id_especialidad_medica`) values (5,5);
insert  into `centro_especialidades`(`id`,`id_especialidad_medica`) values (6,17);
insert  into `centro_especialidades`(`id`,`id_especialidad_medica`) values (7,4);
insert  into `centro_especialidades`(`id`,`id_especialidad_medica`) values (8,6);
insert  into `centro_especialidades`(`id`,`id_especialidad_medica`) values (9,24);

/*Table structure for table `consultorios` */

CREATE TABLE `consultorios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `habilitado` varchar(2) NOT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`,`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `consultorios` */

insert  into `consultorios`(`id`,`descripcion`,`habilitado`,`observaciones`) values (7,'Consultorio1','SI',NULL);
insert  into `consultorios`(`id`,`descripcion`,`habilitado`,`observaciones`) values (8,'Consultorio 2','SI','sdlfñldsñalfñ{dlsañ{flsd{ñ');
insert  into `consultorios`(`id`,`descripcion`,`habilitado`,`observaciones`) values (9,'Consultorio 3','SI','lñkdfsdlañkflñsdklñfksñldkañlfs');
insert  into `consultorios`(`id`,`descripcion`,`habilitado`,`observaciones`) values (13,'Consultorio 4','SI','dñslfdñlflalsñjflkfgksfsdgkñlfklñgsksdfgfdss');
insert  into `consultorios`(`id`,`descripcion`,`habilitado`,`observaciones`) values (14,' llldñlfdlsñ','SI',',sf,dm,s');

/*Table structure for table `consultorios_estado` */

CREATE TABLE `consultorios_estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_consultorio` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora_in` time DEFAULT NULL,
  `hora_out` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `consultorios_estado` */

insert  into `consultorios_estado`(`id`,`id_consultorio`,`id_usuario`,`id_paciente`,`fecha`,`hora_in`,`hora_out`) values (1,7,1,1,'2017-05-05','11:00:00','11:20:00');
insert  into `consultorios_estado`(`id`,`id_consultorio`,`id_usuario`,`id_paciente`,`fecha`,`hora_in`,`hora_out`) values (2,8,2,2,'2017-05-05','10:00:00',NULL);
insert  into `consultorios_estado`(`id`,`id_consultorio`,`id_usuario`,`id_paciente`,`fecha`,`hora_in`,`hora_out`) values (3,9,3,NULL,NULL,NULL,NULL);
insert  into `consultorios_estado`(`id`,`id_consultorio`,`id_usuario`,`id_paciente`,`fecha`,`hora_in`,`hora_out`) values (4,7,1,3,'2017-05-05','10:00:00','11:00:00');
insert  into `consultorios_estado`(`id`,`id_consultorio`,`id_usuario`,`id_paciente`,`fecha`,`hora_in`,`hora_out`) values (5,7,1,4,'2017-05-05','09:00:00','10:00:00');
insert  into `consultorios_estado`(`id`,`id_consultorio`,`id_usuario`,`id_paciente`,`fecha`,`hora_in`,`hora_out`) values (6,7,1,5,'2017-05-05','08:00:00','09:00:00');

/*Table structure for table `especialidad_prestaciones` */

CREATE TABLE `especialidad_prestaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_especialidad_medica` int(11) DEFAULT NULL,
  `id_prestacion_medica` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `especialidad_prestaciones` */

insert  into `especialidad_prestaciones`(`id`,`id_especialidad_medica`,`id_prestacion_medica`) values (12,4,10);
insert  into `especialidad_prestaciones`(`id`,`id_especialidad_medica`,`id_prestacion_medica`) values (13,5,3);

/*Table structure for table `especialidades_medicas` */

CREATE TABLE `especialidades_medicas` (
  `id` int(11) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `especialidades_medicas` */

insert  into `especialidades_medicas`(`id`,`descripcion`) values (1,'ADOLESCENTES                  ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (2,'AUDITORÍA                     ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (3,'ALERGIA INFANTIL              ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (4,'ALERGIA                       ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (5,'ANDROLOGIA                    ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (6,'ANATOMIA PATOLOGICA           ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (7,'ANESTESIOLOG?A                ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (8,'MEDICO AUDITOR                ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (9,'CIRUGIA CARDIACA              ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (10,'CIRUGIA DE CABEZA Y CUELLO    ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (11,'CIRUGIA CARDIACA PEDIATRICA   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (12,'CIRUGIA INFANTIL              ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (13,'CARDIOLOGIA INFANTIL          ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (14,'CIRUGIA PLASTICA              ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (15,'CIRUGIA DEL QUEMADO           ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (16,'CLINICA MEDICA                ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (17,'CIR.Y TRAUM. MIEM.SUP. Y MANO ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (18,'CIRUG?A MAXILOFACIAL          ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (19,'COBALTOTERAPIA                ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (20,'CARDIOLOGIA                   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (21,'CIRUGIA GENERAL               ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (22,'CIRUGIA ODONTOLOGICA          ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (23,'CIR. DE TORAX Y CARDIOVASCULAR');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (24,'CIRUGIA VASCULAR PERIFERICA   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (25,'DIABETOLOGIA                  ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (26,'DERMATOLOGIA INFANTIL         ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (27,'DEPORTOLOGO                   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (28,'DERMATOLOGIA                  ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (29,'ECOGRAFISTAS                  ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (30,'ENDOCRINOLOGIA                ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (31,'ENDODONCIA                    ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (32,'ENDOCRINOLOGIA INFANTIL       ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (33,'EMERGENCIOLOG?A               ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (34,'ENDOSCOPIA                    ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (35,'ESTOMATOLOGIA                 ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (36,'A CONFIRMAR                   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (37,'ESTERILIDAD                   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (38,'FLEBOLOGIA                    ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (39,'FISIATR?A                     ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (40,'GENETICA                      ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (41,'GERIATRIA                     ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (42,'GASTROENTEROLOGIA INFANTIL    ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (43,'GINECOLOGIA                   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (44,'GASTROENTEROLOGIA             ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (45,'HEMODINAMIA                   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (46,'HEMATOLOGIA INFANTIL          ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (47,'HEMATOLOGIA                   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (48,'HEMOTERAPIA                   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (49,'ENFERMED. INFEC. INFANTIL     ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (50,'INFECTOLOGIA                  ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (51,'IMAGENOLOGIA                  ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (52,'INDEFINIDA                    ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (53,'ENFERMEDADES INFECCIOSAS      ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (54,'INMUNOLOGIA                   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (55,'KINESIOLOGIA                  ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (56,'MEDICINA FAMILIAR             ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (57,'MEDICINA INTERNA              ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (58,'MEDICINA NUCLEAR              ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (59,'MICOLOGIA                     ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (60,'MEDICINA LABORAL              ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (61,'MEDICO LEGISTA                ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (62,'NEUROCIRUGIA                  ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (63,'NEUROCIRUGIA INFANTIL         ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (64,'NEFROLOGIA INFANTIL           ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (65,'NEFROLOGIA                    ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (66,'NEUMONOLOGIA INFANTIL         ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (67,'NEUROLOGO                     ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (68,'NEUMONOLOGIA                  ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (69,'NEUROFISIOLOGIA               ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (70,'NEUROLOGIA INFANTIL           ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (71,'NUTRICION INFANTIL            ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (72,'NEONATOLOGIA                  ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (73,'NUTRICION                     ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (74,'OBESIDAD                      ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (75,'OBSTETRICIA                   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (76,'ODONTOLOGO GENERAL            ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (77,'ODONTOPEDIATRIA               ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (78,'ODONTOLOGIA                   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (79,'OFTALMOLOGIA INFANTIL         ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (80,'OFTALMOLOGIA                  ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (81,'ONCOLOGIA                     ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (82,'ONCOLOGIA INFANTIL            ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (83,'OTORRINOLARINGOLOGIA INFANTIL ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (84,'OTORRINOLARINGOLOGIA          ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (85,'ORTOPEDIA ODONTOLOGICA        ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (86,'ORTODONCIA                    ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (87,'PATOLOGIA MAMARIA             ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (88,'PEDIATRIA                     ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (89,'PERIODONCIA                   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (90,'PSIQUIATRIA INFANTIL          ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (91,'PROCTOLOGIA                   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (92,'PROTESIS ODT                  ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (93,'PSICOLOGIA                    ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (94,'PSICOLOGIA MEDICA             ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (95,'PSIQUIATRIA                   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (96,'RADIOLOGIA                    ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (97,'REUMATOLOGIA INFANTIL         ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (98,'REUMATOLOGIA                  ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (99,'SEXOLOG?A                     ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (100,'TOCOGINECOLOGIA               ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (101,'TRAUMATOLOGIA MAXILO FACIA    ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (102,'TISIONEUMONOLOGO              ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (103,'TOXICOLOGIA                   ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (104,'TRAUMATOLOGIA INFANTIL        ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (105,'TRAUMATOLOGIA                 ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (106,'TRANSFUSIONISTA               ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (107,'TRAUMATOLOGIA Y ORTOPEDIA     ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (108,'UROLOGIA INFANTIL             ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (109,'UROLOGIA                      ');
insert  into `especialidades_medicas`(`id`,`descripcion`) values (110,'TERAPIA INTENSIVA             ');

/*Table structure for table `heredo_familiares` */

CREATE TABLE `heredo_familiares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `observaciones` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `heredo_familiares` */

insert  into `heredo_familiares`(`id`,`descripcion`,`observaciones`) values (1,'DIABETES',NULL);
insert  into `heredo_familiares`(`id`,`descripcion`,`observaciones`) values (2,'HIPERTENSION',NULL);
insert  into `heredo_familiares`(`id`,`descripcion`,`observaciones`) values (3,'CARDIOPATIA',NULL);
insert  into `heredo_familiares`(`id`,`descripcion`,`observaciones`) values (4,'HEPATOPATIA',NULL);
insert  into `heredo_familiares`(`id`,`descripcion`,`observaciones`) values (5,'NEFROPATIA',NULL);
insert  into `heredo_familiares`(`id`,`descripcion`,`observaciones`) values (6,'ENF. MENTALES',NULL);
insert  into `heredo_familiares`(`id`,`descripcion`,`observaciones`) values (7,'ASMA',NULL);
insert  into `heredo_familiares`(`id`,`descripcion`,`observaciones`) values (8,'CANCER',NULL);
insert  into `heredo_familiares`(`id`,`descripcion`,`observaciones`) values (9,'ENF. ALERGICAS',NULL);
insert  into `heredo_familiares`(`id`,`descripcion`,`observaciones`) values (10,'ENF. ENDOCRINAS',NULL);

/*Table structure for table `menu` */

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items` varchar(50) DEFAULT NULL,
  `padre` int(11) DEFAULT NULL,
  `frame` varchar(50) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `observaciones` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `menu` */

insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (1,'Centro medico',0,'TfrCentro_medico',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (2,'Paciente',0,'TfrPaciente',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (3,'Turnos',0,'TfrTurnos',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (4,'Facturación',0,'TfrFacturación',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (5,'Usuario',0,'TfrUsuario',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (6,'Configuraciones',0,'TfrConfiguraciones',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (7,'Datos generales',1,'TfrDatos_generales',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (8,'Especialidades',1,'TfrEspecialidades',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (9,'Prestaciones',1,'TfrPrestaciones',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (10,'Centro consultorios',1,'TfrCentro_consultorios',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (11,'Estado',10,'TfrConsultorios_estado',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (12,'Listado de pacientes',2,'TfrPacientes',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (13,'Nuevo paciente',2,'TfrPaciente',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (14,'Nueva consulta',2,'TfrNueva_consulta',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (15,'Tipo de identificador',6,'TfrTipo_de_identificador',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (16,'Nacionalidades',6,'TfrNacionalidades',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (17,'Tipos de usuario',6,'TfrTipos_de_usuario',NULL,NULL);
insert  into `menu`(`id`,`items`,`padre`,`frame`,`imagen`,`observaciones`) values (19,'Consultorios',10,'TfrConsultorios',NULL,NULL);

/*Table structure for table `paciente_heredo_familiares` */

CREATE TABLE `paciente_heredo_familiares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) DEFAULT NULL,
  `id_heredo_familiar` int(11) DEFAULT NULL,
  `antecedente` varchar(50) DEFAULT NULL,
  `padre` varchar(3) DEFAULT NULL,
  `madre` varchar(3) DEFAULT NULL,
  `hermanos` varchar(3) DEFAULT NULL,
  `hijos` varchar(3) DEFAULT NULL,
  `otros` varchar(3) DEFAULT NULL,
  `observaciones` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

/*Data for the table `paciente_heredo_familiares` */

insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (41,8,1,'DIABETES','NO','NO','NO','NO','SI',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (42,8,2,'HIPERTENSION','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (43,8,3,'CARDIOPATIA','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (44,8,4,'HEPATOPATIA','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (45,8,5,'NEFROPATIA','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (46,8,6,'ENF. MENTALES','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (47,8,7,'ASMA','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (48,8,8,'CANCER','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (49,8,9,'ENF. ALERGICAS','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (50,8,10,'ENF. ENDOCRINAS','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (56,9,1,'DIABETES','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (57,9,2,'HIPERTENSION','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (58,9,3,'CARDIOPATIA','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (59,9,4,'HEPATOPATIA','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (60,9,5,'NEFROPATIA','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (61,9,6,'ENF. MENTALES','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (62,9,7,'ASMA','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (63,9,8,'CANCER','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (64,9,9,'ENF. ALERGICAS','NO','NO','NO','NO','NO',NULL);
insert  into `paciente_heredo_familiares`(`id`,`id_paciente`,`id_heredo_familiar`,`antecedente`,`padre`,`madre`,`hermanos`,`hijos`,`otros`,`observaciones`) values (65,9,10,'ENF. ENDOCRINAS','NO','NO','NO','NO','NO',NULL);

/*Table structure for table `pacientes` */

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `tipo_ident` varchar(10) DEFAULT NULL,
  `identificador` varchar(20) DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `ocupacion` varchar(50) DEFAULT NULL,
  `estado_civil` varchar(50) DEFAULT NULL,
  `residencia` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `pacientes` */

insert  into `pacientes`(`id`,`nombre`,`tipo_ident`,`identificador`,`sexo`,`fecha_nac`,`nacionalidad`,`ocupacion`,`estado_civil`,`residencia`,`foto`) values (1,'Alberto Caneva','LC','33456323','FEMENINO','2017-05-08','Paraguay','gay','CASADO',NULL,NULL);
insert  into `pacientes`(`id`,`nombre`,`tipo_ident`,`identificador`,`sexo`,`fecha_nac`,`nacionalidad`,`ocupacion`,`estado_civil`,`residencia`,`foto`) values (2,'Mario Grosso','PASAPORTE','22222222','MASCULINO',NULL,'Argentina',NULL,NULL,NULL,NULL);
insert  into `pacientes`(`id`,`nombre`,`tipo_ident`,`identificador`,`sexo`,`fecha_nac`,`nacionalidad`,`ocupacion`,`estado_civil`,`residencia`,`foto`) values (3,'Lorenzo Caputo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `pacientes`(`id`,`nombre`,`tipo_ident`,`identificador`,`sexo`,`fecha_nac`,`nacionalidad`,`ocupacion`,`estado_civil`,`residencia`,`foto`) values (4,'Roberto Marianis','LE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `pacientes`(`id`,`nombre`,`tipo_ident`,`identificador`,`sexo`,`fecha_nac`,`nacionalidad`,`ocupacion`,`estado_civil`,`residencia`,`foto`) values (5,'Adela Gisel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `pacientes`(`id`,`nombre`,`tipo_ident`,`identificador`,`sexo`,`fecha_nac`,`nacionalidad`,`ocupacion`,`estado_civil`,`residencia`,`foto`) values (6,'Adalberto Gil','PASAPORTE','edsfd',NULL,'1973-05-10','Paraguay','Albañil',NULL,'CABA',NULL);
insert  into `pacientes`(`id`,`nombre`,`tipo_ident`,`identificador`,`sexo`,`fecha_nac`,`nacionalidad`,`ocupacion`,`estado_civil`,`residencia`,`foto`) values (7,'Luis','DNI','saadasda',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `pacientes`(`id`,`nombre`,`tipo_ident`,`identificador`,`sexo`,`fecha_nac`,`nacionalidad`,`ocupacion`,`estado_civil`,`residencia`,`foto`) values (8,'Luis Albert','DNI','023\'¿230\'¿',NULL,'2017-05-08','Brasil','aldñasda',NULL,'dsasd',NULL);
insert  into `pacientes`(`id`,`nombre`,`tipo_ident`,`identificador`,`sexo`,`fecha_nac`,`nacionalidad`,`ocupacion`,`estado_civil`,`residencia`,`foto`) values (9,'odsfosdp','DNI','dfsdf',NULL,'2017-05-22','Paraguay',NULL,NULL,'dfsfd',NULL);
insert  into `pacientes`(`id`,`nombre`,`tipo_ident`,`identificador`,`sexo`,`fecha_nac`,`nacionalidad`,`ocupacion`,`estado_civil`,`residencia`,`foto`) values (10,'cz.-xc.-zx.','DNI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `pacientes`(`id`,`nombre`,`tipo_ident`,`identificador`,`sexo`,`fecha_nac`,`nacionalidad`,`ocupacion`,`estado_civil`,`residencia`,`foto`) values (11,'z,,xzmc.,mz','PASAPORTE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `paises` */

CREATE TABLE `paises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `paises` */

insert  into `paises`(`id`,`descripcion`) values (1,'Argentina');
insert  into `paises`(`id`,`descripcion`) values (2,'Brasil');
insert  into `paises`(`id`,`descripcion`) values (3,'Paraguay');
insert  into `paises`(`id`,`descripcion`) values (4,'Uruguay');
insert  into `paises`(`id`,`descripcion`) values (5,'Chile');
insert  into `paises`(`id`,`descripcion`) values (6,'Peru');
insert  into `paises`(`id`,`descripcion`) values (7,'Colombia');
insert  into `paises`(`id`,`descripcion`) values (8,'Ecuador');
insert  into `paises`(`id`,`descripcion`) values (9,'Venezuela');

/*Table structure for table `prestaciones_medicas` */

CREATE TABLE `prestaciones_medicas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `prestaciones_medicas` */

insert  into `prestaciones_medicas`(`id`,`descripcion`) values (1,'Prestacion 1');
insert  into `prestaciones_medicas`(`id`,`descripcion`) values (2,'Prestacion 2');
insert  into `prestaciones_medicas`(`id`,`descripcion`) values (3,'Prestacion 3');
insert  into `prestaciones_medicas`(`id`,`descripcion`) values (4,'Prestacion 4');
insert  into `prestaciones_medicas`(`id`,`descripcion`) values (5,'Prestacion 5');
insert  into `prestaciones_medicas`(`id`,`descripcion`) values (6,'Prestacion 6');
insert  into `prestaciones_medicas`(`id`,`descripcion`) values (7,'Prestacion 7');
insert  into `prestaciones_medicas`(`id`,`descripcion`) values (8,'Prestacion 8');
insert  into `prestaciones_medicas`(`id`,`descripcion`) values (9,'Prestacion 9');
insert  into `prestaciones_medicas`(`id`,`descripcion`) values (10,'Prestacion 10');
insert  into `prestaciones_medicas`(`id`,`descripcion`) values (11,'Prestacion 11');

/*Table structure for table `tipo_identificador` */

CREATE TABLE `tipo_identificador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tipo_identificador` */

insert  into `tipo_identificador`(`id`,`descripcion`) values (1,'DNI');
insert  into `tipo_identificador`(`id`,`descripcion`) values (2,'PASAPORTE');
insert  into `tipo_identificador`(`id`,`descripcion`) values (3,'LE');
insert  into `tipo_identificador`(`id`,`descripcion`) values (4,'LC');
insert  into `tipo_identificador`(`id`,`descripcion`) values (5,'CUIL');
insert  into `tipo_identificador`(`id`,`descripcion`) values (6,'CUIT');

/*Table structure for table `usuario_especialidad` */

CREATE TABLE `usuario_especialidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_especialidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `usuario_especialidad` */

insert  into `usuario_especialidad`(`id`,`id_usuario`,`id_especialidad`) values (1,1,2);
insert  into `usuario_especialidad`(`id`,`id_usuario`,`id_especialidad`) values (2,2,2);

/*Table structure for table `usuario_tipo` */

CREATE TABLE `usuario_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `usuario_tipo` */

insert  into `usuario_tipo`(`id`,`descripcion`) values (1,'MEDICO');
insert  into `usuario_tipo`(`id`,`descripcion`) values (2,'ADMINISTRATIVO');

/*Table structure for table `usuarios` */

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_usuario` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `matricula` varchar(50) DEFAULT NULL,
  `telefonos` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `coordenadas` varchar(50) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id`,`id_tipo_usuario`,`nombre`,`apellido`,`matricula`,`telefonos`,`email`,`direccion`,`coordenadas`,`foto`) values (1,1,'Ariel','Carranza',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `usuarios`(`id`,`id_tipo_usuario`,`nombre`,`apellido`,`matricula`,`telefonos`,`email`,`direccion`,`coordenadas`,`foto`) values (2,1,'Alberto ','Cane',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `usuarios`(`id`,`id_tipo_usuario`,`nombre`,`apellido`,`matricula`,`telefonos`,`email`,`direccion`,`coordenadas`,`foto`) values (3,1,'Mariana ','Ferreiro',NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
