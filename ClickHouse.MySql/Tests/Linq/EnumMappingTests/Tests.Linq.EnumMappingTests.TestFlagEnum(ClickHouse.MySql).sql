-- ClickHouse.MySql ClickHouse

SELECT
	t.ID,
	t.IntValue
FROM
	TestTable5 t
WHERE
	bitAnd(t.IntValue, 1) <> 0

