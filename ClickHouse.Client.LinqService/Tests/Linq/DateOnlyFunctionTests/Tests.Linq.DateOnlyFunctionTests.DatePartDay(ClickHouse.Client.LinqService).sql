BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDayOfMonth(t.TransactionDate)
FROM
	Transactions t

