BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	addDays(t.TransactionDate, 5)
FROM
	Transactions t

