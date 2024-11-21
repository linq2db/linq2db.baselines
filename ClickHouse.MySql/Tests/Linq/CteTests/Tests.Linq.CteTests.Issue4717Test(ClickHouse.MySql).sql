BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4717Address

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4717Address
(
	Id       Int32,
	Address1 Nullable(String),
	City     Nullable(String),
	State    Nullable(String),
	Zip      Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4717Warehouse

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4717Warehouse
(
	Id        Int32,
	Name      Nullable(String),
	AddressId Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4717UnitOfMeasure

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4717UnitOfMeasure
(
	Id           Int32,
	Name         Nullable(String),
	Abbreviation Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4717Product

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4717Product
(
	Id              Int32,
	Description     Nullable(String),
	Sku             Nullable(String),
	UnitOfMeasureId Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4717ProductIncludedProductMapping

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4717ProductIncludedProductMapping
(
	ProductId         Int32,
	IncludedProductId Int32,
	Quantity          Decimal128(10),

	PRIMARY KEY (ProductId, IncludedProductId)
)
ENGINE = MergeTree()
ORDER BY (ProductId, IncludedProductId)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4717WarehouseProductMapping

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4717WarehouseProductMapping
(
	WarehouseId Int32,
	ProductId   Int32,
	StockOnHand Decimal128(0),

	PRIMARY KEY (WarehouseId, ProductId)
)
ENGINE = MergeTree()
ORDER BY (WarehouseId, ProductId)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4717Address
(
	Id,
	Address1,
	City,
	State,
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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4717Product
(
	Id,
	Sku,
	Description,
	UnitOfMeasureId
)
VALUES
(
	1,
	'123-SKU',
	'Test 123 Sku',
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4717Product
(
	Id,
	Sku,
	Description,
	UnitOfMeasureId
)
VALUES
(
	2,
	'ABC-SKU',
	'Test ABC Sku',
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4717ProductIncludedProductMapping
(
	ProductId,
	IncludedProductId,
	Quantity
)
VALUES
(
	1,
	2,
	toDecimal128('10', 10)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4717WarehouseProductMapping
(
	WarehouseId,
	ProductId,
	StockOnHand
)
VALUES
(
	1,
	1,
	toDecimal128('10', 0)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4717WarehouseProductMapping

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4717ProductIncludedProductMapping

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4717Product

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4717UnitOfMeasure

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4717Warehouse

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4717Address

