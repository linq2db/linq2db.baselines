-- DuckDB

SELECT
	EXTRACT(minute FROM (t.DateTimeValue + 5 * Interval '1 Minute'))
FROM
	LinqDataTypes t

