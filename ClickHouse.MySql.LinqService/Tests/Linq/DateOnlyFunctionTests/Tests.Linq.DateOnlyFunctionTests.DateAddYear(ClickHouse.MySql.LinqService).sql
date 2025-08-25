BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	addYears(t.TransactionDate, 12)
FROM
	Transactions t

