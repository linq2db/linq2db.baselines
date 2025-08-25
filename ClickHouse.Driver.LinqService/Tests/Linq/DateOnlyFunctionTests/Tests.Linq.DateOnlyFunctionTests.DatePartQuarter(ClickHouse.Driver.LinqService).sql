BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toQuarter(t.TransactionDate)
FROM
	Transactions t

