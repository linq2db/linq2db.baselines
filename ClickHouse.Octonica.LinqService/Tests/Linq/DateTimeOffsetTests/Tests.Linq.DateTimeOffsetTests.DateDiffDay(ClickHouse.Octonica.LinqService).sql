BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	date_diff('day', t.TransactionDate, addHours(t.TransactionDate, toFloat64(96)))
FROM
	Transactions t

