BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	date_diff('second', t.TransactionDate, addMinutes(t.TransactionDate, toFloat64(100)))
FROM
	Transactions t

