-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(addHours(t.TransactionDate, toFloat64(100)), 7)) - toUnixTimestamp64Nano(toDateTime64(t.TransactionDate, 7)), toInt64(100))) / toFloat64(36000000000)
FROM
	Transactions t

