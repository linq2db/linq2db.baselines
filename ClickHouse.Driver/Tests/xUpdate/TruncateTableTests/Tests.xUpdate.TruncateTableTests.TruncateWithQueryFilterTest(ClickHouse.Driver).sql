-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TestTrun

-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TestTrunDetail

-- ClickHouse.Driver ClickHouse

CREATE TABLE TestTrunDetail
(
	ID         Int32,
	TestTrunID Int32,
	IsActive   Bool,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Driver ClickHouse

CREATE TABLE TestTrun
(
	ID     Int32,
	Field1 Decimal128(10),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Driver ClickHouse

TRUNCATE TABLE TestTrun

-- ClickHouse.Driver ClickHouse

DROP TABLE TestTrun

-- ClickHouse.Driver ClickHouse

DROP TABLE TestTrunDetail

