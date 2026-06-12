-- ClickHouse.Octonica ClickHouse

SELECT
	toDayOfMonth(t.TransactionDate)
FROM
	Transactions t

