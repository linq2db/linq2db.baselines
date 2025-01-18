BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addDays(t.TransactionDate, 3)
FROM
	Transactions t

