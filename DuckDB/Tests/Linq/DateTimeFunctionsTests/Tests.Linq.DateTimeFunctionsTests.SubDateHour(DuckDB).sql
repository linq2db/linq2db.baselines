-- DuckDB

SELECT
	CAST(EXTRACT(EPOCH FROM ((t.DateTimeValue + 100 * Interval '1 Hour')::timestamp - t.DateTimeValue::timestamp)) / 3600 AS DOUBLE)
FROM
	LinqDataTypes t

