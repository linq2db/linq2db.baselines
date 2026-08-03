-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(toInt64(toInt64((toUnixTimestamp64Nano(toDateTime64(addSeconds(t.TransactionDate, toFloat64(1)), 9)) - toUnixTimestamp64Nano(toDateTime64(t.TransactionDate, 9))) / 100))) / toFloat64(10000)
FROM
	Transactions t

