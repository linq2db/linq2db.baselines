BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	toUnixTimestamp64Milli(toDateTime64(addSeconds(t.TransactionDate, toFloat64(1)), 3)) - toUnixTimestamp64Milli(toDateTime64(t.TransactionDate, 3))
FROM
	Transactions t

