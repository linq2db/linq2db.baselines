BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDate32(addYears(t.TransactionDate, 1))
FROM
	Transactions t

