BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toDate32(addQuarters(t.TransactionDate, -1))
FROM
	Transactions t

