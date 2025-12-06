-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

