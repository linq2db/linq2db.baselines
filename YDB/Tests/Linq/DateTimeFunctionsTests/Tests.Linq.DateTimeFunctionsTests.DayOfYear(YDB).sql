-- YDB Ydb

SELECT
	DateTime::GetDayOfYear(t.DateTimeValue) as c1
FROM
	LinqDataTypes t

