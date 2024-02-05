BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addSeconds(t.DateTimeValue, toInt32(41))
FROM
	LinqDataTypes t

