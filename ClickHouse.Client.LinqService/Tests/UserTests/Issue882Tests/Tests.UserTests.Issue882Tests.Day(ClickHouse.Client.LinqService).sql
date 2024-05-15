BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDayOfMonth(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

