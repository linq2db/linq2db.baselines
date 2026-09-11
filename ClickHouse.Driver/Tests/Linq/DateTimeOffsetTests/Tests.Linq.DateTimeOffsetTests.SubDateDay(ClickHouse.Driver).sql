-- ClickHouse.Driver ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(addHours(t.TransactionDate, toFloat64(96))) - toUnixTimestamp64Nano(t.TransactionDate), toInt64(100))) / toFloat64(864000000000)
FROM
	Transactions t

