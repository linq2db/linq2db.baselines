-- DuckDB

SELECT
	EXTRACT(EPOCH FROM ((t.DateTimeValue + CAST(100 * Interval '1 Minute' AS INTERVAL))::timestamp - t.DateTimeValue::timestamp))
FROM
	LinqDataTypes t

