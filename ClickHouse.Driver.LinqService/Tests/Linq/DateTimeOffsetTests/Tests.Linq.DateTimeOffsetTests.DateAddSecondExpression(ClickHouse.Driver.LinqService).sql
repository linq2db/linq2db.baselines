BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toSecond(addSeconds(t.TransactionDate, 41))
FROM
	Transactions t

