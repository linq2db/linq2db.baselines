BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	addYears(t.TransactionDate, 12)
FROM
	Transactions t

