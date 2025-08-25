BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toMonth(t.TransactionDate)
FROM
	Transactions t

