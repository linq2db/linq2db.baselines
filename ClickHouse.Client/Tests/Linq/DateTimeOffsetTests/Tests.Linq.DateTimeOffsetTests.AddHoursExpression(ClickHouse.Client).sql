BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toHour(addHours(t.TransactionDate, 22))
FROM
	Transactions t

