BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toDayOfYear(t.TransactionDate)
FROM
	Transactions t

