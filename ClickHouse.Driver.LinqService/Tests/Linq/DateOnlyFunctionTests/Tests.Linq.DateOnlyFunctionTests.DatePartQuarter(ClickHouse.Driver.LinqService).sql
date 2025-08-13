BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	toQuarter(t.TransactionDate)
FROM
	Transactions t

