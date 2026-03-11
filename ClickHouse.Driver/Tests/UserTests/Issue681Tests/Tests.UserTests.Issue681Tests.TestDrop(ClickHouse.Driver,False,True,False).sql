-- ClickHouse.Driver ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS Issue681Table2

-- ClickHouse.Driver ClickHouse

CREATE TABLE Issue681Table2
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Driver ClickHouse

DROP TABLE testdb2.Issue681Table2

