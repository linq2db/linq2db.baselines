BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	MINUTE(t.DateTimeValue) % toInt32(7)
FROM
	LinqDataTypes t

