-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Sedada
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Sedada
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Sedada` DEFAULT CHARACTER SET utf8 ;
USE `Sedada` ;

-- -----------------------------------------------------
-- Table `Sedada`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`roles` (
  `id_Roles` INT NOT NULL AUTO_INCREMENT,
  `nombre_rol` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_Roles`),
  UNIQUE INDEX `nombre_rol_UNIQUE` (`nombre_rol`  )  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`estadosUsuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`estadosUsuarios` (
  `id_estadosUsuarios` INT NOT NULL AUTO_INCREMENT,
  `nombreEstado` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_estadosUsuarios`),
  UNIQUE INDEX `nombre_estado_UNIQUE` (`nombreEstado`  )  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`estadosMesas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`estadosMesas` (
  `idestadosMesas` INT NOT NULL AUTO_INCREMENT,
  `nombreEstado` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idestadosMesas`),
  UNIQUE INDEX `nombre_estado_UNIQUE` (`nombreEstado`  )  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`estadosProductoS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`estadosProductoS` (
  `idestadosProductos` INT NOT NULL AUTO_INCREMENT,
  `nombreEstadoProducto` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idestadosProductos`),
  UNIQUE INDEX `nombre_estado_producto_UNIQUE` (`nombreEstadoProducto`  )  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`estadosPedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`estadosPedidos` (
  `idestadosPedidos` INT NOT NULL AUTO_INCREMENT,
  `nombreEstadoPedido` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idestadosPedidos`),
  UNIQUE INDEX `nombre_estado_pedido_UNIQUE` (`nombreEstadoPedido`  )  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`estadosPagos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`estadosPagos` (
  `idestadosPagos` INT NOT NULL AUTO_INCREMENT,
  `nombreEstadosPago` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idestadosPagos`),
  UNIQUE INDEX `nombre_estados_pago_UNIQUE` (`nombreEstadosPago`  )  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`categorias` (
  `idcategorias` INT NOT NULL AUTO_INCREMENT,
  `nombreCategorias` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcategorias`),
  UNIQUE INDEX `nombre_categorias_UNIQUE` (`nombreCategorias`  )  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`impuestosDian`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`impuestosDian` (
  `id_impuestosDian` INT NOT NULL AUTO_INCREMENT,
  `nombreImpuesto` VARCHAR(45) NOT NULL,
  `porcentaje` DECIMAL(4,2) NOT NULL,
  `fechaInicio` DATE NOT NULL,
  `fechaFin` DATE NOT NULL,
  PRIMARY KEY (`id_impuestosDian`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`tipoDeDocumentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`tipoDeDocumentos` (
  `idtipoDeDocumento` INT NOT NULL,
  `nombreDocumento` VARCHAR(45) NULL,
  PRIMARY KEY (`idtipoDeDocumento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`usuarios` (
  `id_usuarios` INT NOT NULL AUTO_INCREMENT,
  `nombreUsuario` VARCHAR(70) NOT NULL,
  `apellidoUsuario` VARCHAR(70) NOT NULL,
  `direccionUsuario` VARCHAR(100) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `numeroDocumento` VARCHAR(45) NOT NULL,
  `fechaNacimiento` DATE NOT NULL,
  `fechaVencimientoClave` DATE NOT NULL,
  `correo` VARCHAR(100) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `autorizacionDatos` TINYINT NOT NULL,
  `roles_id_Roles` INT NOT NULL,
  `estadosUsuarios_id_estadosUsuarios` INT NOT NULL,
  `tipoDeDocumentos_idtipoDeDocumento` INT NOT NULL,
  PRIMARY KEY (`id_usuarios`),
  INDEX `fk_usuarios_roles1_idx` (`roles_id_Roles`  )  ,
  INDEX `fk_usuarios_estadosUsuarios1_idx` (`estadosUsuarios_id_estadosUsuarios`  )  ,
  INDEX `fk_usuarios_tipoDeDocumentos1_idx` (`tipoDeDocumentos_idtipoDeDocumento`  )  ,
  CONSTRAINT `fk_usuarios_roles1`
    FOREIGN KEY (`roles_id_Roles`)
    REFERENCES `Sedada`.`roles` (`id_Roles`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_estadosUsuarios1`
    FOREIGN KEY (`estadosUsuarios_id_estadosUsuarios`)
    REFERENCES `Sedada`.`estadosUsuarios` (`id_estadosUsuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_tipoDeDocumentos1`
    FOREIGN KEY (`tipoDeDocumentos_idtipoDeDocumento`)
    REFERENCES `Sedada`.`tipoDeDocumentos` (`idtipoDeDocumento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`mesas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`mesas` (
  `idmesas` INT NOT NULL AUTO_INCREMENT,
  `numeroMesa` INT NOT NULL,
  `capacidad` INT NOT NULL,
  `estadosMesas_idestadosMesas` INT NOT NULL,
  PRIMARY KEY (`idmesas`),
  UNIQUE INDEX `numero_mesa_UNIQUE` (`numeroMesa`  )  ,
  INDEX `fk_mesas_estadosMesas1_idx` (`estadosMesas_idestadosMesas`  )  ,
  CONSTRAINT `fk_mesas_estadosMesas1`
    FOREIGN KEY (`estadosMesas_idestadosMesas`)
    REFERENCES `Sedada`.`estadosMesas` (`idestadosMesas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`productos` (
  `idproductos` INT NOT NULL AUTO_INCREMENT,
  `nombreProducto` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `precio` DECIMAL(10,2) NOT NULL,
  `estadosProductoS_idestadosProductos` INT NOT NULL,
  `categorias_idcategorias` INT NOT NULL,
  PRIMARY KEY (`idproductos`),
  INDEX `fk_productos_estadosProductoS1_idx` (`estadosProductoS_idestadosProductos`  )  ,
  INDEX `fk_productos_categorias1_idx` (`categorias_idcategorias`  )  ,
  CONSTRAINT `fk_productos_estadosProductoS1`
    FOREIGN KEY (`estadosProductoS_idestadosProductos`)
    REFERENCES `Sedada`.`estadosProductoS` (`idestadosProductos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_categorias1`
    FOREIGN KEY (`categorias_idcategorias`)
    REFERENCES `Sedada`.`categorias` (`idcategorias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`pedidos` (
  `idpedidos` INT NOT NULL AUTO_INCREMENT,
  `fechaHora` DATETIME NOT NULL,
  `usuarios_id_usuarios` INT NOT NULL,
  `mesas_idmesas` INT NOT NULL,
  `impuestosDian_id_impuestosDian` INT NOT NULL,
  `estadosPedidos_idestadosPedidos` INT NOT NULL,
  PRIMARY KEY (`idpedidos`),
  INDEX `fk_pedidos_usuarios1_idx` (`usuarios_id_usuarios`  )  ,
  INDEX `fk_pedidos_mesas1_idx` (`mesas_idmesas`  )  ,
  INDEX `fk_pedidos_impuestosDian1_idx` (`impuestosDian_id_impuestosDian`  )  ,
  INDEX `fk_pedidos_estadosPedidos1_idx` (`estadosPedidos_idestadosPedidos`  )  ,
  CONSTRAINT `fk_pedidos_usuarios1`
    FOREIGN KEY (`usuarios_id_usuarios`)
    REFERENCES `Sedada`.`usuarios` (`id_usuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedidos_mesas1`
    FOREIGN KEY (`mesas_idmesas`)
    REFERENCES `Sedada`.`mesas` (`idmesas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedidos_impuestosDian1`
    FOREIGN KEY (`impuestosDian_id_impuestosDian`)
    REFERENCES `Sedada`.`impuestosDian` (`id_impuestosDian`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedidos_estadosPedidos1`
    FOREIGN KEY (`estadosPedidos_idestadosPedidos`)
    REFERENCES `Sedada`.`estadosPedidos` (`idestadosPedidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`detallePedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`detallePedidos` (
  `iddetallePedidos` INT NOT NULL AUTO_INCREMENT,
  `cantidad` INT NOT NULL,
  `precioUnitario` DECIMAL(10,2) NOT NULL,
  `notasEspeciales` VARCHAR(255) NOT NULL,
  `productos_idproductos` INT NOT NULL,
  PRIMARY KEY (`iddetallePedidos`),
  INDEX `fk_detallePedidos_productos1_idx` (`productos_idproductos`  )  ,
  CONSTRAINT `fk_detallePedidos_productos1`
    FOREIGN KEY (`productos_idproductos`)
    REFERENCES `Sedada`.`productos` (`idproductos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`facturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`facturas` (
  `id_facturas` INT NOT NULL AUTO_INCREMENT,
  `numeroFactura` VARCHAR(30) NOT NULL,
  `fechaFactura` DATETIME NOT NULL,
  `subtotal` DECIMAL(10,2) NOT NULL,
  `impuesto` DECIMAL(10,2) NOT NULL,
  `total` DECIMAL(10,2) NOT NULL,
  `metodoPago` VARCHAR(45) NOT NULL,
  `estadosPagos_idestadosPagos` INT NOT NULL,
  `pedidos_idpedidos` INT NOT NULL,
  PRIMARY KEY (`id_facturas`, `estadosPagos_idestadosPagos`),
  UNIQUE INDEX `numero_factura_UNIQUE` (`numeroFactura`  )  ,
  INDEX `fk_facturas_estadosPagos1_idx` (`estadosPagos_idestadosPagos`  )  ,
  INDEX `fk_facturas_pedidos1_idx` (`pedidos_idpedidos`  )  ,
  CONSTRAINT `fk_facturas_estadosPagos1`
    FOREIGN KEY (`estadosPagos_idestadosPagos`)
    REFERENCES `Sedada`.`estadosPagos` (`idestadosPagos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_facturas_pedidos1`
    FOREIGN KEY (`pedidos_idpedidos`)
    REFERENCES `Sedada`.`pedidos` (`idpedidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`detalleFacturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`detalleFacturas` (
  `iddetalleFactura` INT NOT NULL,
  `cantidad` INT NOT NULL,
  `precioUnitarioFacturado` DECIMAL(10,2) NOT NULL,
  `valorIvaLinea` DECIMAL(10,2) NOT NULL,
  `productos_idproductos` INT NOT NULL,
  `facturas_id_facturas` INT NOT NULL,
  PRIMARY KEY (`iddetalleFactura`),
  INDEX `fk_detalleFacturas_productos1_idx` (`productos_idproductos`  )  ,
  INDEX `fk_detalleFacturas_facturas1_idx` (`facturas_id_facturas`  )  ,
  CONSTRAINT `fk_detalleFacturas_productos1`
    FOREIGN KEY (`productos_idproductos`)
    REFERENCES `Sedada`.`productos` (`idproductos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalleFacturas_facturas1`
    FOREIGN KEY (`facturas_id_facturas`)
    REFERENCES `Sedada`.`facturas` (`id_facturas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`turnos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`turnos` (
  `idturnos` INT NOT NULL,
  `nombreTurno` VARCHAR(45) NOT NULL,
  `horaEntrada` TIME NOT NULL,
  `horaSalida` TIME NOT NULL,
  `usuarios_id_usuarios` INT NOT NULL,
  PRIMARY KEY (`idturnos`),
  INDEX `fk_turnos_usuarios1_idx` (`usuarios_id_usuarios`  )  ,
  CONSTRAINT `fk_turnos_usuarios1`
    FOREIGN KEY (`usuarios_id_usuarios`)
    REFERENCES `Sedada`.`usuarios` (`id_usuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`permisos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`permisos` (
  `idpermisos` INT NOT NULL,
  `nombrePermiso` VARCHAR(45) NOT NULL,
  `descripcionPermiso` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idpermisos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sedada`.`rolPermisos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sedada`.`rolPermisos` (
  `roles_id_Roles` INT NOT NULL,
  `permisos_idpermisos` INT NOT NULL,
  PRIMARY KEY (`roles_id_Roles`, `permisos_idpermisos`),
  INDEX `fk_rolPermisos_permisos1_idx` (`permisos_idpermisos`  )  ,
  CONSTRAINT `fk_rolPermisos_roles1`
    FOREIGN KEY (`roles_id_Roles`)
    REFERENCES `Sedada`.`roles` (`id_Roles`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rolPermisos_permisos1`
    FOREIGN KEY (`permisos_idpermisos`)
    REFERENCES `Sedada`.`permisos` (`idpermisos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
