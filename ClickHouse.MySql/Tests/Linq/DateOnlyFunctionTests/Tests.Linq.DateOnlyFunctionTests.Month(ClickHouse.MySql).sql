BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toMonth(t.TransactionDate)
FROM
	Transactions t

