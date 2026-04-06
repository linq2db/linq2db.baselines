-- DuckDB

SELECT
	CAST(EXTRACT(EPOCH FROM ((t.DateTimeValue + CAST(100 * Interval '1 Hour' AS INTERVAL))::timestamp - t.DateTimeValue::timestamp)) / 86400 AS DOUBLE)
FROM
	LinqDataTypes t

