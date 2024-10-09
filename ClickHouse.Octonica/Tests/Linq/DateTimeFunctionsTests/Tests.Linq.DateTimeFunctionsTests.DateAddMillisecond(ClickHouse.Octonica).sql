BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.DateTimeValue) + toInt64(226000000))
FROM
	LinqDataTypes t

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toFloat64(226),
	t.DateTimeValue
FROM
	LinqDataTypes t

