BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	addDays(t.TransactionDate, 3)
FROM
	Transactions t

