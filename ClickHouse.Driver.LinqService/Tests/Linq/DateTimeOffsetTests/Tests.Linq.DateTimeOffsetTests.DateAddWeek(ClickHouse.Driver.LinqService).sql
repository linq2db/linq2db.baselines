BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toDate32(addWeeks(t.TransactionDate, -1))
FROM
	Transactions t

