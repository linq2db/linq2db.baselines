-- DuckDB

SELECT
	t.TransactionDate + CAST(12 * Interval '1 Year' AS INTERVAL)
FROM
	Transactions t

