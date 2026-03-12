-- ClickHouse.Driver ClickHouse

DROP TABLE TestEnumTable

-- ClickHouse.Driver ClickHouse

CREATE TABLE TestEnumTable
(
	Field1  Int32,
	Field11 Nullable(Int32),
	Field2  Nullable(String),
	Field21 String,
	Field3  Int16
)
ENGINE = Memory()

-- ClickHouse.Driver ClickHouse

INSERT INTO TestEnumTable
(
	Field1,
	Field11,
	Field2,
	Field21,
	Field3
)
VALUES
(
	1,
	1,
	'A',
	'A',
	toInt16(0)
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Field1,
	t1.Field11,
	t1.Field2,
	t1.Field21,
	t1.Field3
FROM
	TestEnumTable t1

-- ClickHouse.Driver ClickHouse

DROP TABLE TestEnumTable

