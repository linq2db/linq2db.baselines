BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	addDays(t.TransactionDate, 5)
FROM
	Transactions t

