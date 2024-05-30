BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toMinute(addMinutes(t.DateTimeValue, -8))
FROM
	LinqDataTypes t

