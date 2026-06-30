-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema sedada
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sedada
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sedada` DEFAULT CHARACTER SET utf8 ;
USE `sedada` ;

-- -----------------------------------------------------
-- Table `sedada`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`roles` (
  `id_roles` INT NOT NULL AUTO_INCREMENT,
  `nombre_rol` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_roles`),
  UNIQUE INDEX `nombre_rol_UNIQUE` (`nombre_rol`  )  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`estados_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`estados_usuario` (
  `id_estados_usuario` INT NOT NULL AUTO_INCREMENT,
  `nombre_estado` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_estados_usuario`),
  UNIQUE INDEX `nombre_estado_UNIQUE` (`nombre_estado`  )  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`EstadosMesa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`EstadosMesa` (
  `id_estados_mesa` INT NOT NULL AUTO_INCREMENT,
  `nombre_estado` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_estados_mesa`),
  UNIQUE INDEX `nombre_estado_UNIQUE` (`nombre_estado`  )  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`estados_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`estados_producto` (
  `id_estados_producto` INT NOT NULL AUTO_INCREMENT,
  `nombre_estado_producto` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_estados_producto`),
  UNIQUE INDEX `nombre_estado_producto_UNIQUE` (`nombre_estado_producto`  )  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`estados_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`estados_pedido` (
  `id_estados_pedido` INT NOT NULL AUTO_INCREMENT,
  `nombre_estado_pedido` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_estados_pedido`),
  UNIQUE INDEX `nombre_estado_pedido_UNIQUE` (`nombre_estado_pedido`  )  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`estados_pago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`estados_pago` (
  `id_estados_pago` INT NOT NULL AUTO_INCREMENT,
  `nombre_estados_pago` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_estados_pago`),
  UNIQUE INDEX `nombre_estados_pago_UNIQUE` (`nombre_estados_pago`  )  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`categorias` (
  `id_categorias` INT NOT NULL AUTO_INCREMENT,
  `nombre_categorias` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_categorias`),
  UNIQUE INDEX `nombre_categorias_UNIQUE` (`nombre_categorias`  )  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`Impuestos_dian`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`Impuestos_dian` (
  `id_impuestos_dian` INT NOT NULL AUTO_INCREMENT,
  `nombre_impuesto` VARCHAR(45) NOT NULL,
  `porcentaje` DECIMAL(4,2) NOT NULL,
  `fecha_inicio` DATE NOT NULL,
  `fecha_fin` DATE NOT NULL,
  PRIMARY KEY (`id_impuestos_dian`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`turnos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`turnos` (
  `id_turnos` INT NOT NULL AUTO_INCREMENT,
  `nombre_turno` VARCHAR(45) NOT NULL,
  `hora_entrada` TIME NOT NULL,
  `hora_salida` TIME NOT NULL,
  PRIMARY KEY (`id_turnos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`tipo_documento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`tipo_documento` (
  `id_tipo_documento` INT NOT NULL AUTO_INCREMENT,
  `nombre_documento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_tipo_documento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`usuarios` (
  `id_usuarios` INT NOT NULL AUTO_INCREMENT,
  `nombre_usuario` VARCHAR(70) NOT NULL,
  `apellido_usuario` VARCHAR(70) NOT NULL,
  `direccion_usuario` VARCHAR(100) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `numero_documento` VARCHAR(45) NOT NULL,
  `fecha_nacimiento` DATE NOT NULL,
  `fecha_vencimientoClave` DATE NOT NULL,
  `correo` VARCHAR(100) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `autorizacion_datos` TINYINT NOT NULL,
  `turnos_id_turnos` INT NOT NULL,
  `tipo_documento_id_tipo_documento` INT NOT NULL,
  `roles_id_roles` INT NOT NULL,
  `estados_usuario_id_estados_usuario` INT NOT NULL,
  PRIMARY KEY (`id_usuarios`),
  INDEX `fk_usuarios_turnos1_idx` (`turnos_id_turnos`  )  ,
  INDEX `fk_usuarios_tipo_documento1_idx` (`tipo_documento_id_tipo_documento`  )  ,
  INDEX `fk_usuarios_roles1_idx` (`roles_id_roles`  )  ,
  INDEX `fk_usuarios_estados_usuario1_idx` (`estados_usuario_id_estados_usuario`  )  ,
  CONSTRAINT `fk_usuarios_turnos1`
    FOREIGN KEY (`turnos_id_turnos`)
    REFERENCES `sedada`.`turnos` (`id_turnos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_tipo_documento1`
    FOREIGN KEY (`tipo_documento_id_tipo_documento`)
    REFERENCES `sedada`.`tipo_documento` (`id_tipo_documento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_roles1`
    FOREIGN KEY (`roles_id_roles`)
    REFERENCES `sedada`.`roles` (`id_roles`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_estados_usuario1`
    FOREIGN KEY (`estados_usuario_id_estados_usuario`)
    REFERENCES `sedada`.`estados_usuario` (`id_estados_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`mesas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`mesas` (
  `id_mesas` INT NOT NULL AUTO_INCREMENT,
  `numero_mesa` INT NOT NULL,
  `capacidad` INT NOT NULL,
  `Estados_mesa_id_estados_mesa` INT NOT NULL,
  PRIMARY KEY (`id_mesas`),
  UNIQUE INDEX `numero_mesa_UNIQUE` (`numero_mesa`  )  ,
  INDEX `fk_Mesas_Estados_mesa1_idx` (`Estados_mesa_id_estados_mesa`  )  ,
  CONSTRAINT `fk_Mesas_Estados_mesa1`
    FOREIGN KEY (`Estados_mesa_id_estados_mesa`)
    REFERENCES `sedada`.`EstadosMesa` (`id_estados_mesa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`productos` (
  `id_productos` INT NOT NULL AUTO_INCREMENT,
  `nombre_producto` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `precio` DECIMAL(10,2) NOT NULL,
  `estados_producto_id_estados_producto` INT NOT NULL,
  `categorias_id_categorias` INT NOT NULL,
  PRIMARY KEY (`id_productos`),
  INDEX `fk_productos_Estados_producto1_idx` (`estados_producto_id_estados_producto`  )  ,
  INDEX `fk_productos_categorias1_idx` (`categorias_id_categorias`  )  ,
  CONSTRAINT `fk_productos_Estados_producto1`
    FOREIGN KEY (`estados_producto_id_estados_producto`)
    REFERENCES `sedada`.`estados_producto` (`id_estados_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_categorias1`
    FOREIGN KEY (`categorias_id_categorias`)
    REFERENCES `sedada`.`categorias` (`id_categorias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`pedidos` (
  `id_pedidos` INT NOT NULL AUTO_INCREMENT,
  `fecha_hora` DATETIME NOT NULL,
  `ImpuestosDian_id_impuestos_dian` INT NOT NULL,
  `usuarios_id_usuarios` INT NOT NULL,
  `mesas_id_mesas` INT NOT NULL,
  `estados_pedido_id_estados_pedido` INT NOT NULL,
  PRIMARY KEY (`id_pedidos`),
  INDEX `fk_pedidos_Impuestos_dian1_idx` (`ImpuestosDian_id_impuestos_dian`  )  ,
  INDEX `fk_pedidos_usuarios1_idx` (`usuarios_id_usuarios`  )  ,
  INDEX `fk_pedidos_mesas1_idx` (`mesas_id_mesas`  )  ,
  INDEX `fk_pedidos_estados_pedido1_idx` (`estados_pedido_id_estados_pedido`  )  ,
  CONSTRAINT `fk_pedidos_Impuestos_dian1`
    FOREIGN KEY (`ImpuestosDian_id_impuestos_dian`)
    REFERENCES `sedada`.`Impuestos_dian` (`id_impuestos_dian`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedidos_usuarios1`
    FOREIGN KEY (`usuarios_id_usuarios`)
    REFERENCES `sedada`.`usuarios` (`id_usuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedidos_mesas1`
    FOREIGN KEY (`mesas_id_mesas`)
    REFERENCES `sedada`.`mesas` (`id_mesas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedidos_estados_pedido1`
    FOREIGN KEY (`estados_pedido_id_estados_pedido`)
    REFERENCES `sedada`.`estados_pedido` (`id_estados_pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`detalle_pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`detalle_pedidos` (
  `id_detalle_pedidos` INT NOT NULL AUTO_INCREMENT,
  `cantidad` INT NOT NULL,
  `precio_unitario` DECIMAL(10,2) NOT NULL,
  `notas_especiales` VARCHAR(255) NOT NULL,
  `pedidos_id_pedidos` INT NOT NULL,
  `productos_id_productos` INT NOT NULL,
  PRIMARY KEY (`id_detalle_pedidos`),
  INDEX `fk_detalle_pedidos_pedidos1_idx` (`pedidos_id_pedidos`  )  ,
  INDEX `fk_detalle_pedidos_productos1_idx` (`productos_id_productos`  )  ,
  CONSTRAINT `fk_detalle_pedidos_pedidos1`
    FOREIGN KEY (`pedidos_id_pedidos`)
    REFERENCES `sedada`.`pedidos` (`id_pedidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_pedidos_productos1`
    FOREIGN KEY (`productos_id_productos`)
    REFERENCES `sedada`.`productos` (`id_productos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`facturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`facturas` (
  `id_facturas` INT NOT NULL AUTO_INCREMENT,
  `numero_factura` VARCHAR(30) NOT NULL,
  `fecha_factura` DATETIME NOT NULL,
  `subtotal` DECIMAL(10,2) NOT NULL,
  `impuesto` DECIMAL(10,2) NOT NULL,
  `total` DECIMAL(10,2) NOT NULL,
  `metodo_pago` VARCHAR(45) NOT NULL,
  `estados_pago_id_estados_pago` INT NOT NULL,
  `pedidos_id_pedidos` INT NOT NULL,
  PRIMARY KEY (`id_facturas`),
  UNIQUE INDEX `numero_factura_UNIQUE` (`numero_factura`  )  ,
  INDEX `fk_Facturas_Estados_pago1_idx` (`estados_pago_id_estados_pago`  )  ,
  INDEX `fk_Facturas_pedidos1_idx` (`pedidos_id_pedidos`  )  ,
  CONSTRAINT `fk_Facturas_Estados_pago1`
    FOREIGN KEY (`estados_pago_id_estados_pago`)
    REFERENCES `sedada`.`estados_pago` (`id_estados_pago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Facturas_pedidos1`
    FOREIGN KEY (`pedidos_id_pedidos`)
    REFERENCES `sedada`.`pedidos` (`id_pedidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`detalle_factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`detalle_factura` (
  `id_detalle_factura` INT NOT NULL AUTO_INCREMENT,
  `cantidad` INT NOT NULL,
  `precio_unitario_facturado` DECIMAL(10,2) NOT NULL,
  `valor_iva_linea` DECIMAL(10,2) NOT NULL,
  `facturas_id_facturas` INT NOT NULL,
  `productos_id_productos` INT NOT NULL,
  PRIMARY KEY (`id_detalle_factura`),
  INDEX `fk_DetalleFactura_Facturas1_idx` (`facturas_id_facturas`  )  ,
  INDEX `fk_detalle_factura_productos1_idx` (`productos_id_productos`  )  ,
  CONSTRAINT `fk_DetalleFactura_Facturas1`
    FOREIGN KEY (`facturas_id_facturas`)
    REFERENCES `sedada`.`facturas` (`id_facturas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_factura_productos1`
    FOREIGN KEY (`productos_id_productos`)
    REFERENCES `sedada`.`productos` (`id_productos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`permisos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`permisos` (
  `id_permisos` INT NOT NULL AUTO_INCREMENT,
  `nombre_permiso` VARCHAR(45) NOT NULL,
  `descripcion_permiso` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_permisos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sedada`.`rol_permisos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sedada`.`rol_permisos` (
  `permisos_id_permisos` INT NOT NULL,
  `roles_id_roles` INT NOT NULL,
  PRIMARY KEY (`permisos_id_permisos`, `roles_id_roles`),
  INDEX `fk_rol_permisos_permisos1_idx` (`permisos_id_permisos`  )  ,
  INDEX `fk_rol_permisos_roles1_idx` (`roles_id_roles`  )  ,
  CONSTRAINT `fk_rol_permisos_permisos1`
    FOREIGN KEY (`permisos_id_permisos`)
    REFERENCES `sedada`.`permisos` (`id_permisos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rol_permisos_roles1`
    FOREIGN KEY (`roles_id_roles`)
    REFERENCES `sedada`.`roles` (`id_roles`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
