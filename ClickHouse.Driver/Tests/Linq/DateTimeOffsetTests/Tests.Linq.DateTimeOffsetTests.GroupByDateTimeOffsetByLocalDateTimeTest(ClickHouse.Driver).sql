-- ClickHouse.Driver ClickHouse

SELECT
	x.TransactionDate,
	COUNT(*)
FROM
	Transactions x
GROUP BY
	x.TransactionDate
ORDER BY
	x.TransactionDate

