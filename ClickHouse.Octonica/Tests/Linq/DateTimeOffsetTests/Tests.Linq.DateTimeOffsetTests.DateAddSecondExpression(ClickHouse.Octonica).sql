-- ClickHouse.Octonica ClickHouse

SELECT
	toSecond(addSeconds(t.TransactionDate, 41))
FROM
	Transactions t

