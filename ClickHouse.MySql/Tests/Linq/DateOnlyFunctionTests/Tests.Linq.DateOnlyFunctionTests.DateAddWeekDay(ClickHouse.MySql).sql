BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addDays(t.TransactionDate, 1)
FROM
	Transactions t

