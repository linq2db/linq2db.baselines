BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.DateTimeValue) + toInt64(226000000))
FROM
	LinqDataTypes t

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t

