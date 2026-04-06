-- DuckDB

SELECT
	t.TransactionDate + CAST(-2 * Interval '1 Month' AS INTERVAL)
FROM
	Transactions t

