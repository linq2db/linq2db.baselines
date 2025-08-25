BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toSecond(addSeconds(t.TransactionDate, -35))
FROM
	Transactions t

