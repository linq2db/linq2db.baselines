BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TEMPORARY TABLE TestTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t2.Id,
	t2.Value,
	t3.Id,
	t3.Value
FROM
	TestTable t1
		INNER JOIN TestTable t2 ON t1.Id = t2.Id
		INNER JOIN TestTable t3 ON t2.Id = t3.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestTable

