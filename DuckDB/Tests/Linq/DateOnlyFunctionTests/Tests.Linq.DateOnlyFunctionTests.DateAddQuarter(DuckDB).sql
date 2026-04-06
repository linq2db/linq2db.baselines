-- DuckDB

SELECT
	t.TransactionDate + CAST(-Interval '1 Month' * 3 AS INTERVAL)
FROM
	Transactions t

