-- ClickHouse.Driver ClickHouse

SELECT
	toMonth(t.TransactionDate)
FROM
	Transactions t

