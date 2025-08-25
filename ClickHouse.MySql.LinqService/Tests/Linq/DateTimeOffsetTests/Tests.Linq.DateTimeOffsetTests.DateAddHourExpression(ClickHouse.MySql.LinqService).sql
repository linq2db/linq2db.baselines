BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toHour(addHours(t.TransactionDate, 1))
FROM
	Transactions t

