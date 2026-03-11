-- ClickHouse.Driver ClickHouse

DROP TABLE TestTable

-- ClickHouse.Driver ClickHouse

CREATE TABLE TestTable
(
	ID        Int32,
	Field1    Nullable(String),
	Field2    Nullable(String),
	CreatedOn Nullable(DateTime64(7))
)
ENGINE = Memory()

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID,
	t1.Field1,
	t1.Field2,
	t1.CreatedOn
FROM
	TestTable t1

-- ClickHouse.Driver ClickHouse

DROP TABLE TestTable

