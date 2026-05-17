-- DuckDB

SELECT
	t.TransactionDate + 5 * Interval '1 Day'
FROM
	Transactions t

