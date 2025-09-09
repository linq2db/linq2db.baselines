BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toDayOfMonth(t.TransactionDate)
FROM
	Transactions t

