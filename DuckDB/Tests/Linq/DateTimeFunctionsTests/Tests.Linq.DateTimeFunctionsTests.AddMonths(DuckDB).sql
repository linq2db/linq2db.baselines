-- DuckDB

SELECT
	CAST(t.DateTimeValue + CAST(-2 * Interval '1 Month' AS INTERVAL) AS DATE)
FROM
	LinqDataTypes t

