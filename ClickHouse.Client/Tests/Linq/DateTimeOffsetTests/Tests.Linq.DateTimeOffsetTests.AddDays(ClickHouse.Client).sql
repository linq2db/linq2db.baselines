BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDate32(addDays(t.TransactionDate, toFloat64(5)))
FROM
	Transactions t

