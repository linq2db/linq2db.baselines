-- DuckDB
SELECT
	CAST(Date_Diff('microsecond', t.DateTimeValue, t.DateTimeValue + 100 * Interval '1 Minute') * 10 AS DOUBLE) / 600000000
FROM
	LinqDataTypes t

