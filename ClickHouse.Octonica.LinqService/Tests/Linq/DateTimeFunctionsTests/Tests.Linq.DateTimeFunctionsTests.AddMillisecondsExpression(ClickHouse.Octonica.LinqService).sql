BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.DateTimeValue) + toInt64(226000000))
FROM
	LinqDataTypes t

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t

