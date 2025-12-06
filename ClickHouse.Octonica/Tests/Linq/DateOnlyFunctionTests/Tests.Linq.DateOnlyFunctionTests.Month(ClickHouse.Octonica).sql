-- ClickHouse.Octonica ClickHouse

SELECT
	toMonth(t.TransactionDate)
FROM
	Transactions t

