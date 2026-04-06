-- DuckDB

SELECT
	CAST(t.DateTimeValue + CAST(5 * Interval '1 Day' AS INTERVAL) AS DATE)
FROM
	LinqDataTypes t

