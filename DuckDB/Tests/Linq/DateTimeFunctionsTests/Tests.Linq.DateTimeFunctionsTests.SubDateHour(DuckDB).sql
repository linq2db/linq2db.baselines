-- DuckDB
SELECT
	CAST(CAST(date_diff('microsecond', t.DateTimeValue, t.DateTimeValue + 100 * Interval '1 Hour') * 10 AS BIGINT) AS DOUBLE) / 36000000000
FROM
	LinqDataTypes t

