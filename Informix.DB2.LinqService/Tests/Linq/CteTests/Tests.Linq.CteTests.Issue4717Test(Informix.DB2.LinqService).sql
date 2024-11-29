BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4717Address

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4717Address
(
	Id       Int           NOT NULL,
	Address1 NVarChar(255)     NULL,
	City     NVarChar(255)     NULL,
	"State"  NVarChar(255)     NULL,
	Zip      NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4717Warehouse

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4717Warehouse
(
	Id        Int           NOT NULL,
	Name      NVarChar(255)     NULL,
	AddressId Int           NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4717UnitOfMeasure

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4717UnitOfMeasure
(
	Id           Int           NOT NULL,
	Name         NVarChar(255)     NULL,
	Abbreviation NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4717Product

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4717Product
(
	Id              Int           NOT NULL,
	Description     NVarChar(255)     NULL,
	Sku             NVarChar(255)     NULL,
	UnitOfMeasureId Int           NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4717ProductIncludedProductMapping

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4717ProductIncludedProductMapping
(
	ProductId         Int     NOT NULL,
	IncludedProductId Int     NOT NULL,
	Quantity          Decimal NOT NULL,

	PRIMARY KEY (ProductId, IncludedProductId)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4717WarehouseProductMapping

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4717WarehouseProductMapping
(
	WarehouseId Int            NOT NULL,
	ProductId   Int            NOT NULL,
	StockOnHand Decimal(10, 0) NOT NULL,

	PRIMARY KEY (WarehouseId, ProductId)
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Issue4717Address
(
	Id,
	Address1,
	City,
	"State",
	Zip
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
-- Informix.DB2 Informix

INSERT INTO Issue4717Warehouse
(
	Id,
	Name,
	AddressId
)
VALUES
(
	1,
	'Test Warehouse',
	1
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Issue4717UnitOfMeasure
(
	Id,
	Name,
	Abbreviation
)
VALUES
(
	1,
	'Test Warehouse',
	'ea'
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @productId Integer(4) -- Int32
SET     @productId = 1

INSERT INTO Issue4717Product
(
	Id,
	Sku,
	Description,
	UnitOfMeasureId
)
VALUES
(
	@productId::Int,
	'123-SKU',
	'Test 123 Sku',
	1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @includedProductId Integer(4) -- Int32
SET     @includedProductId = 2

INSERT INTO Issue4717Product
(
	Id,
	Sku,
	Description,
	UnitOfMeasureId
)
VALUES
(
	@includedProductId::Int,
	'ABC-SKU',
	'Test ABC Sku',
	1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @productId Integer(4) -- Int32
SET     @productId = 1
DECLARE @includedProductId Integer(4) -- Int32
SET     @includedProductId = 2

INSERT INTO Issue4717ProductIncludedProductMapping
(
	ProductId,
	IncludedProductId,
	Quantity
)
VALUES
(
	@productId::Int,
	@includedProductId::Int,
	10
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @productId Integer(4) -- Int32
SET     @productId = 1

INSERT INTO Issue4717WarehouseProductMapping
(
	WarehouseId,
	ProductId,
	StockOnHand
)
VALUES
(
	1,
	@productId::Int,
	10
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @productId Integer(4) -- Int32
SET     @productId = 1

WITH CTE_1 (ProductId, WarehouseId)
AS
(
	SELECT
		@productId::Int,
		w.Id
	FROM
		Issue4717Warehouse w
)
SELECT
	source.ProductId,
	t1.StockOnHand,
	(
		SELECT
			SUM(wp_1.StockOnHand)
		FROM
			Issue4717WarehouseProductMapping wp_1
		WHERE
			wp_1.WarehouseId = source.WarehouseId
	)
FROM
	CTE_1 source
		INNER JOIN Issue4717ProductIncludedProductMapping includedProductMapping ON source.ProductId = includedProductMapping.ProductId
		LEFT JOIN (
			SELECT
				wp.StockOnHand,
				ROW_NUMBER() OVER (PARTITION BY wp.WarehouseId ORDER BY wp.WarehouseId) as rn,
				wp.WarehouseId
			FROM
				Issue4717WarehouseProductMapping wp
		) t1 ON t1.WarehouseId = source.WarehouseId AND t1.rn <= 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4717WarehouseProductMapping

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4717ProductIncludedProductMapping

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4717Product

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4717UnitOfMeasure

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4717Warehouse

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4717Address

