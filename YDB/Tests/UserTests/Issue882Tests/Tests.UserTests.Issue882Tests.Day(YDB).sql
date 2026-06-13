-- YDB Ydb

SELECT
	DateTime::GetDayOfMonth(t.DateTimeValue) % 7 as c1
FROM
	LinqDataTypes t

