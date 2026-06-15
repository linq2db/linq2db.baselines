-- YDB Ydb

SELECT
	DateTime::GetHour(t.DateTimeValue) as c1
FROM
	LinqDataTypes t

