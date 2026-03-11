-- ClickHouse.Driver ClickHouse

SELECT
	toFloat64(date_diff('day', t.TransactionDate, addHours(t.TransactionDate, toFloat64(96))))
FROM
	Transactions t

