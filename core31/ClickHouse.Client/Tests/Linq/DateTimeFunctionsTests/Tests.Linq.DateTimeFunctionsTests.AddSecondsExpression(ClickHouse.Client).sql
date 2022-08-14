BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addSeconds(t.DateTimeValue, toInt32(-35))
FROM
	LinqDataTypes t

