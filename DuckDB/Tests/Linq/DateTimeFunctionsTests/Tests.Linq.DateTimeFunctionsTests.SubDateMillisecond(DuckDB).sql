-- DuckDB
SELECT
	CAST(Date_Diff('microsecond', t.DateTimeValue, t.DateTimeValue + 2023456789 * Interval '1 Millisecond') * 10 AS DOUBLE) / 10000
FROM
	LinqDataTypes t

