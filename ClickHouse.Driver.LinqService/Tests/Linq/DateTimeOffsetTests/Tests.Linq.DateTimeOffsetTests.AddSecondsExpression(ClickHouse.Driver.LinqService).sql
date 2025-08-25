BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toSecond(addSeconds(t.TransactionDate, -35))
FROM
	Transactions t

