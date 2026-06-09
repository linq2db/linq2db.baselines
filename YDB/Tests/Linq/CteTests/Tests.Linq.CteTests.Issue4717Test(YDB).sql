-- YDB Ydb

INSERT INTO Issue4717Address
(
	Id,
	Address1,
	City,
	`State`,
	Zip
)
VALUES
(
	1,
	'123 Test St'u,
	'Test City'u,
	'TS'u,
	'12345'u
)

-- YDB Ydb

INSERT INTO Issue4717Warehouse
(
	Id,
	Name,
	AddressId
)
VALUES
(
	1,
	'Test Warehouse'u,
	1
)

-- YDB Ydb

INSERT INTO Issue4717UnitOfMeasure
(
	Id,
	Name,
	Abbreviation
)
VALUES
(
	1,
	'Test Warehouse'u,
	'ea'u
)

-- YDB Ydb
DECLARE $productId Int32
SET     $productId = 1

INSERT INTO Issue4717Product
(
	Id,
	Sku,
	Description,
	UnitOfMeasureId
)
VALUES
(
	$productId,
	'123-SKU'u,
	'Test 123 Sku'u,
	1
)

-- YDB Ydb
DECLARE $includedProductId Int32
SET     $includedProductId = 2

INSERT INTO Issue4717Product
(
	Id,
	Sku,
	Description,
	UnitOfMeasureId
)
VALUES
(
	$includedProductId,
	'ABC-SKU'u,
	'Test ABC Sku'u,
	1
)

-- YDB Ydb
DECLARE $productId Int32
SET     $productId = 1
DECLARE $includedProductId Int32
SET     $includedProductId = 2

INSERT INTO Issue4717ProductIncludedProductMapping
(
	ProductId,
	IncludedProductId,
	Quantity
)
VALUES
(
	$productId,
	$includedProductId,
	Decimal('10', 22, 9)
)

-- YDB Ydb
DECLARE $productId Int32
SET     $productId = 1

INSERT INTO Issue4717WarehouseProductMapping
(
	WarehouseId,
	ProductId,
	StockOnHand
)
VALUES
(
	1,
	$productId,
	Decimal('10', 10, 0)
)

