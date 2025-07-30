BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDate32(addQuarters(t.TransactionDate, -1))
FROM
	Transactions t

