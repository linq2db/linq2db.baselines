BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	(DAYOFWEEK(addDays(t.DateTimeValue, 1))) - toInt32(1)
FROM
	LinqDataTypes t

