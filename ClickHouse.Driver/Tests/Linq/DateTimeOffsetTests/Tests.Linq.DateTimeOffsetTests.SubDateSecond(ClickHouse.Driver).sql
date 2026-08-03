-- ClickHouse.Driver ClickHouse
SELECT
	toFloat64(toInt64(toInt64((toUnixTimestamp64Nano(toDateTime64(addMinutes(t.TransactionDate, toFloat64(100)), 9)) - toUnixTimestamp64Nano(toDateTime64(t.TransactionDate, 9))) / 100))) / toFloat64(10000000)
FROM
	Transactions t

