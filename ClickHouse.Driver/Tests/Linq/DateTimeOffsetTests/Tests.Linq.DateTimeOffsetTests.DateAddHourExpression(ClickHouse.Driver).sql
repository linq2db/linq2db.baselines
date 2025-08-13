BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	toHour(addHours(t.TransactionDate, 1))
FROM
	Transactions t

