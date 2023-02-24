BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	(toUnixTimestamp64Milli(t.DateTimeValue) % 1000) % toInt32(7)
FROM
	LinqDataTypes t

