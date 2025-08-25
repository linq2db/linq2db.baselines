BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toISOWeek(toDateTime64(t.TransactionDate, 1))
FROM
	Transactions t

