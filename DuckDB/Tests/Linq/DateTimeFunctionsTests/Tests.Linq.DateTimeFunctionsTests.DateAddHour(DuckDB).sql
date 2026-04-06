-- DuckDB

SELECT
	EXTRACT(hour FROM (t.DateTimeValue + CAST(Interval '1 Hour' AS INTERVAL)))
FROM
	LinqDataTypes t

