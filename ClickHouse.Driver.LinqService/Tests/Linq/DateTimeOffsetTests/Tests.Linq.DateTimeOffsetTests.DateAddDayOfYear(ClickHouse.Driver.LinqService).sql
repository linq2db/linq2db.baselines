BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toDate32(addDays(t.TransactionDate, 3))
FROM
	Transactions t

