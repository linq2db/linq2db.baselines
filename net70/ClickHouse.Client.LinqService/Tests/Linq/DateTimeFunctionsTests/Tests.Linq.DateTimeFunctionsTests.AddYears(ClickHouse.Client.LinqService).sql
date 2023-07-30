BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addYears(t.DateTimeValue, toInt32(1))
FROM
	LinqDataTypes t

