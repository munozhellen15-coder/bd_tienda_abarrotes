-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2026 a las 17:16:34
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_tienda_abarrotes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_inventario`
--

CREATE TABLE `tb_inventario` (
  `id_inventario` int(10) NOT NULL,
  `fk_id_producto` int(10) DEFAULT NULL,
  `fk_id_tienda` int(10) DEFAULT NULL,
  `cantidad` int(10) DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_inventario`
--

INSERT INTO `tb_inventario` (`id_inventario`, `fk_id_producto`, `fk_id_tienda`, `cantidad`, `fecha_actualizacion`, `total`) VALUES
(501, 301, 401, 70, '2026-01-06', 294000.00),
(502, 302, 402, 25, '2026-01-06', 170000.00),
(503, 303, 403, 45, '2026-01-06', 540000.00),
(504, 304, 404, 90, '2026-01-06', 315000.00),
(505, 305, 405, 120, '2026-01-06', 264000.00),
(506, 306, 406, 60, '2026-01-06', 570000.00),
(507, 307, 407, 50, '2026-01-06', 450000.00),
(508, 308, 408, 75, '2026-01-06', 360000.00),
(509, 309, 409, 40, '2026-01-06', 312000.00),
(510, 310, 410, 150, '2026-01-06', 270000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_producto`
--

CREATE TABLE `tb_producto` (
  `id_producto` int(10) NOT NULL,
  `codigo_producto` int(10) DEFAULT NULL,
  `estado_producto` tinyint(1) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `nombre_producto` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_producto`
--

INSERT INTO `tb_producto` (`id_producto`, `codigo_producto`, `estado_producto`, `precio`, `nombre_producto`, `marca`, `fecha_vencimiento`, `categoria`) VALUES
(301, 101, 1, 4200.00, 'Harina De Trigo', 'Haz De Oros', '2026-09-10', 'Granos'),
(302, 102, 1, 6800.00, 'Queso doble crema', 'La Pradera', '2026-02-20', 'Lacteos'),
(303, 103, 1, 12000.00, 'Cafe aguila roja', 'Sello Rojo', '2026-12-15', 'Bebidas'),
(304, 104, 1, 3500.00, 'Chocolatina', 'Jet', '2026-07-30', 'Dulces'),
(305, 105, 1, 2200.00, 'Tomate', 'Frescas', '2026-01-15', 'Verduras'),
(306, 106, 1, 9500.00, 'Detergente En Polvo', 'Ariel', '2027-03-10', 'Aseo'),
(307, 107, 1, 9000.00, 'Huevos', 'El Corral', '2026-01-25', 'Granja'),
(308, 108, 1, 4800.00, 'Galletas De Leche', 'El Trigal', '2026-05-20', 'Panaderia'),
(309, 109, 1, 7800.00, 'Atun', 'Van Camps', '2027-01-10', 'Enlatados'),
(310, 110, 1, 1800.00, 'Banano', 'Del Valle', '2026-01-12', 'Frutas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_proveedor`
--

CREATE TABLE `tb_proveedor` (
  `id_proveedor` int(10) NOT NULL,
  `codigo_proveedor` int(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `cedula` int(10) DEFAULT NULL,
  `telefono` bigint(10) DEFAULT NULL,
  `nombre_empresa` varchar(50) DEFAULT NULL,
  `producto_suministrado` varchar(50) DEFAULT NULL,
  `tipo_producto` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_proveedor`
--

INSERT INTO `tb_proveedor` (`id_proveedor`, `codigo_proveedor`, `nombre`, `apellido`, `cedula`, `telefono`, `nombre_empresa`, `producto_suministrado`, `tipo_producto`, `direccion`, `ciudad`, `correo`, `fecha_registro`) VALUES
(201, 101, 'Esteban', 'Quintero', 1030405101, 3011111111, 'Distribuidora El Mana', 'Harina', 'Granos', 'Kr 13', 'Soacha', 'esteban@mana.com', '2026-01-06'),
(202, 102, 'Valeria', 'Castillo', 1030405102, 3012222222, 'Lacteos La Pradera', 'Queso', 'Lacteos', 'Cl 18', 'Soacha', 'valeria@pradera.com', '2026-01-06'),
(203, 103, 'Mateo', 'Herrera', 1030405103, 3013333333, 'Café ', 'Cafe', 'Bebidas', 'Kr 22', 'Soacha', 'mateo@huila.com', '2026-01-06'),
(204, 104, 'Isabella', 'Reyes', 1030405104, 3014444444, 'Dulceria El Par', 'Chocolate', 'Dulces', 'Cl 28', 'Soacha', 'isabella@paraiso.com', '2026-01-06'),
(205, 105, 'Sebastian', 'Morales', 1030405105, 3015555555, 'Verduras frescas', 'Tomate', 'Verduras', 'Kr 32 ', 'Soacha', 'sebastian@frescas.com', '2026-01-06'),
(206, 106, 'Gabriela', 'Ortiz', 1030405106, 3016666666, 'Ajax', 'Detergente', 'Aseo', 'Cl 38 ', 'Soacha', 'gabriela@brillante.com', '2026-01-06'),
(207, 107, 'Nicolas', 'Jimenez', 1030405107, 3017777777, 'Huevos', 'Huevos', 'Granja', 'Kr 42', 'Soacha', 'nicolas@corral.com', '2026-01-06'),
(208, 108, 'Lucia', 'Fernandez', 1030405108, 3018888888, 'Pan ', 'Galletas', 'Panaderia', 'Cl 48', 'Soacha', 'lucia@trigal.com', '2026-01-06'),
(209, 109, 'Alejandro', 'Vargas', 1030405109, 3019999999, 'Enlatados', 'Atun', 'Enlatados', 'Kr 52', 'Soacha', 'alejandro@lata.com', '2026-01-06'),
(210, 110, 'Mariana', 'Salazar', 1030405110, 3020000000, 'Fruta', 'Banano', 'Frutas', 'Cl 58', 'Soacha', 'mariana@valle.com', '2026-01-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tienda_abarrotes`
--

CREATE TABLE `tb_tienda_abarrotes` (
  `id_tienda` int(10) NOT NULL,
  `nombre_tienda` varchar(50) DEFAULT NULL,
  `nombre_dueno` varchar(50) DEFAULT NULL,
  `cedula` int(10) DEFAULT NULL,
  `telefono` bigint(10) DEFAULT NULL,
  `nombre_empleados` varchar(50) DEFAULT NULL,
  `no_empleados` int(10) DEFAULT NULL,
  `turnos` date DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `cedula_empleados` int(10) DEFAULT NULL,
  `fk_id_proveedor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_tienda_abarrotes`
--

INSERT INTO `tb_tienda_abarrotes` (`id_tienda`, `nombre_tienda`, `nombre_dueno`, `cedula`, `telefono`, `nombre_empleados`, `no_empleados`, `turnos`, `direccion`, `correo`, `cedula_empleados`, `fk_id_proveedor`) VALUES
(401, 'Tienda El Mana', 'Esteban Quintero', 1030405111, 3011111121, 'Valeria Castillo', 2, '2026-01-06', 'Kr 14 ', 'mana@gmail.com', 1030405121, 201),
(402, 'Tienda La Pradera', 'Valeria Castillo', 1030405112, 3012222232, 'Mateo Herrera', 2, '2026-01-06', 'Cl 16', 'pradera@gmail.com', 1030405122, 202),
(403, 'Tienda El Huila', 'Mateo Herrera', 1030405113, 3013333343, 'Isabella Reyes', 3, '2026-01-06', 'Kr 18', 'huila@gmail.com', 1030405123, 203),
(404, 'Tienda El Paraiso', 'Isabella Reyes', 1030405114, 3014444454, 'Sebastian Morales', 2, '2026-01-06', 'Cl 20', 'paraiso@gmail.com', 1030405642, 204),
(405, 'Tienda Frescas', 'Sebastian Morales', 1030405115, 3015555565, 'Gabriela Ortiz', 2, '2026-01-06', 'Kr 25', 'frescas@gmail.com', 1030405125, 205),
(406, 'Tienda Brillante', 'Gabriela Ortiz', 1030405116, 3016666676, 'Nicolas Jimenez', 3, '2026-01-06', 'Cl 26', 'brillante@gmail.com', 1030405126, 206),
(407, 'Tienda El Corral', 'Nicolas Jimenez', 1030405117, 3017777787, 'Lucia Fernandez', 2, '2026-01-06', 'Kr 28', 'corral@gmail.com', 1030405127, 207),
(408, 'Tienda El Trigal', 'Lucia Fernandez', 1030405118, 3018888898, 'Alejandro Vargas', 2, '2026-01-06', 'Cl 30', 'trigal@gmail.com', 1030405128, 208),
(409, 'Tienda La Lata', 'Alejandro Vanegas', 1030405119, 3019999909, 'Mariana Salazar', 4, '2026-01-06', 'Kr 34', 'lata@gmail.com', 1030405129, 209),
(410, 'Tienda Del Valle', 'valentina salazar', 1030405120, 3020000010, 'Esteban Quintero', 2, '2026-01-06', 'Cl 36', 'valle@gmail.com', 1030405130, 210);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_inventario`
--
ALTER TABLE `tb_inventario`
  ADD PRIMARY KEY (`id_inventario`),
  ADD KEY `fk_id_producto` (`fk_id_producto`),
  ADD KEY `fk_id_tienda` (`fk_id_tienda`);

--
-- Indices de la tabla `tb_producto`
--
ALTER TABLE `tb_producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `tb_proveedor`
--
ALTER TABLE `tb_proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `tb_tienda_abarrotes`
--
ALTER TABLE `tb_tienda_abarrotes`
  ADD PRIMARY KEY (`id_tienda`),
  ADD KEY `fk_id_proveedor` (`fk_id_proveedor`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_inventario`
--
ALTER TABLE `tb_inventario`
  ADD CONSTRAINT `tb_inventario_ibfk_1` FOREIGN KEY (`fk_id_producto`) REFERENCES `tb_producto` (`id_producto`),
  ADD CONSTRAINT `tb_inventario_ibfk_2` FOREIGN KEY (`fk_id_tienda`) REFERENCES `tb_tienda_abarrotes` (`id_tienda`);

--
-- Filtros para la tabla `tb_tienda_abarrotes`
--
ALTER TABLE `tb_tienda_abarrotes`
  ADD CONSTRAINT `tb_tienda_abarrotes_ibfk_1` FOREIGN KEY (`fk_id_proveedor`) REFERENCES `tb_proveedor` (`id_proveedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
