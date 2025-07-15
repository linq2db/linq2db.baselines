BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDate32(addDays(t.TransactionDate, 3))
FROM
	Transactions t

