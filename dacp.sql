-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2020 a las 17:02:10
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
-- Base de datos: `dacp`
--

-- --------------------------------------------------------
-- ------------------------------

--
-- Estructura de tabla para la tabla `report_entrega_vendedor`
--

CREATE TABLE `report_entrega_vendedor` (
  `id_vendedor` int(15) NOT NULL,
  `id_producto` int(2) NOT NULL,
  `can_produc` int(11) NOT NULL,
  `costo_produc` double NOT NULL,
  `comision_produc` double NOT NULL,
  `id_report_entrega` int(3) NOT NULL,
  `fecha_entrega` date ,
  `devolucion` int(20) DEFAULT NULL,
  `vendido` int(20) NOT NULL,
  `comisionxproduc` double NOT NULL,
  `valorxproducto` double NOT NULL,
  `comision_total` int(11) NOT NULL,
  `valor_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `report_entrega_vendedor`
--

INSERT INTO `report_entrega_vendedor` (`id_vendedor`, `id_producto`, `can_produc`, `costo_produc`, `comision_produc`, `id_report_entrega`, `fecha_entrega`, `devolucion`, `vendido`, `comisionxproduc`, `valorxproducto`, `comision_total`, `valor_total`) VALUES
(72284137, 1, 1, 3, 1, 43, '2020-11-23', 0, 1, 1, 3, 1, 3),
(72284137, 2, 0, 0, 0, 44, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 3, 0, 0, 0, 45, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 8, 0, 0, 0, 46, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 9, 0, 0, 0, 47, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 13, 0, 0, 0, 48, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 15, 0, 0, 0, 49, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 16, 0, 0, 0, 50, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 17, 0, 0, 0, 51, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 19, 0, 0, 0, 52, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 20, 0, 0, 0, 53, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 21, 0, 0, 0, 54, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 22, 0, 0, 0, 55, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 24, 0, 0, 0, 56, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 34, 0, 0, 0, 57, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 47, 0, 0, 0, 58, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 48, 0, 0, 0, 59, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 89, 0, 0, 0, 60, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 95, 0, 0, 0, 61, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 96, 0, 0, 0, 62, '2020-11-23', 0, 0, 0, 0, 1, 3),
(72284137, 97, 0, 0, 0, 63, '2020-11-23', 0, 0, 0, 0, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roll_user`
--

CREATE TABLE `roll_user` (
  `id_roll` int(2) NOT NULL,
  `roll` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roll_user`
--

INSERT INTO `roll_user` (`id_roll`, `roll`) VALUES
(1, 'admin'),
(2, 'vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `id_vendedor` int(15) NOT NULL,
  `nom_vendedor` varchar(40) NOT NULL,
  `apelli_vendedor` varchar(40) NOT NULL,
  `tel_vendedor` int(12) NOT NULL,
  `dire_vendedor` varchar(100) NOT NULL,
  `correo_vendedor` varchar(100) NOT NULL,
  `causa_retiro` varchar(1000) DEFAULT NULL,
  `user_roll` int(2) NOT NULL,
  `id_estado` int(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`id_vendedor`, `nom_vendedor`, `apelli_vendedor`, `tel_vendedor`, `dire_vendedor`, `correo_vendedor`, `causa_retiro`, `user_roll`, `id_estado`) VALUES
(8917072, 'hector armando', 'moreno caraquito', 60455741, 'mano de piedra', 'armandogabriel03@gmail.com', NULL, 2, 1),
(27281794, 'carlos javier', 'rojas rodriguez', 69688680, 'villa grecia', '90carlosrojas90@gmail.com', NULL, 2, 1),
(72284137, 'juan carlos', 'cera bolaños ', 62232577, 'santa Ana', 'jmmt1408@gmail.com', NULL, 2, 1),
(98989898, 'MAURICIO ', 'CHACON', 66087474, 'CHORRILO', 'CHACON@ADMIN.COM', NULL, 1, 1),
(1111111111, 'RUTH ', 'ORDOÑEZ', 62242901, 'san miguelito ', 'ruth@hotmail.com', NULL, 1, 1),
(1143876379, 'jhon steven', 'agudelo murillo', 67071768, 'tumba muerto-condado del rey', 'chinitokonfu@hotmail.com', NULL, 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activo`
--
ALTER TABLE `activo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estado` (`estado`);

--
-- Indices de la tabla `bodega`
--
ALTER TABLE `bodega`
  ADD PRIMARY KEY (`id_bodega`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `factura1`
--
ALTER TABLE `factura1`
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_venta` (`id_venta`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_vendedor` (`id_vendedor`),
  ADD KEY `user_roll` (`user_roll`);

--
-- Indices de la tabla `no_ventas`
--
ALTER TABLE `no_ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_vendedor` (`id_vendedor`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `pasivo`
--
ALTER TABLE `pasivo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estado` (`id_estado`),
  ADD KEY `id_bodega` (`id_bodega`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `report_entrega_vendedor`
--
ALTER TABLE `report_entrega_vendedor`
  ADD PRIMARY KEY (`id_report_entrega`),
  ADD KEY `id_vendedor` (`id_vendedor`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `roll_user`
--
ALTER TABLE `roll_user`
  ADD PRIMARY KEY (`id_roll`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`id_vendedor`),
  ADD KEY `user_roll` (`user_roll`),
  ADD KEY `id_estado` (`id_estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activo`
--
ALTER TABLE `activo`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pasivo`
--
ALTER TABLE `pasivo`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT de la tabla `report_entrega_vendedor`
--
ALTER TABLE `report_entrega_vendedor`
  MODIFY `id_report_entrega` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `activo`
--
ALTER TABLE `activo`
  ADD CONSTRAINT `activo_ibfk_1` FOREIGN KEY (`estado`) REFERENCES `estado` (`id_estado`);

--
-- Filtros para la tabla `bodega`
--
ALTER TABLE `bodega`
  ADD CONSTRAINT `bodega_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `bodega_ibfk_2` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`);

--
-- Filtros para la tabla `factura1`
--
ALTER TABLE `factura1`
  ADD CONSTRAINT `factura1_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `factura1_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `no_ventas` (`id_venta`),
  ADD CONSTRAINT `factura1_ibfk_3` FOREIGN KEY (`id_venta`) REFERENCES `no_ventas` (`id_venta`);

--
-- Filtros para la tabla `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`),
  ADD CONSTRAINT `login_ibfk_2` FOREIGN KEY (`user_roll`) REFERENCES `roll_user` (`id_roll`);

--
-- Filtros para la tabla `no_ventas`
--
ALTER TABLE `no_ventas`
  ADD CONSTRAINT `no_ventas_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`),
  ADD CONSTRAINT `no_ventas_ibfk_2` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`);

--
-- Filtros para la tabla `pasivo`
--
ALTER TABLE `pasivo`
  ADD CONSTRAINT `pasivo_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
  ADD CONSTRAINT `pasivo_ibfk_2` FOREIGN KEY (`id_bodega`) REFERENCES `bodega` (`id_bodega`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`);

--
-- Filtros para la tabla `report_entrega_vendedor`
--
ALTER TABLE `report_entrega_vendedor`
  ADD CONSTRAINT `report_entrega_vendedor_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`),
  ADD CONSTRAINT `report_entrega_vendedor_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD CONSTRAINT `vendedor_ibfk_1` FOREIGN KEY (`user_roll`) REFERENCES `roll_user` (`id_roll`),
  ADD CONSTRAINT `vendedor_ibfk_2` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
