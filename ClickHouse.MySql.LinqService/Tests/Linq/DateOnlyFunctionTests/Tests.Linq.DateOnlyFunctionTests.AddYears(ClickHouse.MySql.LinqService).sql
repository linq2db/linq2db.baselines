BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addYears(t.TransactionDate, 12)
FROM
	Transactions t

