BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toSecond(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

