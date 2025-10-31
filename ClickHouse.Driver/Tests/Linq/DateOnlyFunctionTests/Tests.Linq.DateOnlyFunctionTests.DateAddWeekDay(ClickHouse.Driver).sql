-- ClickHouse.Driver ClickHouse

SELECT
	addDays(t.TransactionDate, 1)
FROM
	Transactions t

