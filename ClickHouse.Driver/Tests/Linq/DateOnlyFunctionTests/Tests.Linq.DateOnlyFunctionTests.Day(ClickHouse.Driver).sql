-- ClickHouse.Driver ClickHouse

SELECT
	toDayOfMonth(t.TransactionDate)
FROM
	Transactions t

