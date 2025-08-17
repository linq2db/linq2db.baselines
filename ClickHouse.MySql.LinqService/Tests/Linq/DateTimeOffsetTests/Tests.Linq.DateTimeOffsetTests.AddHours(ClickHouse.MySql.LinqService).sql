BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toHour(addHours(t.TransactionDate, toFloat64(22)))
FROM
	Transactions t

