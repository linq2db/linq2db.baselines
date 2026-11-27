-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `StockAddress`
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `StockWarehouse`
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `StockUnitOfMeasure`
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @productId Int32
SET     @productId = 1

INSERT INTO `StockProduct`
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @includedProductId Int32
SET     @includedProductId = 2

INSERT INTO `StockProduct`
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @productId Int32
SET     @productId = 1
DECLARE @includedProductId Int32
SET     @includedProductId = 2

INSERT INTO `StockProductIncludedProduct`
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @productId Int32
SET     @productId = 1

INSERT INTO `StockWarehouseProduct`
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @productId Int32
SET     @productId = 1

WITH `CTE_1` (`ProductId`, `WarehouseId`)
AS
(
	SELECT
		@productId,
		`w`.`Id`
	FROM
		`StockWarehouse` `w`
)
SELECT
	`source`.`ProductId`,
	(
		SELECT
			`wp`.`StockOnHand`
		FROM
			`StockWarehouseProduct` `wp`
		WHERE
			`wp`.`WarehouseId` = `source`.`WarehouseId`
		LIMIT 1
	),
	(
		SELECT
			SUM(`wp_1`.`StockOnHand`)
		FROM
			`StockWarehouseProduct` `wp_1`
		WHERE
			`wp_1`.`WarehouseId` = `source`.`WarehouseId`
	)
FROM
	`CTE_1` `source`
		INNER JOIN `StockProductIncludedProduct` `includedProductMapping` ON `source`.`ProductId` = `includedProductMapping`.`ProductId`

