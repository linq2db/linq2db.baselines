-- ClickHouse.Driver ClickHouse

SELECT
	toFloat64(date_diff('hour', t.TransactionDate, addHours(t.TransactionDate, toFloat64(100))))
FROM
	Transactions t

