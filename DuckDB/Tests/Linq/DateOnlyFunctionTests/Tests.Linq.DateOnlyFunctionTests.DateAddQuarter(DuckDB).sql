-- DuckDB

SELECT
	t.TransactionDate + -Interval '1 Month' * 3
FROM
	Transactions t

