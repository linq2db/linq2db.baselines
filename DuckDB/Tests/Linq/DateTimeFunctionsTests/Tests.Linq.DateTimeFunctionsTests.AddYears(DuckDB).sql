-- DuckDB

SELECT
	CAST(t.DateTimeValue + CAST(Interval '1 Year' AS INTERVAL) AS DATE)
FROM
	LinqDataTypes t

