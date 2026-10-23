-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(addMinutes(t.TransactionDate, toFloat64(100)), 7)) - toUnixTimestamp64Nano(toDateTime64(t.TransactionDate, 7)), toInt64(100))) / toFloat64(10000000)
FROM
	Transactions t

