-- DuckDB

SELECT
	CAST(EXTRACT(EPOCH FROM ((t.DateTimeValue + CAST(100 * Interval '1 Minute' AS INTERVAL))::timestamp - t.DateTimeValue::timestamp)) / 60 AS DOUBLE)
FROM
	LinqDataTypes t

