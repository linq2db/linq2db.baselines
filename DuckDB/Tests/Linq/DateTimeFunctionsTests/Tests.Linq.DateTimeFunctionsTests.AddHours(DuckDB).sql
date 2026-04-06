-- DuckDB

SELECT
	EXTRACT(hour FROM (t.DateTimeValue + CAST(22 * Interval '1 Hour' AS INTERVAL)))
FROM
	LinqDataTypes t

