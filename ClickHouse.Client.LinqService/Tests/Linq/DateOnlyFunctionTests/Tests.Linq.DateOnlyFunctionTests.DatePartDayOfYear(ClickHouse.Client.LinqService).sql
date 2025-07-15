BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDayOfYear(t.TransactionDate)
FROM
	Transactions t

