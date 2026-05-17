-- DuckDB

SELECT
	CAST(EXTRACT(EPOCH FROM ((t.DateTimeValue + 100 * Interval '1 Minute')::timestamp - t.DateTimeValue::timestamp)) AS DOUBLE)
FROM
	LinqDataTypes t

