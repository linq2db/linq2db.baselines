BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDate32(addMonths(t.TransactionDate, 2))
FROM
	Transactions t

