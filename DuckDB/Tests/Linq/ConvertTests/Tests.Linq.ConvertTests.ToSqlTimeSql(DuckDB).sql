-- DuckDB

SELECT
	CAST(CAST(EXTRACT(hour FROM t.DateTimeValue) AS VARCHAR) || ':01:01' AS TIME)
FROM
	LinqDataTypes t

