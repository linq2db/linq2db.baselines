-- ClickHouse.MySql ClickHouse
SELECT
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(toDateTime64(t.DateTimeValue, 7)) + toInt64(toFloat64(226000000)))
FROM
	LinqDataTypes t

-- ClickHouse.MySql ClickHouse
SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t

