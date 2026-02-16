-- ClickHouse.Driver ClickHouse

SELECT
	toFloat64(date_diff('minute', t.TransactionDate, addMinutes(t.TransactionDate, toFloat64(100))))
FROM
	Transactions t

