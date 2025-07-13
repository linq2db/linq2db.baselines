BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addDays(t.TransactionDate, 1)
FROM
	Transactions t

