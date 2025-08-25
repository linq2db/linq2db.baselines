BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toDayOfYear(t.TransactionDate)
FROM
	Transactions t

