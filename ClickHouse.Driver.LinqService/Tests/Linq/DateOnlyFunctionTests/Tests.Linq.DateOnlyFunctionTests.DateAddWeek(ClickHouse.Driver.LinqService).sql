BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	addWeeks(t.TransactionDate, -1)
FROM
	Transactions t

