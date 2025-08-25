BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	addMonths(t.TransactionDate, 2)
FROM
	Transactions t

