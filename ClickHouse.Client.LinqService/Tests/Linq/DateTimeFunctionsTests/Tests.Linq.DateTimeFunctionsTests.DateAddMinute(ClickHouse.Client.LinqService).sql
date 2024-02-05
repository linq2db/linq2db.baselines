BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addMinutes(t.DateTimeValue, toInt32(5))
FROM
	LinqDataTypes t

