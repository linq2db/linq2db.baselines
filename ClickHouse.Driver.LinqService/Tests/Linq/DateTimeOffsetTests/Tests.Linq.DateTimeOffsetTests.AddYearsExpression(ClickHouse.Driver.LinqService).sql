BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toDate32(addYears(t.TransactionDate, 1))
FROM
	Transactions t

