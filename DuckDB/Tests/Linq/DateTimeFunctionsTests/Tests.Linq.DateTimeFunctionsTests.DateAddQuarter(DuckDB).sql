-- DuckDB

SELECT
	CAST(t.DateTimeValue + CAST(-Interval '1 Month' * 3 AS INTERVAL) AS DATE)
FROM
	LinqDataTypes t

