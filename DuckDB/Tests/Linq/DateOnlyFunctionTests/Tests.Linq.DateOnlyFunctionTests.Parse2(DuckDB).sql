-- DuckDB

SELECT
	d.TransactionDate
FROM
	Transactions d
WHERE
	EXTRACT(day FROM d.TransactionDate) > 0

