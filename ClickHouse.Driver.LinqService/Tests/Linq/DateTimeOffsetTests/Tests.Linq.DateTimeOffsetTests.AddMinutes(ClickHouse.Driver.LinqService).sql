BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toMinute(addMinutes(t.TransactionDate, toFloat64(-8)))
FROM
	Transactions t

