-- ClickHouse.MySql ClickHouse

SELECT
	toISOWeek(toDateTime64(t.TransactionDate, 1))
FROM
	Transactions t

