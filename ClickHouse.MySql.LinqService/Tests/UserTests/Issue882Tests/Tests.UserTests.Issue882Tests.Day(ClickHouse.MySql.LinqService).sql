BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	DAY(t.DateTimeValue) % toInt32(7)
FROM
	LinqDataTypes t

