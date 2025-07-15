BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDayOfWeek(addDays(t.DateTimeValue, 1)) - 1
FROM
	LinqDataTypes t

