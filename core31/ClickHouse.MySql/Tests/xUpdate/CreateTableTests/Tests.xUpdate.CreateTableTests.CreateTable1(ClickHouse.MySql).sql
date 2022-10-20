BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Field1,
	t1.ID,
	t1.Field2,
	t1.CreatedOn
FROM
	TestTable t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE TestTable

