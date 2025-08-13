BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

DROP TABLE TestTable

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

CREATE TABLE TestTable
(
	ID        Int32,
	Field1    Nullable(String),
	Field2    Nullable(String),
	CreatedOn Nullable(DateTime64(7))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.ID,
	t1.Field1,
	t1.Field2,
	t1.CreatedOn
FROM
	TestTable t1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

DROP TABLE TestTable

