BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addWeeks(t.TransactionDate, -1)
FROM
	Transactions t

