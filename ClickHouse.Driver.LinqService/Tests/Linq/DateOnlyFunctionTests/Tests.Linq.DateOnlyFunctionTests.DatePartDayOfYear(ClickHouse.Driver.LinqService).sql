BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toDayOfYear(t.TransactionDate)
FROM
	Transactions t

