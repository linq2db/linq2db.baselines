-- DuckDB

SELECT
	t.TransactionDate + CAST(-Interval '1 Day' * 7 AS INTERVAL)
FROM
	Transactions t

