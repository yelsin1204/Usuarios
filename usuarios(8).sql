-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-04-2022 a las 06:14:51
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `archivos` text NOT NULL,
  `id_consultor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`id`, `nombre`, `descripcion`, `archivos`, `id_consultor`) VALUES
(51, 'prueba#1', 'prueba', 'archivos/-557.doc', 0),
(52, '', '', 'archivos/-693.doc', 0),
(54, 'prueba#2', 'prueba#2', 'archivos/-268.pdf', 0),
(55, '', '', 'archivos/-28.doc', 0),
(57, 'disparadores', '', 'archivos/-322.doc', 0),
(58, '', '', '', 0),
(59, 'disparadores', '', '', 0),
(60, 'xd', '', '', 0),
(61, 'XDD', '', '', 0),
(71, '', '', 'archivos/-502.pdf', 0),
(101, 'archivo importante', 'archivo cargado', 'archivos/xddddd.docx', 85),
(109, 'carlos', '123', 'archivos/contactosxd.xlsx', 47),
(110, 'importante', 'este archivo es importante', 'archivos/consultores2_2022-03-22-3.docx', 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carpetas`
--

CREATE TABLE `carpetas` (
  `id` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `archivos` text NOT NULL,
  `id_archivos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carpetas`
--

INSERT INTO `carpetas` (`id`, `descripcion`, `archivos`, `id_archivos`) VALUES
(1, 'archivos xdd', '', 52),
(2, 'textos', 'xd', 55),
(3, '', '', 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultores`
--

CREATE TABLE `consultores` (
  `id` int(11) NOT NULL,
  `apellido` text NOT NULL,
  `nombre` text NOT NULL,
  `cargo` text NOT NULL,
  `fecha` text NOT NULL,
  `telefono` text DEFAULT NULL,
  `telefono2` text NOT NULL,
  `telefono3` text NOT NULL,
  `correo` text DEFAULT NULL,
  `correo2` text NOT NULL,
  `institucion` text DEFAULT NULL,
  `direccion` text NOT NULL,
  `foto` text NOT NULL,
  `creado_por` text NOT NULL,
  `hora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nota` text NOT NULL,
  `ciudad` text NOT NULL,
  `dni` text NOT NULL,
  `cv` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consultores`
--

INSERT INTO `consultores` (`id`, `apellido`, `nombre`, `cargo`, `fecha`, `telefono`, `telefono2`, `telefono3`, `correo`, `correo2`, `institucion`, `direccion`, `foto`, `creado_por`, `hora`, `nota`, `ciudad`, `dni`, `cv`) VALUES
(44, ' Amaya Castillos', 'Jorge Augusto', 'Gerente ', '12/04/1990', '012253575', '32132131234', '', ' jamaya@serfor.gob.pe   	  	 		  		', '', 'GERFOR', '', 'Vistas/img/admins/S960.png', '', '2022-03-29 00:27:19', 'Es una persona confiables\r\n\r\n', '', '', ''),
(47, ' Rojas Meléndez   ', ' Levin Evelin   ', '  Directora Ejecutiva (e)', '15/05/1990', '  0122590055', '', 'saaS', ' lrojas@serfor.gob.pe   	  	 		  		  	 ', '', 'SERFOR', '', 'Vistas/img/admins/S765.jpg', '', '2022-02-21 17:37:58', 'Es una mujer noble\r\n', '', '', ''),
(49, ' Elvira Gómez Rivero   ', ' Elvira ', 'Directora General de Información y Ordenamiento Forestal y de Fauna Silvestre', '', '(511) 225 900', '212323', '', ' egomez@serfor.gob.pe   	  	 		  		  	', '', 'SERFOR', '', 'Vistas/img/admins/S248.jpg', '', '2022-02-28 18:41:53', '', '', '', ''),
(50, ' Dapozzo Ibañez ', ' Beatríz Adriana Melanie', '  Directora de la Dirección de Catastro, Zonificación y Ordenamiento', '', '(511) 225 9005', '', '33232212', 'bdapozzo@serfor.gob.pe   	  	 		  		  	', '', 'SERFOR', '', '', '', '2022-02-14 21:30:38', '', '', '', ''),
(51, 'Macera Urquizo ', ' María Cecilia ', ' Directora de la Dirección de Información y Registro', '12/02/1980', ' (511) 225 9005', '', '', 'mmacera@serfor.gob.pe   	  	 		  		  	 ', '', 'SERFOR', '', '', '', '2022-02-07 09:15:35', '', '', '', ''),
(52, ' Durán Montesinos  ', ' Patricia ', ' Directora (e) de la Dirección De Inventario y Valoración', '0000-00-00', '(511) 225 9005', '', '', 'pduran@serfor.gob.pe   	  	 		  		  	  ', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(53, 'Durán Montesinos ', ' Patricia ', ' Directora (e) de la Dirección De Inventario y Valoración', '0000-00-00', 'NA', '', '', 'NA', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(54, ' Cerdán Quiliano   ', ' Miriam Mercedes ', ' Directora General de la Dirección General de Gestión Sostenible del Patrimonio Forestal y de Fauna Silvestre', '0000-00-00', '012259005', '', '', 'mcerdan@serfor.gob.pe   	  	 		  		', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(55, ' Calderón Valenzuela  ', ' Ana Luisa ', '  Directora de la Dirección de Control de la Gestión Del Patrimonio Forestal y de Fauna Silvestre', '', ' (511) 225 900', '', '', 'acalderon@serfor.gob.pe   	  	 		  		  	', '', 'SERFOR', '', '', '', '2022-02-06 15:24:31', '', '', '', ''),
(56, ' Durand Besnard ', ' Jessica Maria Gálvez ', ' Jess Directora de la Dirección de Gestión Sostenible del Patrimonio de Fauna Silvestre', '0000-00-00', ' (511) 225 9005', '', '', ' jgalvez@serfor.gob.pe   	  	 		  		', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(57, ' Sanabria Villalva   ', ' Henry ', '   Director de la Dirección de Gestión Sostenible del Patrimonio Forestal', '0000-00-00', '01 2259005', '', '', ' hsanabria@serfor.gob.pe   	  	 		  		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(58, 'Enciso Hoyos  ', ' Marco Alonso', ' Director General de la Dirección General de Política y Competitividad Forestal y de Fauna Silvestre ', '0000-00-00', '(511) 225 9005', '', '', ' menciso@serfor.gob.pe   	  	 		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(59, ' Gonzáles Molina   ', ' Sonia María', '   Directora de la Dirección de Fortalecimiento de Capacidades', '0000-00-00', '(511) 225 9005', '', '', ' sgonzales@serfor.gob.pe   	  	 		  		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(60, ' Llanos Ramírez ', ' Marco Antonio ', 'Director de la Dirección de Promoción y Competitividad', '0000-00-00', '(511) 225 9005', '', '', ' mllanos@serfor.gob.pe   	  	 		  		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(61, ' Carreño Villar  ', ' Fabiola Adela ', 'Directora de la Dirección de Estudios e Investigación', '0000-00-00', '012259005', '', '', 'fcarreno@serfor.gob.pe   	  	 		  		  	  ', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(62, ' Peñaloza Macha  ', ' Danny Oswald ', '  Director (e) de la Dirección de Política y Regulación ', '0000-00-00', '012259005', '', '', ' dpenaloza@serfor.gob.pe   	  	 		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(63, ' Castañeda Varas  ', ' Omar Prudencio ', '  Director General de la Dirección General de Gestión del ', '0000-00-00', '(511) 225 9005', '', '', ' ocastaneda@serfor.gob.pe   	  	 		  		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(64, 'Serafin Rodano  ', ' Filomeno Alves Milho ', '  Director de la Dirección de Evaluación', '0000-00-00', '2259005', '', '', ' sfilomeno@serfor.gob.pe   	  	 		', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(65, ' Sotelo Sung  ', ' Luisa Angela ', ' Directora de la Dirección de Seguimiento', '0000-00-00', '(511) 225 9005 A', '', '', ' lsotelo@serfor.gob.pe   	  	 		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(66, ' Manco Suni  ', ' Enrique Julio ', 'Director de la Oficina de Tecnologías de la Información', '0000-00-00', ' 012259005', '', '', 'emanco@serfor.gob.pe   	  	 		  		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(67, ' Fiestas Ramírez  ', ' José Alex ', ' Director de la Oficina de Servicios al Usuario y Tramite Documentario', '0000-00-00', 'NA', '', '', 'NA', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(68, 'Limo Cajo  ', ' Jessica del Pilar', '  Directora de la Oficina de Comunicaciones', '0000-00-00', ' 01 2259005', '', '', 'jlimo@serfor.gob.pe   	  	 		  		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(69, ' Bustamante Román ', ' Lucy Fabiola ', '  Directora (e) de la Oficina General de Asesoría Jurídica ', '0000-00-00', '(01) 2259005', '', '', 'lbustamante@serfor.gob.pe   	  	 	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(70, ' Aldana Vilchez  ', ' Juan Jesus   ', ' Director General de la Oficina General de Planeamiento y Presupuesto ', '0000-00-00', '012259005', '', '', ' jaldana@serfor.gob.pe   	  	 		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(71, 'Sánchez Salas   ', ' Daniel Ricardo ', '   Director de la Oficina de Presupuesto', '0000-00-00', ' 01 2259005', '', '', ' dsanchezs@serfor.gob.pe   	  	 		  		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(72, 'Castro Trkovic  ', ' Jorge Fidel   ', ' Director General de Planeamiento y Racionalización', '0000-00-00', 'NA', '', '', 'NA', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(73, ' Calderón Acosta  ', ' Leoncio José ', ' Director de la Oficina de Cooperación Internacional', '0000-00-00', ' 01 2259005', '', '', ' lcalderon@serfor.gob.pe   	  	 		  		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(74, 'Vásquez Silva  ', ' Jaime ', 'Director General de la Oficina General de Administración', '0000-00-00', ' 01 2259005', '', '', 'jvasquez@serfor.gob.pe   	  	 		  		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(75, ' Flores Cuba  ', ' César Héctor ', ' Director de la Oficina de Contabilidad', '0000-00-00', '(511) 225 9005', '', '', ' cflores@serfor.gob.pe   	  	 		  		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(76, ' Valdivia Gutarra ', ' Elizabeth Jesús', '   Directora de la Oficina de Tesorería', '0000-00-00', '(511) 225 9005', '', '', ' evaldivia@serfor.gob.pe   	  	 		  		', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(77, ' Molina Cereceda ', ' Alan Alex   ', ' Director de la Oficina de Abastecimiento', '0000-00-00', ' 012259005', '', '', 'amolina@serfor.gob.pe   	  	 		 ', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(78, ' Odiaga Guevara ', ' Demetrio Antonio ', 'Director de la Oficina de Recursos Humanos', '0000-00-00', '  012259005', '', '', '', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(79, ' Carrillo Vargas ', ' Hugo Edgar ', '  Administrador Técnico Forestal y de Fauna Silvestre - Áncash ', '0000-00-00', ' (043) 396 124', '', '', ' hcarrillo@serfor.gob.pe   	  	 		  		', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(80, ' Quiroz Gonzáles ', ' Edinson Abel ', '  Administrador Técnico Forestal y de Fauna Silvestre - Apurímac', '0000-00-00', '083-324202', '', '', ' equiroz@serfor.gob.pe   	  	 		', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(81, 'Gonzáles Dueñas  ', ' Luis Felipe ', '  Administrador Técnico Forestal y de Fauna Silvestre - Arequipa', '0000-00-00', '(054) 234 575', '', '', ' lgonzales@serfor.gob.pe   	  	 		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(82, ' Chavarry Barrantes  ', ' Willan Rolando  ', ' Administrador Técnico Forestal y de Fauna Silvestre (e) - Cajamarca', '0000-00-00', ' 076-313618', '', '', ' wchavarry@serfor.gob.pe   	  	 		  		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(83, '  Rojas Apaza', ' Ronal  ', ' Administrador Técnico Forestal y de Fauna Silvestre - Cusco', '0000-00-00', '084-231948', '', '', ' rrojasa@serfor.gob.pe   	  	 		  		 ', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(84, ' Castilla Valenzuela  ', ' Carmen ', ' Administrador Técnico Forestal y de Fauna Silvestre - Ica', '0000-00-00', '  (056) 287 099', '', '', 'ccastilla@serfor.gob.pe   	  	 		  		  	 ', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(85, ' Paredes Pajares  ', ' Karla Patricia', 'Administradora Técnico Forestal y de Fauna Silvestre - Lambayeque', '0000-00-00', '  074-274054', '', '', '', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(86, ' Ramos Bardalez ', ' Guillermo Enrique ', '  Administrador Técnico Forestal y de Fauna Silvestre - Lima', '0000-00-00', ' 01 2259005', '', '', ' gramosb@serfor.gob.pe   	  	 		  		  	  ', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(87, ' Riveros Arteaga  ', ' Gilbert Christian ', '  Administrador Técnico Forestal y de Fauna Silvestre - Moquegua/Tacna', '0000-00-00', '  (052) 413 936', '', '', 'griveros@serfor.gob.pe   	  	 		  		  	  ', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(88, ' Schwartz Arias   ', ' Enrique Luis ', 'Administrador Técnico Forestal y de Fauna Silvestre - Sierra Central', '0000-00-00', '  (064) 216 064', '', '', 'eschwartz@serfor.gob.pe   	  	 		  		  	', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(89, ' Bastidas Casas  ', ' Joyer Óscar ', '  Administrador Técnico Forestal y de Fauna Silvestre - Selva Central', '0000-00-00', '  064 331080', '', '', ' jbastidas@serfor.gob.pe   	  	 		  		  	 ', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(90, ' Seminario Trelles  ', ' Roberto Miceno ', 'Administrador Técnico Forestal y de Fauna Silvestre (e) - Piura', '0000-00-00', ' 073-251155', '', '', ' rseminario@serfor.gob.pe   	  	 		  		', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(91, ' Grover Idme', 'Hañari   ', ' Administrador Técnico Forestal y de Fauna Silvestre - Puno', '0000-00-00', '(051) 367 637', '', '', 'gidme@serfor.gob.pe   	  	 		 ', '', 'SERFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(92, 'Ullilen Vega  ', ' Lucetty ', '  Jefa del OSINFOR', '0000-00-00', '  (01) 615 7373', '', '', ' lullilen@osinfor.gob.pe   	  	 		  		', '', ' OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(93, ' Rojas Sarapura  ', ' Alejandro Alberto ', '  Gerente General', '0000-00-00', '615-7373', '', '', 'arojas@osinfor.gob.pe   	  	 		  		  	 ', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(94, 'Anicama González  ', ' Álvaro José ', '  Asesor 2 Alta Dirección', '0000-00-00', '(01) 6157373', '', '', ' aanicama@osinfor.gob.pe   	  	 	', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(95, 'Sipan Velásquez', ' Julio César ', ' Jefe del Órgano de Control Institucional', '0000-00-00', ' (01) 615 7373', '', '', ' jsipan@osinfor.gob.pe   	  	 		  		  	', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(96, 'Blas Jaimes ', ' David ', '  Director de la Dirección de Evaluación Forestal y de Fauna Silvestre', '0000-00-00', ' 6157373 anexo 1501', '', '', ' dblas@osinfor.gob.pe   	  	 		', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(97, ' Riquelme Ciriaco  ', ' Ildefonzo ', ' Director de la Dirección de Supervisión Forestal y de Fauna Silvestre', '0000-00-00', ' 6157373 anexo 1301', '', '', ' iriquelme@osinfor.gob.pe   	  	 		  	', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(98, ' Chumbiauca Carbajal  ', ' Vivian Yrma', '  Secretaria Técnica del Tribunal Forestal y de Fauna Silvestre', '0000-00-00', '(01) 6157373 Anexo 1721', '', '', ' vchumbiauca@osinfor.gob.pe   	  	 		  		  	  ', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(99, ' Huaman Tarmeño  ', ' Victor Hugo ', '  Director de la Dirección de Fiscalización Forestal y de Fauna Silvestre', '0000-00-00', '01-6157373 Anexo 1401', '', '', 'vhuaman@osinfor.gob.pe   	  	 		  		  	', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(100, ' Arellano Olano  ', ' Williams ', ' Sub Director de la Sub Dirección de Supervisión de Concesiones Forestales y de Fauna Silvestre', '0000-00-00', '6157373 anexo 1310', '', '', ' warellano@osinfor.gob.pe   	  	 		  		', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(101, 'Tapia Ruiz  ', '  Rudy Ernesto ', '  Sub Director de la Sub Dirección de Supervisión de Permisos y Autorizaciones Forestales y de Fauna Silvestrede la Sub Dirección de Supervisión de Concesiones Forestales y de Fauna Silvestre', '0000-00-00', '(01) 6157373 Anexo 1307', '', '', 'rtapia@osinfor.gob.pe   	  	 		  		  	', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(102, ' Espichán Mariñas  ', ' Miguel Angel', '  Sub Director de la Sub Dirección de Fiscalización de Permisos y Autorizaciones Forestales y de Fauna Silvestre', '0000-00-00', '(01) 6157373 Anexo 1402', '', '', ' mespichan@osinfor.gob.pe   	  	 		  		', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(103, ' Artica Cuyubamba  ', ' Gustavo ', ' Gustavo Artica Cuyubamba  Jefe de la Oficina de Tecnología de la Información', '0000-00-00', '6157373 anexo 1102', '', '', ' gartica@osinfor.gob.pe   	  	 		  		  	  ', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(105, ' Córdova Chacón  ', ' Denis Omar ', '  Jefe de la Oficina de Asesoría Jurídica, Sub Director (e) de la Sub Dirección de Fiscalización de Concesiones Forestales y de Fauna Silvestre', '0000-00-00', '(01) 6157373 Anexo 1410', '', '', 'dcordova@osinfor.gob.pe   	  	 		  	', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(106, 'Artica Cuyubamba ', 'Gustavo ', ' Jefe de la Oficina de Tecnología de la Información', '0000-00-00', '  6157373  anexo 1102', '', '', 'gartica@osinfor.gob.pe   	  	 		  		 ', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(107, 'Córdova Chacón ', 'Denis Omar', ' Jefe de la Oficina de Asesoría Jurídica, Sub Director (e) de la Sub Dirección de Fiscalización de Concesiones Forestales y de Fauna Silvestre', '0000-00-00', '(01) 6157373 Anexo 1410', '', '', 'dcordova@osinfor.gob.pe   	', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(108, 'Condorchua Vidal ', 'Carmen Patrocinia ', 'Jefa de la Oficina de Administración', '0000-00-00', ' (01) 6157373 Anexo 1107', '', '', 'ccondorchua@osinfor.gob.pe   	  	 		  		', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(109, 'Franco Suárez', 'Diana Mercedes ', ' Jefa de la Oficina de Planificación y Presupuesto', '0000-00-00', '(01) 615 7373 Anexo 1275', '', '', 'dfranco@osinfor.gob.pe', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(110, 'Fano Casachagua', 'Silvana ', ' Ejecutor Coactivo', '0000-00-00', '  6157373 anexo 1422', '', '', ' sfano@osinfor.gob.pe   	  	 		  		  	', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(111, ' Coronel Zubiate', 'Milton ', 'Jefe de la Unidad de Presupuesto', '0000-00-00', ' 6157373 anexo 1273', '', '', ' mcoronel@osinfor.gob.pe   	  	 		  		', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(112, 'Taboada Ramos ', 'Patricia del Rosario ', ' Jefa de la Unidad de Administración Documentaria y Archivo', '0000-00-00', '  (01) 6157373 Anexo 1205', '', '', ' ptaboada@osinfor.gob.pe   	  	 		  		', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(113, ' Vargas Rotta ', 'Patricia Teresa ', 'Jefa de la Unidad de Abastecimiento', '0000-00-00', '(01) 6157373 Anexo 1111', '', '', ' pvargas@osinfor.gob.pe   	  	 		  		', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(114, ' Antón Gabriel ', 'Gerardo David ', 'Jefe de la Unidad de Administración Financiera', '0000-00-00', '(01) 6157373 Anexo 1111', '', '', ' pvargas@osinfor.gob.pe   	  	 		  		', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(115, 'Miranda Guevara ', 'Carolina ', ' Jefa de la Unidad de Planificación y Modernización', '0000-00-00', '  (01) 615 7373 -Anexo 1274', '', '', ' cmiranda@osinfor.gob.pe   	  	 		  		  	  ', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(116, ' Hermitaño Aguilar ', 'Nhorka Yhesenia ', 'Jefa de la Unidad de Recursos Humanos', '0000-00-00', '  (01) 615 7373 Anexo 1270', '', '', 'nhermitano@osinfor.gob.pe   	  	 		', '', 'OSINFOR', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(117, 'LLAPAPASCA SAMANIEGO ', 'OSCAR ALEXANDER ', 'GERENTE DE LA GERENCIA REGIONAL DE DESARROLLO FORESTAL Y FAUNA SILVESTRE', '0000-00-00', 'NA', '', '', ' ollapapasca@regionloreto.gob.pe', '', 'FUNCIONARIO FORESTAL', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(118, ' PEÑA ARMAS ', 'RUBI TESORO ', 'SUBGERENTE DE LA SUBGERENCIA DE CONTROL Y SEGUIMIENTO - GERENCIA REGIONAL DE DESARROLLO FORESTAL Y FAUNA SILVESTRE', '0000-00-00', '  065-266969   	 /  	  065-267010', '', '', ' rpena@regionloreto.gob.pe   	  	 		', '', 'FUNCIONARIO FORESTAL', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(119, ' Gutierrez Rodriguez   	', 'Dr. Angel Luis ', ' Gobernador Regional(e)   	  	', '0000-00-00', 'N.A', '', '', ' presidencia@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(120, 'Gutierrez Rodriguez ', 'Dr. Angel Luis', 'Vicegobernador Regional vicegobernacion@regionucayali.gob.pe', '0000-00-00', 'NA', '', '', 'vicegobernacion@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(121, 'Gonzales Oyola', 'Abog. Juan', ' Secretario General Regional Abog. Juan Gonzales Oyola ', '0000-00-00', 'NA', '', '', ' sec.general@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(122, ' de la Cruz Alayo', 'Carmen Edith ', ' Procurador Público Regional', '0000-00-00', 'NA', '', '', 'procuraduria@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(123, ' Navas Sanchez ', 'Jessica Lizbeth  ', 'Consejero Regional ', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(124, 'Soto Rivera', 'Raul Edgar ', ' Consejero Regional', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(125, ' Barbaran La Torre ', 'Land ', ' Consejero Regional Delegado', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(126, 'Guevara Tello ', 'Emerson Kepler ', ' Consejero Regional Emerson Kepler Guevara Tello', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(127, ' Reyes Agreda ', 'Silverio Florencio R', ' Consejero Regional Silverio Florencio Reyes Agreda', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(128, ' Perez Bailon ', 'Pedro Pablo ', ' Consejero Regional', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(129, 'De La Cruz Ariola ', 'Yldo Ysrael ', ' Consejero Regional', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(130, 'Albares Garcia', ' Laureano ', 'Consejero Regional', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(131, 'Alvarado Montero ', 'Edwin Paul ', ' Consejero Regional', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(132, ' Ramos Tello', 'Erik ', 'Consejero Regional', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(133, 'Zegarra Seminario ', 'Cpcc Carlos David ', 'Gerente General Regional', '0000-00-00', 'NA', '', '', 'czegarra@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(134, ' Rios Ramirez ', 'Jose Luis ', 'Secretario del Consejo Regional', '0000-00-00', 'NA', '', '', 'jrios@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(135, 'De La Cruz Ramos ', 'Fernando Francisco ', 'Gerente de la Oficina Regional de Asesoría Jurídica', '0000-00-00', 'NA', '', '', 'fdelacruz@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(136, 'Pezo Armas ', 'Marcial ', ' Regional de Gestión Forestal y Fauna Silvestre', '0000-00-00', 'NA', '', '', ' grffs@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(137, ' Lopez Panduro ', 'Angel Augusto ', 'Director de la Oficina Regional de Dialogo y Gestion de Conflictos', '0000-00-00', 'NA', '', '', ' alopez@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(138, 'Salcedo Ríos ', 'Jhon Harold ', 'Gerente Regional de Desarrollo de Pueblos Indigenas', '0000-00-00', 'NA', '', '', ' jsalcedo@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(139, ' Nuñez Ramirez ', 'Vicente ', ' Gerente Regional de Desarrollo Economico', '0000-00-00', 'NA', '', '', ' vnunez@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(140, 'Camayteri Sanchez ', 'Denis Pascual ', 'Gerente Territorial de Atalaya', '0000-00-00', 'NA', '', '', ' gerencia.atalaya@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(141, ' Lopez Marquez ', 'Francisco Sergio ', ' GerenteTerritorial de Purus', '0000-00-00', 'NA', '', '', ' gerencia.purus@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(142, ' Villalobos Pinedo ', 'Llercer Karen ', ' Director de la Oficina de Cooperación Técnica y Relaciones Internacionales', '0000-00-00', 'NA', '', '', ' lvillalobos@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(143, 'Guadalupe Baylon ', 'Noé Klever', ' Gerente Regional de la Autoridad Regional Ambiental', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(144, ' ROMERO CARRILLO ', 'JOSHELIN MIGUEL ROMERO CARRILLO', ' Gerente Regional de Desarrollo Social ', '0000-00-00', 'NA', '', '', ' jromero@regionucayali.gopb.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(145, 'Salvatierra Cordova', 'Victor David ', ' Gerente Regional de Infraestructura  ', '0000-00-00', 'NA', '', '', 'gri@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(146, 'Lozano Vargas ', 'Tania ', 'Gerente Regional de Administración', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(147, 'Zapata Vasquez', 'Luis Javier ', 'Gerente Territorial de Atalaya', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(148, 'PEREZ BARDALES ', ' MARCO ANTONIO ', 'Gerente Regional de Planeamiento y Presupuesto ', '0000-00-00', 'NA', '', '', 'mperez@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(149, 'Estrada Baca ', 'Dante Gustavo', 'Oficina Regional de Defensa Nacional ', '0000-00-00', 'NA', '', '', 'destrada@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(150, 'Carlos Vela ', 'Ing. Javier ', ' Gerente Territorial de Padre Abad', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(151, 'Rivera Quispe ', 'Fermina Victoria ', ' Director Regional de Salud', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(152, 'Valencia Orillo', 'Ana Martha', 'Directora de la Oficina de Tramite Documentario y Archivo ', '0000-00-00', 'NA', '', '', ' oficina.tramite@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(153, 'Zumaeta Gonzales ', 'Jorge Francisco ', 'Director de la Oficina de Tecnologias de la Informacion ', '0000-00-00', 'NA', '', '', 'jzumaeta@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(154, 'Baldeon Fernandez ', 'Elias Jesus ', 'Director de la Oficina de Gestión Patrimonial   	  	  ', '0000-00-00', 'NA', '', '', 'jbaldeon@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(155, 'Ortiz Meza ', 'Walter ', 'Director de la Oficina de Gestion de las Personas  ', '0000-00-00', 'NA', '', '', 'ogp@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(156, 'Calderon Vargas', 'Ada Elena ', 'Directora de la Oficina de Contabilidad  ', '0000-00-00', 'NA', '', '', 'acalderon@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(157, 'Ruiz Marina ', 'Jorge', 'Gerente Ejecutivo del Programa Regional de Infraestructura Multisectorial ', '0000-00-00', 'NA', '', '', 'prim@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(158, 'Prudencio Torres ', 'Cristopher Daniel', 'Director de Gestión Ambiental ', '0000-00-00', 'NA', '', '', 'cprudencio@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(159, 'Seijas Valderrama ', 'Nelson', 'Director de Conservación y Diversidad Biológica  ', '0000-00-00', 'NA', '', '', 'nseijas@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(160, 'Hoyos Cardozo', 'Johana ', 'Directora de Gestion del Territorio ', '0000-00-00', 'NA', '', '', ' jhoyos@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(161, 'Navarro Córdova ', 'Pedro ', 'Sub Gerente de Programación Multianual de Inversiones ', '0000-00-00', 'NA', '', '', 'pnavarro@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(162, 'Rengifo Rojas ', 'Lisette ', 'Sub Gerente de Planificación y estadítica ', '0000-00-00', 'NA', '', '', 'lrojas@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(163, 'Arce Muñoz ', 'Nelly Katty ', 'Sub Gerente de Presupuesto ', '0000-00-00', 'NA', '', '', 'narce@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(164, 'Grajeda Waman ', 'Marco Antonio', ' Sub Gerente de Desarrollo Institucional  ', '0000-00-00', 'NA', '', '', 'mgrajeda@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(165, 'Tang Gonzales', 'Tony ', 'Jefe de Oficina de Enlace Lima ', '0000-00-00', 'NA', '', '', 'oficina.enlace@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(166, 'Roque Ruiz ', 'Julio Cesar ', 'Coordinador del Programa de Desarrollo Comunal ', '0000-00-00', 'NA', '', '', 'pdc@regionucayali.go.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(167, 'Tello Rios', 'Juana ', 'Director Regional de Educación ', '0000-00-00', 'NA', '', '', 'dreu@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(168, 'Rengifo Ramirez ', 'Demetrio Tercero ', ' Director Regional de Comercio Exterior y Turismo', '0000-00-00', 'NA', '', '', 'dircetur@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(169, ' FERRE RODRIGUEZ ', 'WALTER RICHAR', ' Director Regional de la Producción', '0000-00-00', 'NA', '', '', ' direpro@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(170, ' Arce Cordova', 'Nelton Javier ', ' Director Regional de Transportes y Comunicaciones', '0000-00-00', 'NA', '', '', 'dirtc@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(171, 'Uchupe Huamani ', 'ABG. Williams Pastor ', ' Director Regional de Trabajo y Promoción del Empleo  ', '0000-00-00', 'NA', '', '', 'dirtpe@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(172, 'Huanco Yucra ', 'Edgar ', ' Director Regional de Energía y Minas ', '0000-00-00', 'NA', '', '', 'direm@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(173, 'Usaqui Barbaran ', 'Diana ', ' Director Regional de Vivienda Constrcucción y Saneamiento ', '0000-00-00', 'NA', '', '', 'dirvicos@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(174, 'Meza Martel ', 'Jhon Uldarico ', 'Sub Gerente de Obras ', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(175, 'Cisneros Rojas ', 'Edwin Patricio ', 'Sub Gerente de Estudios', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(176, ' Chuquipiondo Ibaran ', 'Rodolfo Francisco', ' Director Ejecutivo de la Oficina de Tesoreria', '0000-00-00', 'NA', '', '', ' tesoreria@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(177, 'Melendez Tuesta ', 'Hernando M', 'Director de la Oficina de Logistica', '0000-00-00', 'NA', '', '', 'ogistica@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(178, 'Dolci Rios', 'Mario Fernando ', 'Director Regional de Agricultura', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(179, 'Flores Tapia   	 ', 'Jorge Luis ', ' Director de la Oficina de Imagen Institucional   	  	  ', '0000-00-00', 'NA', '', '', ' imagen.goreu@regionucayali.gob.pe40402531', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(180, 'Munarris Noriega ', 'Ruben ', 'Sub Gerente de Politicas, Seguimiento y Evaluacion  ', '0000-00-00', 'NA', '', '', ' rmunarris@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(181, 'CHUJUTALLI MEGO', 'CECILIA ', 'Sub Gerente de la Juventud, Poblaciones Vulnerables y Proyectos Sociales', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(182, 'CALERO MARTINEZ ', ' LIZ MAGALLY ', ' Sub Gerente de Promocion del Desarrollo Humano e Inclusion Social', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(183, ' AYALA ORBE ', 'KRISTEL PATRICIA', 'Sub Gerente de Promocion de Inversiones y Competitividad Regional', '0000-00-00', 'NA', '', '', 'NA', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(184, 'Zea Panaifo ', 'Lila Isabel ', 'Directora de la Aldea San Juan', '0000-00-00', 'NA', '', '', 'aldeasanjuan@regionucayali.gob.pe', '', 'FUNCIONARIO-UCAYALI', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(185, 'Ramírez Mateo ', 'Rubén José', 'Ministro del Ambiente ', '0000-00-00', '6116000 Anexo 1004', '', '', ' rramirezm@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(186, 'Mamani Salinas ', 'Alfredo', 'Viceministro de Desarrollo Estratégico de los Recursos Naturales  	 		  		  	', '0000-00-00', '6116000 Anexo 1633', '', '', 'amamani@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(187, 'Sánchez-Moreno ', 'Mariano Castro 	  	', 'Viceministro de Gestión Ambiental  ', '0000-00-00', '016116000 Anexo 1023', '', '', 'mcastrosm@minam.gob.pe   	  	 		  		 ', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(188, 'Figueroa Valderrama', 'Patricia Hilda Elizabeth  ', ' Secretaria General ', '0000-00-00', '6116000 Anexo 1214', '', '', 'NA', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(189, 'Zaldívar Chauca   	 		  		 ', 'Viviana 	  		  	', 'Jefa de Gabinete de Asesores    	 		  	', '0000-00-00', '6116000 Anexo 2022', '', '', 'vzaldivar@minam.gob.pe   	  	 		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(190, 'Dueñas Agüero ', 'Marleny ', 'Jefa (e) de Órgano de Control Institucional', '0000-00-00', 'NA', '', '', 'NA', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(191, 'Julca Quevedo', 'Edwin Armando   		  	  ', 'Director de la Oficina de Comunicaciones e Imagen Institucional    	  	 		  		  	', '0000-00-00', '6116000 Anexo 1640', '', '', 'ejulcaq@minam.gob.pe   	  	 		  		  	 ', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(192, 'Guzmán Mendoza ', 'Julio César   		  	', 'Procurador Público del Ministerio del Ambiente   	 		  		  	', '0000-00-00', '01 611-6000 Anexo 1220', '', '', 'NA', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(193, 'Julca Quevedo  	 		  		  	', 'Edwin Armando', ' Director de la Oficina de Comunicaciones e Imagen Institucional 	  	 		  		 ', '0000-00-00', '6116000 Anexo 1640', '', '', 'ejulcaq@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(194, 'Escalante Del Álamo  	  	 		  		  ', 'Irania  		  		', 'Directora de la Oficina de Gestión Documental y Atención a la Ciudadanía    	  	 		', '0000-00-00', '611-6000 Anexo 1042', '', '', 'iescalante@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(195, 'Alache Morocho  		', 'Martín Alexander 	  		  	', 'Director (e) de Integridad Institucional  	  	 		  		  	', '0000-00-00', ' 6116000 Anexo 1043', '', '', 'malache@minam.gob.pe   	  	 		  		 ', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(196, 'Salazar Villavicencio  	 		', 'Ismael Edwin 		  		  	', 'Director (e) general de la Oficina de Tecnologías de la Información  ', '0000-00-00', '  6116000 Anexo 1558', '', '', 'isalazar@minam.gob.pe   	  	 	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(197, 'Muñoz Rivera   	 		 ', 'Juana ', 'Directora de la Oficina General de Administración    	 		  		  	', '0000-00-00', '  6116000 Anexo 1520', '', '', ' jmunoz@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(198, ' Alva Espinoza', 'Ana Victoria ', ' Directora de la Oficina General de Recursos Humanos   ', '0000-00-00', ' 6116000 Anexo 1532', '', '', 'NA', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(199, 'Morales Campos  		  		', 'James Raphael   		  	 ', 'Director de la Oficina General de Asesoría Jurídica    	 		  		', '0000-00-00', '6116000 Anexo 1450', '', '', 'jmorales@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(200, 'Morales Dueñas 		  		  	  ', 'Danny Daniel ', ' Director de la Oficina General de Planeamiento y Presupuesto  	 		  		  	', '0000-00-00', '611-6000 Anexo 1514', '', '', 'dmoralesd@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(201, ' Villafuerte de Cronkleton   	 		  		', 'Martha Carolina ', ' Directora (e) de la Oficina General de Cooperación y Asuntos Internacionales  		  	', '0000-00-00', '  611-6000 Anexo 1430', '', '', ' mcuba@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(202, 'Eyzaguirre Beltroy  		  		  	', 'Carlos Francisco	  	', 'Director (e) de la Oficina General de Asuntos Socio-Ambientales ', '0000-00-00', '6116000 Anexo 1440', '', '', ' ceyzaguirre@minam.gob.pe   	  	 		  		  	  ', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(203, 'Álvarez Alonso ', 'José   	 		  		  	', ' Director general de Diversidad Biológica  	 		  		', '0000-00-00', '  611 6000 Anexo 1340', '', '', 'jalvarez@minam.gob.pe   	  	 		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(204, 'Morales Saravia ', 'Rosa Mabel ', ' Directora general de Cambio Climático y Desertificación', '0000-00-00', 'NA', '', '', 'NA', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(205, 'Garay Rodríguez 	  		  	', 'Johanna  		  	  ', ' Directora general de Ordenamiento Territorial y de la Gestión Integrada de los Recursos Naturales   		  	', '0000-00-00', ' 611-6000 Anexo 1310', '', '', 'Jgaray@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(206, 'Medrano Sánchez 	  	 		  		  	', 'Emilio José   	', 'Director general (e) de Economía y Financiamiento Ambiental   	  	 		  		  	', '0000-00-00', '6116000 Anexo 1230', '', '', 'emedrano@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(207, ' Soto Torres 	  		  	', 'Raquel Hilianova', 'Directora general de Políticas e Instrumentos de Gestión Ambiental y directora general (e) de Educación, Ciudadanía e Información Ambiental  		  		', '0000-00-00', '611 6000 Anexo 1240', '', '', ' rsoto@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(208, ' Verástegui Salazar 	  		  	', 'Milagros Del Pilar  		  		  	', ' Directora general de Calidad Ambiental  ', '0000-00-00', '6116000 Anexo 1250', '', '', 'mverastegui@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(209, 'Romero La Puente ', 'Edgar Martín ', 'Director general de Gestión de Residuos Sólidos  ', '0000-00-00', '6116000 Anexo 1334', '', '', 'eromero@minam.gob.pe   	  	 		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(210, 'Mendo Goñi	  		  	 ', 'Juan Carlos', ' Director de la Oficina de Finanzas  j 	  	 		  		', '0000-00-00', '6116000 Anexo 1611', '', '', 'jmendo@minam.gob.pe   	  	 		  		  	  ', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(211, 'Paz Yzaguirre ', 'Abel Antonio ', ' Director de la Oficina de Abastecimiento  	 		  		  	', '0000-00-00', '6116000 Anexo 1535', '', '', ' apaz@minam.gob.pe   	  	 		  		', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(212, 'Príncipe Ccolqque ', 'José Luis   	 		  		  	 ', 'Director (e) de la Oficina de Modernización y director (e) de Planeamiento   	 		  		', '0000-00-00', '6116000 Anexo 1515', '', '', '  jprincipe@minam.gob.pe   	  	 		  		  	  ', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(213, 'Barrera Montoya ', 'Hermes Esmith 		  		  	', 'Director de la Oficina de Presupuesto y Programación Multianual de Inversiones   	  	 		  		  	', '0000-00-00', '  6116000 Anexo 1856', '', '', ' hbarrera@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(214, ' Nuñez Neyra ', 'Fabiola Rocio  	 		  		  	  ', 'Directora de Conservación Sostenible de Ecosistemas y Especies', '0000-00-00', '611-6000 Anexo 1349', '', '', 'fnunez@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(215, 'Amanzo Alcántara  	 		  	', 'Jessica María   		  	', 'Directora de Recursos Genéticos y Bioseguridad   	', '0000-00-00', ' 6116000 Anexo 1931', '', '', 'jamanzo@minam.gob.pe   	  	 		  		  ', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(216, ' Rodríguez Valladares ', 'Silvia Cristina 	  	', ' Directora de Adaptación al Cambio Climático y Desertificación  		  		', '0000-00-00', '611 6000 Anexo 1937', '', '', 'srodriguez@minam.gob.pe   	  	 		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(217, 'Sandoval Diaz ', 'Milagros   	 		', 'Directora de Mitigación de Gases de Efecto Invernadero  	  		  	  ', '0000-00-00', '6116000 Anexo 1350', '', '', 'msandovald@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(218, 'Guardia Yupanqui   	 		', 'Doris María  		  		 ', 'Directora de Instrumentos para el Ordenamiento Territorial y la Gestión Integrada de los Recursos Naturales 		', '0000-00-00', '6116000 Anexo 1313', '', '', 'dguardia@minam.gob.pe   	  	 		  		', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(219, 'Pequeño Saco  		  		  	  ', 'Tatiana Zarella	', 'Directora de Monitoreo y Evaluación de los Recursos Naturales del Territorio  	 		  		  	 ', '0000-00-00', ' 611-6000 Anexo 1311', '', '', 'tpequeno@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(220, 'Ledesma Goyzueta', 'Luis Manuel 	  		', 'Director (e) de Economía Ambiental 	  	 		  		  	', '0000-00-00', '6116000 Anexo 1231', '', '', 'lledesma@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(221, ' Del Aguila Caute  	 		', 'Lady Diana ', 'Directora (e) de Financiamiento Ambiental	  		', '0000-00-00', '6116000 Anexo 1237', '', '', 'ldelaguila@minam.gob.pe   	  	 		  		', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(222, 'Dávila Ordóñez ', 'Jimpson Jesús ', 'Director (e) de Políticas e Instrumentos de Gestión Ambiental', '0000-00-00', 'NA', '', '', 'NA', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(223, ' Villegas Samanez ', 'Jesús Fernando ', ' Director (e) de Gestión Ambiental Descentralizada y Participativa   	 		  		  	  ', '0000-00-00', '6116000 Anexo 1241', '', '', 'jvillegas@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(224, 'Soto Torres', 'Raquel Hilianova ', ' Directora (e) de Gestión de Evaluación de Impacto Ambiental', '0000-00-00', 'NA', '', '', 'NA', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(225, 'Concepción Gamarra ', 'Eric Eduardo ', ' Director de Calidad Ambiental y Ecoeficiencia ', '0000-00-00', 'NA', '', '', 'NA', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(226, 'Santiváñez Acosta', 'Rocío Marlene ', ' Directora de Control de la Contaminación y Sustancias Químicas   		', '0000-00-00', '6116000 Anexo 1256', '', '', ' rsantivanez@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(227, 'Rivera Chale  	 		  		', ' Victoria Yolanda ', ' Directora (e) de Instrumentos de Gestión de Residuos Sólidos  	  	 		  		  	', '0000-00-00', '6116000 Anexo 1865', '', '', 'vriverac@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(228, 'Quiche Ruiz ', 'Alicia Marlene ', 'Ruiz Directora (e) de Gestión y Manejo de Residuos Sólidos  ', '0d/mm/yyyy', ' 61160000', '', '', 'NA', '', 'MINAM', '', '', '', '2022-03-22 07:55:05', '', '', '', ''),
(229, 'Alzamora López   	 		  		  	', 'Walter  		', 'Director (e) de Evaluación Ambiental y Autorizaciones walzamora@minam.gob.pe   	  	 		', '0000-00-00', '  6116000 Anexo 1258', '', '', ' walzamora@minam.gob.pe   	  	 		  		', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(230, 'Dulanto Tello', 'Andrés ', ' Director de Educación y Ciudadanía Ambiental ', '0000-00-00', 'NA', '', '', 'NA', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(231, ' Mejía Solano 		  		  ', 'Carmen ', ' Directora de Información, Investigación e Innovación Ambiental  		  		  	', '0000-00-00', '611-6000 Anexo 1846', '', '', 'cmejia@minam.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', ''),
(232, 'Valdivía Pacheco ', 'Rudy Alberto', 'Coordinador ejecutivo (e) Programa Nacional de Conservación de Bosques para la Mitigación del Cambio Climático  		', '0000-00-00', ' 5009200 Anexo 114', '', '', 'rvaldivia@bosques.gob.pe   	  	 		  		  	', '', 'MINAM', '', '', '', '2022-02-05 17:21:00', '', '', '', '');

--
-- Disparadores `consultores`
--
DELIMITER $$
CREATE TRIGGER `consultores` AFTER UPDATE ON `consultores` FOR EACH ROW IF NEW.institucion <> OLD.institucion 
THEN  
  INSERT INTO historial(nombre, institucion) VALUES(NEW.nombre, NEW.institucion) ;
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `institucion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id`, `nombre`, `fecha`, `institucion`) VALUES
(1, 'Jorge Augusto', '2022-02-06 05:03:15', 'carlos'),
(2, 'Jorge Augusto', '2022-02-06 05:05:13', 'pedro'),
(3, ' Levin Evelin   ', '2022-02-06 05:15:52', ''),
(4, ' Elvira ', '2022-02-06 05:15:56', ''),
(5, ' Levin Evelin   ', '2022-02-06 05:27:58', 'jose'),
(6, ' Elvira ', '2022-02-06 05:28:01', 'carlo'),
(7, ' Elvira ', '2022-02-06 05:28:03', 'carlos'),
(8, ' Levin Evelin   ', '2022-02-06 05:32:01', 'jose'),
(9, ' Beatríz Adriana Melanie', '2022-02-06 05:32:34', ''),
(10, 'Jorge Augusto', '2022-02-06 14:27:50', 'pedro'),
(11, 'Jorge Augusto', '2022-02-06 14:27:55', 'pedro'),
(12, 'Jorge Augusto', '2022-02-06 14:28:00', 'pedro'),
(13, ' Elvira ', '2022-02-06 14:44:37', 'carlos'),
(14, ' Ana Luisa ', '2022-02-06 15:24:31', ''),
(15, ' Beatríz Adriana Melanie', '2022-02-06 15:24:55', ''),
(16, 'Jorge Augusto', '2022-02-06 15:27:09', 'pedro'),
(17, ' Elvira ', '2022-02-06 15:32:54', 'yelsin'),
(18, ' Beatríz Adriana Melanie', '2022-02-06 15:35:35', ''),
(19, 'Jorge Augusto', '2022-02-07 01:57:54', ''),
(20, 'Jorge Augusto', '2022-02-07 06:09:17', ''),
(21, 'Jorge Augusto', '2022-02-07 06:10:28', 'SERFOR'),
(22, 'Jorge Augusto', '2022-02-07 06:10:48', 'SERF'),
(23, 'Jorge Augusto', '2022-02-07 06:11:01', 'SERFOR'),
(24, 'Jorge Augusto', '2022-02-07 06:36:35', 'SERFO'),
(25, 'Jorge Augusto', '2022-02-07 06:38:13', 'SERFORES'),
(26, 'Jorge Augusto', '2022-02-07 06:39:49', 'SERFOR'),
(27, 'Jorge Augusto', '2022-02-07 06:41:33', 'S'),
(28, 'Jorge Augusto', '2022-02-07 07:32:21', 'SERFOR'),
(29, 'Jorge Augusto', '2022-02-07 09:10:50', 'SERFOR'),
(30, 'Jorge Augusto', '2022-02-07 09:12:14', 'SERFOR'),
(31, ' Levin Evelin   ', '2022-02-07 09:13:36', 'SERFOR'),
(32, ' María Cecilia ', '2022-02-07 09:15:35', 'SERFOR'),
(33, ' Beatríz Adriana Melanie', '2022-02-14 21:30:33', 'SERFO'),
(34, ' Beatríz Adriana Melanie', '2022-02-14 21:30:38', 'SERFOR'),
(58, 'Jorge Augusto', '2022-02-14 21:45:25', 'SERFOR'),
(59, ' Levin Evelin   ', '2022-02-14 21:45:30', 'SERFOR'),
(60, ' Elvira ', '2022-02-14 21:46:06', 'SERFOR'),
(61, ' Elvira ', '2022-02-14 22:13:54', 'SERFOR'),
(62, 'Jorge Augusto', '2022-02-14 22:16:16', 'SERFO'),
(63, 'Jorge Augusto', '2022-02-17 17:51:31', 'SERFOR'),
(64, 'Jorge Augusto', '2022-02-21 17:12:56', 'SERFOR'),
(65, 'Jorge Augusto', '2022-02-21 17:14:11', 'SERFOR'),
(66, 'Jorge Augusto', '2022-02-21 17:14:24', 'SERFOR'),
(67, ' Levin Evelin   ', '2022-02-21 17:37:58', 'SERFOR'),
(68, ' Elvira ', '2022-02-28 18:41:53', 'SERFOR'),
(69, 'Javier Orccosupa ', '2022-03-22 07:24:06', 'MINAM'),
(70, 'Javier Orccosupa ', '2022-03-22 07:24:13', 'MINAM'),
(71, 'Alicia Marlene ', '2022-03-22 07:55:05', 'MINAM'),
(72, 'Jorge Augusto', '2022-03-22 07:55:11', 'SERFOR'),
(73, '', '2022-03-22 08:09:44', ''),
(74, '', '2022-03-22 08:12:16', ''),
(75, 'carlos', '2022-03-22 08:12:24', ''),
(76, 'carlos', '2022-03-22 08:14:00', ''),
(77, 'yelsin', '2022-03-22 14:43:31', 'forest'),
(78, 'OSINFOR', '2022-03-29 00:24:25', 'Jorge Augusto'),
(79, 'Jorge Augusto', '2022-03-29 00:27:19', 'GERFOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historias`
--

CREATE TABLE `historias` (
  `id` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` text DEFAULT NULL,
  `clave` text NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `foto` text NOT NULL,
  `rol` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`, `nombre`, `apellido`, `foto`, `rol`) VALUES
(6, 'yelsin', '123', 'yelsin', 'Hermenegildo', 'Vistas/img/admins/S413.jpg', 'administrador'),
(29, 'alexto', '123', 'alex', 'jose', 'Vistas/img/admins/S112.png', 'editor'),
(37, 'jose', '123', 'carlos', 'carlos', '', 'lector'),
(38, 'gabriela', '1234', 'gabriel', 'sanchez', '', 'lector');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carpetas`
--
ALTER TABLE `carpetas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `consultores`
--
ALTER TABLE `consultores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historias`
--
ALTER TABLE `historias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `carpetas`
--
ALTER TABLE `carpetas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `consultores`
--
ALTER TABLE `consultores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `historias`
--
ALTER TABLE `historias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
