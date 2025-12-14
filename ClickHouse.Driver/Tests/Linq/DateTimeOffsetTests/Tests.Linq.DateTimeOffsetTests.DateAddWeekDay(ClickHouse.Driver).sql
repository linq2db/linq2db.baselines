-- ClickHouse.Driver ClickHouse

SELECT
	toDate32(addDays(t.TransactionDate, 1))
FROM
	Transactions t

