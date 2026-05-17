-- DuckDB

SELECT
	EXTRACT(month FROM t.TransactionDate)
FROM
	Transactions t

