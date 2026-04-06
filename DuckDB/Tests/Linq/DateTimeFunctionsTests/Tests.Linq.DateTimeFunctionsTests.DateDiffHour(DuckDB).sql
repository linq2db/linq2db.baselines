-- DuckDB

SELECT
	EXTRACT(EPOCH FROM ((t.DateTimeValue + CAST(100 * Interval '1 Hour' AS INTERVAL))::timestamp - t.DateTimeValue::timestamp)) / 3600
FROM
	LinqDataTypes t

