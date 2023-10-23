BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toFloat64((toUnixTimestamp64Milli(toDateTime64(addHours(t.DateTimeValue, toFloat64(100)), 3)) - toUnixTimestamp64Milli(toDateTime64(t.DateTimeValue, 3))) * 10000 / 36000000000)
FROM
	LinqDataTypes t

