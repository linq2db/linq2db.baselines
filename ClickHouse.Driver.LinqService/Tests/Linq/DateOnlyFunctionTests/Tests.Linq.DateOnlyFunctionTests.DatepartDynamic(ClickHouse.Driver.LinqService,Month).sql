BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toMonth(t.TransactionDate)
FROM
	Transactions t

