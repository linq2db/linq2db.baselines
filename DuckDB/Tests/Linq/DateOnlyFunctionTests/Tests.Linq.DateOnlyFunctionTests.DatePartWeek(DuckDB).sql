-- DuckDB

SELECT
	EXTRACT(week FROM t.TransactionDate)
FROM
	Transactions t

