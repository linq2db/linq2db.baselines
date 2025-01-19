BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	d.TransactionDate
FROM
	Transactions d
WHERE
	toDayOfMonth(d.TransactionDate) > 0

