-- YDB Ydb

SELECT
	DateTime::GetDayOfYear(t.DateTimeValue) % 7 as c1
FROM
	LinqDataTypes t

