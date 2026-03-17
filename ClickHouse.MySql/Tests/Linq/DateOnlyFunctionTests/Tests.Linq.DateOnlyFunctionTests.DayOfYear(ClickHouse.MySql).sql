-- ClickHouse.MySql ClickHouse

SELECT
	toDayOfYear(t.TransactionDate)
FROM
	Transactions t

