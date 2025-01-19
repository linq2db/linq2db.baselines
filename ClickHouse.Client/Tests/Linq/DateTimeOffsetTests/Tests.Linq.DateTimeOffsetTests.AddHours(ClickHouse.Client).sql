BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toHour(addHours(t.TransactionDate, toFloat64(22)))
FROM
	Transactions t

