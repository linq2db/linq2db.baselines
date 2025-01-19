BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toQuarter(t.TransactionDate)
FROM
	Transactions t

