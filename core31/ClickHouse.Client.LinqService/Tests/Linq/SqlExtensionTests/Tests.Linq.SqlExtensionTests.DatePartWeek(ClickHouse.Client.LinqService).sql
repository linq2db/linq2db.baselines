BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toISOWeek(toDateTime64(t.DateTimeValue, 0))
FROM
	LinqDataTypes t

