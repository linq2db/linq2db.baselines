BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addDays(t.TransactionDate, 5)
FROM
	Transactions t

