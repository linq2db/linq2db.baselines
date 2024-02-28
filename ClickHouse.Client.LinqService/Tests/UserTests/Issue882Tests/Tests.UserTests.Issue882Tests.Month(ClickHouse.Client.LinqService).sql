BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	MONTH(t.DateTimeValue) % toInt32(7)
FROM
	LinqDataTypes t

