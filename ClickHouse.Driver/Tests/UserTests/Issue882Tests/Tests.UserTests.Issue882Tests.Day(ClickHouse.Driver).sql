BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	toDayOfMonth(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

