-- DuckDB

SELECT
	t.TransactionDate + CAST(5 * Interval '1 Day' AS INTERVAL)
FROM
	Transactions t

