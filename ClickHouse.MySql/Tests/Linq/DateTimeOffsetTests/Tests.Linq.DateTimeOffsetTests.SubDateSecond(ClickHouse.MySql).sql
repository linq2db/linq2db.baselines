-- ClickHouse.MySql ClickHouse

SELECT
	toFloat64(date_diff('second', t.TransactionDate, addMinutes(t.TransactionDate, toFloat64(100))))
FROM
	Transactions t

