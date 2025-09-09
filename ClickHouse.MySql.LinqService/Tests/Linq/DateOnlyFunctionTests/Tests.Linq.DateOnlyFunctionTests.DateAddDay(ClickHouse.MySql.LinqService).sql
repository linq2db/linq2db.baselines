BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	addDays(t.TransactionDate, 5)
FROM
	Transactions t

