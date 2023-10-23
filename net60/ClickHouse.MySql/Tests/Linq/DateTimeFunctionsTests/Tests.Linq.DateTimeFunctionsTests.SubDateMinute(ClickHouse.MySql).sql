BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toFloat64((toUnixTimestamp64Milli(toDateTime64(addMinutes(t.DateTimeValue, toFloat64(100)), 3)) - toUnixTimestamp64Milli(toDateTime64(t.DateTimeValue, 3))) * 10000 / 600000000)
FROM
	LinqDataTypes t

