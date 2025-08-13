BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	addYears(t.TransactionDate, 12)
FROM
	Transactions t

