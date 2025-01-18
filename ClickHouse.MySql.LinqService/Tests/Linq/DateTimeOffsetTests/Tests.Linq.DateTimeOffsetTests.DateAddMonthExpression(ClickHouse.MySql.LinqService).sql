BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDate32(addMonths(t.TransactionDate, 2))
FROM
	Transactions t

