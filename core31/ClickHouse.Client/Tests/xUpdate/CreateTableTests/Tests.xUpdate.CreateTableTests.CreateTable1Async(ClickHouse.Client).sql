BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

DROP TABLE IF EXISTS TestTable

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

CREATE TABLE TestTable
(
	Field1    Nullable(String),
	ID        Int32,
	Field2    Nullable(String),
	CreatedOn Nullable(DateTime64(7)),

	 PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	t1.Field1,
	t1.ID,
	t1.Field2,
	t1.CreatedOn
FROM
	TestTable t1

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

DROP TABLE TestTable

