BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDayOfYear(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

