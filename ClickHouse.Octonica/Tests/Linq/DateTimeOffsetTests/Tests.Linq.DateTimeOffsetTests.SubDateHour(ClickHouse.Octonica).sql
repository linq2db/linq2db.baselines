-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(addHours(t.TransactionDate, toFloat64(100))) - toUnixTimestamp64Nano(t.TransactionDate), toInt64(100))) / toFloat64(36000000000)
FROM
	Transactions t

