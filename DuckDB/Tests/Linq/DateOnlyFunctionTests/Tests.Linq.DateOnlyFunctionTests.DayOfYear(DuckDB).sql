-- DuckDB

SELECT
	EXTRACT(dayofyear FROM t.TransactionDate)
FROM
	Transactions t

