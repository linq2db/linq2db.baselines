BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toHour(addHours(t.TransactionDate, 22))
FROM
	Transactions t

