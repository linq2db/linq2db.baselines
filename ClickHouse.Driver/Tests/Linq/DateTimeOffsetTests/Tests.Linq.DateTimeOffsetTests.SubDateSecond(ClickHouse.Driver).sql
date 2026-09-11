-- ClickHouse.Driver ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(addMinutes(t.TransactionDate, toFloat64(100))) - toUnixTimestamp64Nano(t.TransactionDate), toInt64(100))) / toFloat64(10000000)
FROM
	Transactions t

