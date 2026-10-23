-- ClickHouse.Driver ClickHouse
SELECT
	(toUnixTimestamp64Milli(toDateTime64(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(toDateTime64(t.TransactionDate, 7)) + toInt64(226000000)), 7)) % toInt64(1000) + 1000) % 1000
FROM
	Transactions t

