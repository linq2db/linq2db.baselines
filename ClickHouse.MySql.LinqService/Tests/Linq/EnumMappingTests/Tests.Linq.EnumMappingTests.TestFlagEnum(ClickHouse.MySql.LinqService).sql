BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t.ID,
	t.IntValue
FROM
	LinqDataTypes t
WHERE
	bitAnd(t.IntValue, 1) <> 0

