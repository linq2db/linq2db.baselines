-- DuckDB
SELECT
	CAST(Date_Diff('microsecond', t.DateTimeValue, t.DateTimeValue + 100 * Interval '1 Hour') * 10 AS DOUBLE) / 864000000000
FROM
	LinqDataTypes t

