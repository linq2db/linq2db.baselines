BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TestTable

BeforeExecute
-- ClickHouse.Driver ClickHouse

CREATE TEMPORARY TABLE TestTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t2.Id,
	t2.Value,
	t3.Id,
	t3.Value
FROM
	TestTable t1
		CROSS JOIN TestTable t2
		INNER JOIN TestTable t3 ON t2.Id = t3.Id
WHERE
	t1.Id = t2.Id

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TestTable

