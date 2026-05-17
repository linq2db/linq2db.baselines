-- DuckDB

SELECT
	EXTRACT(dow FROM t.TransactionDate) + 1
FROM
	Transactions t

