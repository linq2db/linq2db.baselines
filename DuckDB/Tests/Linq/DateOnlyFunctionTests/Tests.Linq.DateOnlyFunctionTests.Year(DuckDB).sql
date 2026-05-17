-- DuckDB

SELECT
	EXTRACT(year FROM t.TransactionDate)
FROM
	Transactions t

