-- ClickHouse.Driver ClickHouse

SELECT
	toDate32(addDays(t.TransactionDate, 5))
FROM
	Transactions t

