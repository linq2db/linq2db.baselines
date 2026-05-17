-- DuckDB

SELECT
	EXTRACT(hour FROM (t.DateTimeValue + Interval '1 Hour'))
FROM
	LinqDataTypes t

