BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4717Address`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4717Address`
(
	`Id`       INT           NOT NULL,
	`Address1` VARCHAR(4000)     NULL,
	`City`     VARCHAR(4000)     NULL,
	`State`    VARCHAR(4000)     NULL,
	`Zip`      VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Issue4717Address` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4717Warehouse`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4717Warehouse`
(
	`Id`        INT           NOT NULL,
	`Name`      VARCHAR(4000)     NULL,
	`AddressId` INT           NOT NULL,

	CONSTRAINT `PK_Issue4717Warehouse` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4717UnitOfMeasure`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4717UnitOfMeasure`
(
	`Id`           INT           NOT NULL,
	`Name`         VARCHAR(4000)     NULL,
	`Abbreviation` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Issue4717UnitOfMeasure` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4717Product`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4717Product`
(
	`Id`              INT           NOT NULL,
	`Description`     VARCHAR(4000)     NULL,
	`Sku`             VARCHAR(4000)     NULL,
	`UnitOfMeasureId` INT           NOT NULL,

	CONSTRAINT `PK_Issue4717Product` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4717ProductIncludedProductMapping`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4717ProductIncludedProductMapping`
(
	`ProductId`         INT             NOT NULL,
	`IncludedProductId` INT             NOT NULL,
	`Quantity`          DECIMAL(29, 10) NOT NULL,

	CONSTRAINT `PK_Issue4717ProductIncludedProductMapping` PRIMARY KEY CLUSTERED (`ProductId`, `IncludedProductId`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4717WarehouseProductMapping`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4717WarehouseProductMapping`
(
	`WarehouseId` INT            NOT NULL,
	`ProductId`   INT            NOT NULL,
	`StockOnHand` DECIMAL(10, 0) NOT NULL,

	CONSTRAINT `PK_Issue4717WarehouseProductMapping` PRIMARY KEY CLUSTERED (`WarehouseId`, `ProductId`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Issue4717Address`
(
	`Id`,
	`Address1`,
	`City`,
	`State`,
	`Zip`
)
VALUES
(
	1,
	'123 Test St',
	'Test City',
	'TS',
	'12345'
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Issue4717Warehouse`
(
	`Id`,
	`Name`,
	`AddressId`
)
VALUES
(
	1,
	'Test Warehouse',
	1
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Issue4717UnitOfMeasure`
(
	`Id`,
	`Name`,
	`Abbreviation`
)
VALUES
(
	1,
	'Test Warehouse',
	'ea'
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @productId Int32
SET     @productId = 1

INSERT INTO `Issue4717Product`
(
	`Id`,
	`Sku`,
	`Description`,
	`UnitOfMeasureId`
)
VALUES
(
	@productId,
	'123-SKU',
	'Test 123 Sku',
	1
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @includedProductId Int32
SET     @includedProductId = 2

INSERT INTO `Issue4717Product`
(
	`Id`,
	`Sku`,
	`Description`,
	`UnitOfMeasureId`
)
VALUES
(
	@includedProductId,
	'ABC-SKU',
	'Test ABC Sku',
	1
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @productId Int32
SET     @productId = 1
DECLARE @includedProductId Int32
SET     @includedProductId = 2

INSERT INTO `Issue4717ProductIncludedProductMapping`
(
	`ProductId`,
	`IncludedProductId`,
	`Quantity`
)
VALUES
(
	@productId,
	@includedProductId,
	10
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @productId Int32
SET     @productId = 1

INSERT INTO `Issue4717WarehouseProductMapping`
(
	`WarehouseId`,
	`ProductId`,
	`StockOnHand`
)
VALUES
(
	1,
	@productId,
	10
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @productId Int32
SET     @productId = 1

WITH `CTE_1` (`ProductId`, `WarehouseId`)
AS
(
	SELECT
		@productId,
		`w`.`Id`
	FROM
		`Issue4717Warehouse` `w`
)
SELECT
	`source`.`ProductId`,
	(
		SELECT
			`wp`.`StockOnHand`
		FROM
			`Issue4717WarehouseProductMapping` `wp`
		WHERE
			`wp`.`WarehouseId` = `source`.`WarehouseId`
		LIMIT 1
	),
	(
		SELECT
			SUM(`wp_1`.`StockOnHand`)
		FROM
			`Issue4717WarehouseProductMapping` `wp_1`
		WHERE
			`wp_1`.`WarehouseId` = `source`.`WarehouseId`
	)
FROM
	`CTE_1` `source`
		INNER JOIN `Issue4717ProductIncludedProductMapping` `includedProductMapping` ON `source`.`ProductId` = `includedProductMapping`.`ProductId`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4717WarehouseProductMapping`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4717ProductIncludedProductMapping`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4717Product`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4717UnitOfMeasure`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4717Warehouse`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4717Address`

