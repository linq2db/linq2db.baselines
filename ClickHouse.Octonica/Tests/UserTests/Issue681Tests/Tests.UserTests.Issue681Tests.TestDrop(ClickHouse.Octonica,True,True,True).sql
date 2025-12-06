-- ClickHouse.Octonica ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue681Table2

-- ClickHouse.Octonica ClickHouse

CREATE TABLE Issue681Table2
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Octonica ClickHouse

DROP TABLE testdb1.Issue681Table2

