BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toDayOfWeek(addDays(t.TransactionDate, 1))
FROM
	Transactions t

