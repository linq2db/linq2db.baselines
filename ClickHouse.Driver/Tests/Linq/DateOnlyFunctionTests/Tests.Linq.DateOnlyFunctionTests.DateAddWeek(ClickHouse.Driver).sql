-- ClickHouse.Driver ClickHouse

SELECT
	addWeeks(t.TransactionDate, -1)
FROM
	Transactions t

