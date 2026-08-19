-- DuckDB
SELECT
	CAST(Date_Diff('microsecond', t.DateTimeValue, t.DateTimeValue + 100 * Interval '1 Hour') * 10 AS DOUBLE) / 36000000000
FROM
	LinqDataTypes t

