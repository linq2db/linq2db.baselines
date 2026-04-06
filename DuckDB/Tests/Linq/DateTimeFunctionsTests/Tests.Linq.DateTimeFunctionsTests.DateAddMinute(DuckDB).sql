-- DuckDB

SELECT
	EXTRACT(minute FROM (t.DateTimeValue + CAST(5 * Interval '1 Minute' AS INTERVAL)))
FROM
	LinqDataTypes t

