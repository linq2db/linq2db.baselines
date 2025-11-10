-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TestTable

-- ClickHouse.Driver ClickHouse

CREATE TEMPORARY TABLE TestTable
(
	Id    Int32,
	Value Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.Id,
	t1.Value,
	t1.Id,
	t1.Value
FROM
	TestTable t1

-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TestTable

