BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	addMonths(t.TransactionDate, 2)
FROM
	Transactions t

