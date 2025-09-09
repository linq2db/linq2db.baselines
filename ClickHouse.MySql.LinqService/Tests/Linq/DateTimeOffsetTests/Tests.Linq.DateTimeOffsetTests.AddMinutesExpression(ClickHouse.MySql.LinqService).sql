BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toMinute(addMinutes(t.TransactionDate, -8))
FROM
	Transactions t

