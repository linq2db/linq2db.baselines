-- ClickHouse.MySql ClickHouse

SELECT
	toMinute(addMinutes(t.TransactionDate, 5))
FROM
	Transactions t

