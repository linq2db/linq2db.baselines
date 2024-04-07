BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	HOUR(addHours(t.DateTimeValue, toInt32(22)))
FROM
	LinqDataTypes t

