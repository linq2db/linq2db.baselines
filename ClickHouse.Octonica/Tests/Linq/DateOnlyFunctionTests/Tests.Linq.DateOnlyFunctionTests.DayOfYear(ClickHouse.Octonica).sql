BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDayOfYear(t.TransactionDate)
FROM
	Transactions t

