CREATE DATABASE IF NOT EXISTS bd_pj;
USE bd_pj;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE t_admin(
    admin_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    admin_name VARCHAR(99) NOT NULL,
    admin_pass VARCHAR(250) NOT NULL,
    admin_type TINYINT(1)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO t_admin (admin_id, admin_name, admin_pass, admin_type) VALUES
(1, 'superadmin', 'superadmin', 1),
(2, 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_facilitadores`
--

CREATE TABLE `cat_facilitadores` (
  `id_facilitador` varchar(50) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `puesto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_facilitadores`
--

INSERT INTO `cat_facilitadores` (`id_facilitador`, `nombre`, `puesto`) VALUES
('0232', 'Medina Gonzalez Ines Guadalupe', 'Facilitador'),
('0254', 'Arceo Escalante Elaine Vianey', 'Facilitador'),
('0271', 'Briceño Lopez Elvia Rosa', 'Facilitador'),
('0282', 'Carrillo Aguilar Rocio de Fatima', 'Facilitador'),
('0330', 'Avila Miranda Elma Gabriela', 'Directora'),
('0405', 'Marfil Turriza Ana Lilia', 'Facilitador'),
('0420', 'Maiza Cruz Charlie Geraldine', 'Facilitador'),
('0425', 'Briceño Alvarado Esmeralda Selene', 'Facilitador'),
('0494', 'Gomez Martin Manuel Humberto', 'Facilitador'),
('0544', 'Mena Arceo Guadalupe Evelin', 'Facilitador'),
('0591', 'Gongora Bastarrachea Yenny', 'Facilitador'),
('0669', 'Ku Anguas Oscar Manuel', 'Facilitador'),
('0704', 'Casanova Medina Gener Cuauhtemoc', 'Facilitador'),
('0755', 'May Garcia Fernando Martin', 'Facilitador'),
('0778', 'May Vera Wilton Demetrio', 'Facilitador'),
('0796', 'Lopez Gonzalez Monica Gabriela', 'Facilitador'),
('0808', 'Ramirez Ramos Gustavo Enrique', 'Facilitador'),
('0831', 'Alcocer Gamboa Pedro Santiago', 'Facilitador'),
('0969', 'Leal Castillo Gabriela', 'Facilitador'),
('1002', 'Saide Poot Fatima Guadalupe', 'Facilitador'),
('1016', 'Aguilar Moreno Guadalupe Evangelina', 'Facilitador'),
('1029', 'Ake Puch Araceli del Carmen', 'Facilitador'),
('1082', 'Colonia Romero Lisset Margarita', 'Facilitador'),
('1108', 'Rolando Jesús Canul Franco', 'Facilitador'),
('1146', 'Gonzalez Rodriguez Gabriela Areli', 'COORD. ESTADISTICA'),
('1147', 'SGC: Sistema Gesti&oacute;n de Calidad', 'C&oacute;mite/Apoyo'),
('1239', 'Patricia Eugenia Sandoval Berzunza', 'Jefa de la Unidad de Planeaci&oacuten'),
('1254', 'Burgos Gamboa Cindy Marisol', 'Facilitador'),
('1324', 'Julissa Ivet Sanmiguel Manzano', 'Secretaria Ejecutiva'),
('1640', 'Cristina Guadalupe Perera Canul', 'Facilitador'),
('1750', 'Pilar Guadalupe Cetina Parra', 'Recepcionista');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_facilitadores`
--
ALTER TABLE `cat_facilitadores`
  ADD PRIMARY KEY (`id_facilitador`);
COMMIT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_oficinas`
--

CREATE TABLE `cat_oficinas` (
  `num_oficina` varchar(50) NOT NULL,
  `oficina` varchar(250) NOT NULL,
  `ubicacion` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_oficinas`
--

INSERT INTO `cat_oficinas` (`num_oficina`, `oficina`, `ubicacion`, `direccion`) VALUES
('01', 'Adolescentes', 'Mérida', 'Centro Especializado en la Aplicación de Medidas para Adolescentes. Anillo Periférico Poniente Km.45, Mérida, Yucatán'),
('02', 'Central', 'Mérida', 'Calle 35 No. 501-A x 62 y 62-A Col. Centro C.P. 97000, Mérida, Yucatán'),
('03', 'Kanasin', 'Kanasín', 'Calle 23 No. 20 x 36 y 38, Kanasín, Yucatán'),
('04', 'Penal', 'Mérida', 'Calle 60, Ex. Hacienda San José Tecoh, por Anillo Periférico, Sección Sur. Mérida, Yucatán. Juzgados Penales del Primer Departamento'),
('05', 'Progreso', 'Progreso', 'Calle 37 No. 85 x 18 y 20, Puerto de Abrigo. Progreso, Yucatán'),
('06', 'Tekax', 'Tekax', 'Calle 41. Solar Número 2, Manzana 59. Tekax Yucatán'),
('07', 'Ticul', 'Ticul', 'Calle 26 S/N entre 21 y 23 Centro. Ticul, Yucatán'),
('08', 'Uman', 'Umán', 'Calle 25 No. 144, Carretera Umán-Celestún, Umán, Yuc. (Fte. Campo Siglo XXI)'),
('09', 'Valladolid', 'Valladolid', 'Calle 45 No. 228. Calzada de los Frailes. Barrio de Sisal. Valladolid, Yucatán'),
('10', 'CJOM', 'Mérida', 'Centro de Justicia Oral de Mérida. Calle 145, No. 299, Colonia San José Tecoh'),
('11', 'Centro de Justicia para las Mujeres', 'Mérida', 'Periférico Poniente km 46.5 tramo Susúla-Caucel detrás del edificio que ocupa la Fiscalía General del Estado de Yucatán en esta ciudad de Mérida, Yucatán'),
('12', 'Juzgado Primero de Oralidad Familiar (Turno Vespertino)', 'Mérida', ''),
('13', 'Juzgado Tercero de Oralidad Familiar (Turno Matutino)', 'Mérida', ''),
('14', 'Juzgado Séptimo de Oralidad Familiar', 'Mérida', ''),
('15', 'Juzgado Tercero de Oralidad Familiar (Turno Vespertino)', 'Mérida', ''),
('16', 'Centro de Convivencia Familiar (CECOFAY)', 'Mérida', ''),
('17', 'Motul', 'Motul', 'Juzgado Tercero Mixto de lo Civil y Familiar del Primer Departamento Judicial del Estado, ubicado en la calle 29 número 379 por 46 y 48, Motul, Yucatán'),
('18', 'Izamal', 'Izamal', 'Juzgado Quinto Mixto de lo Civil y Familiar del Primer Departamento Judicial del Estado, calle 37 número 295 entre 22 y 24 de la Colonia San Marcos de esta ciudad de Izamal, Yucatán'),
('19', 'Tizimin', 'Tizimín', 'Juzgado Segundo Mixto de lo Civil y Familiar del Tercer Departamento Judicial del Estado, ubicado en la calle 41 número 354 por 47 y 49, de esta ciudad de Tizimín, Yucatán');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_oficinas`
--
ALTER TABLE `cat_oficinas`
  ADD PRIMARY KEY (`num_oficina`);
COMMIT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_status_anios`
--

CREATE TABLE `cat_status_anios` (
  `anio` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_status_anios`
--

INSERT INTO `cat_status_anios` (`anio`, `status`) VALUES
('2016', 'desactivado'),
('2017', 'desactivado'),
('2018', 'desactivado'),
('2019', 'activado'),
('2020', 'activado');
COMMIT;
