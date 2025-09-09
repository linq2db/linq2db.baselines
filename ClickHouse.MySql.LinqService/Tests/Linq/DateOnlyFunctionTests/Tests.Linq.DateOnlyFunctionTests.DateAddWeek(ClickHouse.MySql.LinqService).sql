BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	addWeeks(t.TransactionDate, -1)
FROM
	Transactions t

