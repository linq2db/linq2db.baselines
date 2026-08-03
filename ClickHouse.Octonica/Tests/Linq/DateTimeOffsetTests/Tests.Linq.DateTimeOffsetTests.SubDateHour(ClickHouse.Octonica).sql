-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(toInt64(toInt64((toUnixTimestamp64Nano(toDateTime64(addHours(t.TransactionDate, toFloat64(100)), 9)) - toUnixTimestamp64Nano(toDateTime64(t.TransactionDate, 9))) / 100))) / toFloat64(36000000000)
FROM
	Transactions t

