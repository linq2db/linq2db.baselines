BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toDate32(addDays(t.TransactionDate, 5))
FROM
	Transactions t

