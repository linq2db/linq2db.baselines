BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	d.TransactionDate
FROM
	Transactions d
WHERE
	toDayOfMonth(d.TransactionDate) > 0

