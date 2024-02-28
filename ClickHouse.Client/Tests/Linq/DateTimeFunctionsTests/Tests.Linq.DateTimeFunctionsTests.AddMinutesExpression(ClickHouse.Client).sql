BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addMinutes(t.DateTimeValue, toInt32(-8))
FROM
	LinqDataTypes t

