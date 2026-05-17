-- DuckDB

SELECT
	CAST(CAST(EXTRACT(year FROM t.DateTimeValue) AS VARCHAR) || '-01-01' AS DATE)
FROM
	LinqDataTypes t

