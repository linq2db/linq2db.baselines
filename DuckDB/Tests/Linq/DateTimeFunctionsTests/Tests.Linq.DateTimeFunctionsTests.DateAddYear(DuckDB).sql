-- DuckDB

SELECT
	CAST(t.DateTimeValue + 11 * Interval '1 Year' AS DATE)
FROM
	LinqDataTypes t

