-- DuckDB

SELECT
	EXTRACT(hour FROM (t.DateTimeValue + 22 * Interval '1 Hour'))
FROM
	LinqDataTypes t

