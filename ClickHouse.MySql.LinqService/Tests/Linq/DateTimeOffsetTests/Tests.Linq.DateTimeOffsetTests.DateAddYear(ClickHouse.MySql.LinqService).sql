BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toDate32(addYears(t.TransactionDate, 11))
FROM
	Transactions t

