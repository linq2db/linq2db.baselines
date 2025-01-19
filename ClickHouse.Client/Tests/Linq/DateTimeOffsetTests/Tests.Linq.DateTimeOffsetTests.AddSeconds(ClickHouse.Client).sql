BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toSecond(addSeconds(t.TransactionDate, toFloat64(-35)))
FROM
	Transactions t

