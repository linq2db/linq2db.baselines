BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toQuarter(t.TransactionDate)
FROM
	Transactions t

