BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	toMinute(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

