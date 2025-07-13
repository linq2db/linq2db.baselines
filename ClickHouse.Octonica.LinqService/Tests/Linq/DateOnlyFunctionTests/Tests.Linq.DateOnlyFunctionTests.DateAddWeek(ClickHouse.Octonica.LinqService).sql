BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addWeeks(t.TransactionDate, -1)
FROM
	Transactions t

