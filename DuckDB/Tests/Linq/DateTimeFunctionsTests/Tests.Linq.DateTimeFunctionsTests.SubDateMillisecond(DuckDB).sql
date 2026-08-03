-- DuckDB
SELECT
	CAST(CAST(date_diff('microsecond', t.DateTimeValue, t.DateTimeValue + 2023456789 * Interval '1 Millisecond') * 10 AS BIGINT) AS DOUBLE) / 10000
FROM
	LinqDataTypes t

