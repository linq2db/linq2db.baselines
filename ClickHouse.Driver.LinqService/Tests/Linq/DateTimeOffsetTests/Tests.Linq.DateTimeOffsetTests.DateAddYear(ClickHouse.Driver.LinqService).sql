BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toDate32(addYears(t.TransactionDate, 11))
FROM
	Transactions t

