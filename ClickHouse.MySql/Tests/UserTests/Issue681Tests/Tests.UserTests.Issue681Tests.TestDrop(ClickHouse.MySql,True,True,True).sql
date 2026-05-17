-- ClickHouse.MySql ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue681Table2

-- ClickHouse.MySql ClickHouse

CREATE TABLE Issue681Table2
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.MySql ClickHouse

DROP TABLE testdb3.Issue681Table2

