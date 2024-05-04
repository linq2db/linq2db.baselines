BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toHour(addHours(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

