BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toDate32(addDays(t.TransactionDate, 5))
FROM
	Transactions t

