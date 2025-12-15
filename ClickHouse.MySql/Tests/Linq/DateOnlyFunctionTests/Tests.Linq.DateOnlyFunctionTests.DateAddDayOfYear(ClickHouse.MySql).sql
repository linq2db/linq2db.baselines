-- ClickHouse.MySql ClickHouse

SELECT
	addDays(t.TransactionDate, 3)
FROM
	Transactions t

