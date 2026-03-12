-- ClickHouse.Octonica ClickHouse

SELECT
	toQuarter(t.TransactionDate)
FROM
	Transactions t

