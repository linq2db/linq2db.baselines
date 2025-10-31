-- ClickHouse.MySql ClickHouse

SELECT
	toDate32(addYears(t.TransactionDate, 11))
FROM
	Transactions t

