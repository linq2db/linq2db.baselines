-- DuckDB

SELECT
	CAST(t.DateTimeValue + 5 * Interval '1 Day' AS DATE)
FROM
	LinqDataTypes t

