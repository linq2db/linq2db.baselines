BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toMinute(addMinutes(t.TransactionDate, 5))
FROM
	Transactions t

