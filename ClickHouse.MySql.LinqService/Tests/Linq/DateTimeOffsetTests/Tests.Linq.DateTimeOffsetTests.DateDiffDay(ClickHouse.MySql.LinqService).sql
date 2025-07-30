BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	date_diff('day', t.TransactionDate, addHours(t.TransactionDate, toFloat64(96)))
FROM
	Transactions t

