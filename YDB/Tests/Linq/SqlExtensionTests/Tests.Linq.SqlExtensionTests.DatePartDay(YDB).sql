-- YDB Ydb

SELECT
	DateTime::GetDayOfMonth(t.DateTimeValue) as c1
FROM
	LinqDataTypes t

