-- ClickHouse.MySql ClickHouse
SELECT
	toISOWeek(toDateTime64(t.TransactionDate, 7))
FROM
	Transactions t

