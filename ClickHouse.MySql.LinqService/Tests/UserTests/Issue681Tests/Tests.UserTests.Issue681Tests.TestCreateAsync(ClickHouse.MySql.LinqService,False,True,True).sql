BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue681Table2

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

CREATE TABLE testdb3.Issue681Table2
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

DROP TABLE IF EXISTS Issue681Table2

