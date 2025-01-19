BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDayOfMonth(t.TransactionDate)
FROM
	Transactions t

