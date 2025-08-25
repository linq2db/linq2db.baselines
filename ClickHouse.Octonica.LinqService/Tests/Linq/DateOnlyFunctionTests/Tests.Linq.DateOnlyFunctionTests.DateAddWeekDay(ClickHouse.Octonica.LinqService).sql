BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	addDays(t.TransactionDate, 1)
FROM
	Transactions t

