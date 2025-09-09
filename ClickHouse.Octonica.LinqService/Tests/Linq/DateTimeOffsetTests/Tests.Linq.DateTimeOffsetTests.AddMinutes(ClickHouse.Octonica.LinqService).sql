BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toMinute(addMinutes(t.TransactionDate, toFloat64(-8)))
FROM
	Transactions t

