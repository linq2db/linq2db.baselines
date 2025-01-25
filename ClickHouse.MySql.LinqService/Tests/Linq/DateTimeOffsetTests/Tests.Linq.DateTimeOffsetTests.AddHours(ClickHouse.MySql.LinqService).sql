BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toHour(addHours(t.TransactionDate, toFloat64(22)))
FROM
	Transactions t

