-- DuckDB

SELECT
	EXTRACT(day FROM t.TransactionDate)
FROM
	Transactions t

