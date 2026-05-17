-- DuckDB

SELECT
	EXTRACT(quarter FROM t.TransactionDate)
FROM
	Transactions t

