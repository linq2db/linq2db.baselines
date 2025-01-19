BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	d.TransactionDate
FROM
	Transactions d
WHERE
	toDayOfMonth(d.TransactionDate) > 0

