BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	toDayOfYear(t.TransactionDate)
FROM
	Transactions t

