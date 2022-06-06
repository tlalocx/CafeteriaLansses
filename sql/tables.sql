CREATE TABLE IF NOT EXISTS `productos` (
    `id_producto` int(11) NOT NULL AUTO_INCREMENT,
    `nombre_producto` varchar(100) NOT NULL,
    `categoria_producto` varchar(100) NOT NULL,
    `descripcion_producto` varchar(100) NOT NULL,
    `imagen_producto` varchar(255) NOT NULL,
    PRIMARY KEY (`id_producto`)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `ordenes` (
    `id_orden` int(11) NOT NULL AUTO_INCREMENT,
    `total_orden` decimal(6, 2) NOT NULL,
    `estatus_orden` varchar(100) NOT NULL DEFAULT 'en_espera',
    `id_usuario` int(11) NOT NULL,
    `telefono_usuario` int(11) NOT NULL,
    `ciudad_usuario` varchar(255) NOT NULL,
    `domicilio_usuario` varchar(255) NOT NULL,
    `fecha_orden` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(`id_orden`)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `ordenes_items` (
    `id_item` int(11) NOT NULL AUTO_INCREMENT,
    `id_orden` int(11) NOT NULL,
    `id_producto`  varchar(255) NOT NULL,
    `nombre_producto` varchar(255) NOT NULL,
    `imagen_producto` varchar(255) NOT NULL,
    `id_usuario` int(11) NOT NULL,
    `fecha_orden` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(`id_item`)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `usuarios` (
    `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
    `nombre_usuario` varchar(100) NOT NULL,
    `email_usuario` varchar(100) NOT NULL,
    `contra_usuario` varchar(100) NOT NULL,
    PRIMARY KEY(`id_usuario`),
    UNIQUE KEY `UX_Constraint` (`email_usuario`)
)ENGINE=INNODB;