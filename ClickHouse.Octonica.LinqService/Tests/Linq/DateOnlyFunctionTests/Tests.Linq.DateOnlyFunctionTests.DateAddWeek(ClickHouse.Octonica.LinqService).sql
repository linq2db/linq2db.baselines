BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	addWeeks(t.TransactionDate, -1)
FROM
	Transactions t

