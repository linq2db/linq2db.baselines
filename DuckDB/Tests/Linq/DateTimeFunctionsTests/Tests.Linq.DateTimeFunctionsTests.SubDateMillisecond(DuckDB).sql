-- DuckDB

SELECT
	CAST(ROUND(EXTRACT(EPOCH FROM ((t.DateTimeValue + CAST(2023456789 * Interval '1 Millisecond' AS INTERVAL))::timestamp - t.DateTimeValue::timestamp)) * 1000) AS DOUBLE)
FROM
	LinqDataTypes t

