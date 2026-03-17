-- ClickHouse.MySql ClickHouse

DROP TABLE TestTable

-- ClickHouse.MySql ClickHouse

CREATE TABLE TestTable
(
	ID        Int32,
	Field1    Nullable(String),
	Field2    Nullable(String),
	CreatedOn Nullable(DateTime64(7))
)
ENGINE = Memory()

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.Field1,
	t1.Field2,
	t1.CreatedOn
FROM
	TestTable t1

-- ClickHouse.MySql ClickHouse

DROP TABLE TestTable

