BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t.ID,
	t.IntValue
FROM
	LinqDataTypes t
WHERE
	bitAnd(t.IntValue, 1) <> 0

