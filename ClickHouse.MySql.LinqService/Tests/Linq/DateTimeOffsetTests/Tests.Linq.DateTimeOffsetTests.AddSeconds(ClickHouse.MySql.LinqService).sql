BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toSecond(addSeconds(t.TransactionDate, toFloat64(-35)))
FROM
	Transactions t

