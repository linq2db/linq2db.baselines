BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toUnixTimestamp64Milli(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.TransactionDate) + toInt64(226000000))) % 1000
FROM
	Transactions t

