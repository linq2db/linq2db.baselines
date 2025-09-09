BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toHour(addHours(t.TransactionDate, 1))
FROM
	Transactions t

