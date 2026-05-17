-- DuckDB

SELECT
	CAST(t.DateTimeValue + -2 * Interval '1 Month' AS DATE)
FROM
	LinqDataTypes t

