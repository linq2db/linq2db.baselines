BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toMinute(addMinutes(t.TransactionDate, 5))
FROM
	Transactions t

