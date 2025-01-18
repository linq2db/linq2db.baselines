BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toMonth(t.TransactionDate)
FROM
	Transactions t

