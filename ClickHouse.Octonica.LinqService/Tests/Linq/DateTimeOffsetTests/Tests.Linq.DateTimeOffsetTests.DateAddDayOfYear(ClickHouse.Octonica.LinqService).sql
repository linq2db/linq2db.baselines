BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toDate32(addDays(t.TransactionDate, 3))
FROM
	Transactions t

