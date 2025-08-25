BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toDate32(addMonths(t.TransactionDate, 2))
FROM
	Transactions t

