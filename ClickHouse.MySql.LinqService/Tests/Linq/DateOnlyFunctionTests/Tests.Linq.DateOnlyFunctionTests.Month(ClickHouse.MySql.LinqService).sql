BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toMonth(t.TransactionDate)
FROM
	Transactions t

