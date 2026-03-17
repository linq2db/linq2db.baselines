-- ClickHouse.Octonica ClickHouse

SELECT
	toDayOfWeek(addDays(t.TransactionDate, 1))
FROM
	Transactions t

