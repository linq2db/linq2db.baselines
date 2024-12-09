BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addMinutes(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

