-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestTable

-- ClickHouse.MySql ClickHouse

CREATE TEMPORARY TABLE TestTable
(
	Id    Int32,
	Value Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.Id,
	t1.Value,
	t1.Id,
	t1.Value
FROM
	TestTable t1

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestTable

