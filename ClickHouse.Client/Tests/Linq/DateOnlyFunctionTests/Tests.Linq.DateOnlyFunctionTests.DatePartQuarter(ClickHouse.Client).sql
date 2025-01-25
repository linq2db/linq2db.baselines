BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toQuarter(t.TransactionDate)
FROM
	Transactions t

