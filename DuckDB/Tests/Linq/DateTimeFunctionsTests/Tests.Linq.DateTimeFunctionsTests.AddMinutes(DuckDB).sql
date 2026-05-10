-- DuckDB

SELECT
	EXTRACT(minute FROM (t.DateTimeValue + -8 * Interval '1 Minute'))
FROM
	LinqDataTypes t

