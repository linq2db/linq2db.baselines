BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toHour(addHours(t.TransactionDate, 22))
FROM
	Transactions t

