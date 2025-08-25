BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	addQuarters(t.TransactionDate, -1)
FROM
	Transactions t

