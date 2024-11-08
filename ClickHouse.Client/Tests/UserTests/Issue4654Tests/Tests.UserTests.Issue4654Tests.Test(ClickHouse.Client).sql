BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4654Customer

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4654Customer
(
	Id   Int32,
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4654Order

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4654Order
(
	Id          Int32,
	ProductName Nullable(String),
	Quantity    Int32,
	CustomerId  Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4654Product

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4654Product
(
	Id    Int32,
	Name  Nullable(String),
	Price Decimal128(10)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toString(c_1.Id) as Id,
	c_1.Name
FROM
	Issue4654Customer c_1
UNION DISTINCT
SELECT
	toString(o.Id) as Id,
	o.ProductName as Name
FROM
	Issue4654Order o
UNION DISTINCT
SELECT
	toString(p.Id) as Id,
	p.Name as Name
FROM
	Issue4654Product p

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4654Product

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4654Order

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4654Customer

