BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	DAYOFYEAR(t.DateTimeValue) % toInt32(7)
FROM
	LinqDataTypes t

