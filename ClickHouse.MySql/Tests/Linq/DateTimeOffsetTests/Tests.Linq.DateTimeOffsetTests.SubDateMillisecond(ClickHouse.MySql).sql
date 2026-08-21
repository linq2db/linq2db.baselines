-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(addSeconds(t.TransactionDate, toFloat64(1))) - toUnixTimestamp64Nano(t.TransactionDate), toInt64(100))) / toFloat64(10000)
FROM
	Transactions t

