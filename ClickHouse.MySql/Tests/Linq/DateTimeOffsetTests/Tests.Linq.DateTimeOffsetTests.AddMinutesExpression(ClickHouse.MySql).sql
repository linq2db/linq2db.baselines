-- ClickHouse.MySql ClickHouse

SELECT
	toMinute(addMinutes(t.TransactionDate, -8))
FROM
	Transactions t

