BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.DateTimeValue) + toInt64(toFloat64(226000000)))
FROM
	LinqDataTypes t

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t

