BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addQuarters(t.TransactionDate, -1)
FROM
	Transactions t

