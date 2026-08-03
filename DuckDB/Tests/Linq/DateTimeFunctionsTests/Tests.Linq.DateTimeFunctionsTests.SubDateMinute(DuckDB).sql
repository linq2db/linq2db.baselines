-- DuckDB
SELECT
	CAST(CAST(date_diff('microsecond', t.DateTimeValue, t.DateTimeValue + 100 * Interval '1 Minute') * 10 AS BIGINT) AS DOUBLE) / 600000000
FROM
	LinqDataTypes t

