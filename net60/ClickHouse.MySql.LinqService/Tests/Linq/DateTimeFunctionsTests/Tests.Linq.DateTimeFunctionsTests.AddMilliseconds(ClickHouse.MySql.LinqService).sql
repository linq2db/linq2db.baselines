BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	fromUnixTimestamp64Nano(toInt64(toUnixTimestamp64Nano(toDateTime64(t.DateTimeValue, 9)) + toInt64(toFloat64(226)) * 1000000))
FROM
	LinqDataTypes t

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t

