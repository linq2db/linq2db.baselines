BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addWeeks(t.TransactionDate, -1)
FROM
	Transactions t

