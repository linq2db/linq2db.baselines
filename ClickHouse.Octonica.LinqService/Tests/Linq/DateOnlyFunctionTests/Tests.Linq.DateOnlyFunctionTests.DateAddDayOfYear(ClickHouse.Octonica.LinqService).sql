BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addDays(t.TransactionDate, 3)
FROM
	Transactions t

