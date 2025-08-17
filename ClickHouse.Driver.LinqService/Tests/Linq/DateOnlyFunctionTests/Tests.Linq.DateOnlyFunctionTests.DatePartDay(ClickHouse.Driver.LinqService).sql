BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toDayOfMonth(t.TransactionDate)
FROM
	Transactions t

