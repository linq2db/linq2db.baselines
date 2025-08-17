BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toQuarter(t.TransactionDate)
FROM
	Transactions t

