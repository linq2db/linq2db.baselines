-- YDB Ydb

SELECT
	DateTime::GetHour(t.DateTimeValue) % 7 as c1
FROM
	LinqDataTypes t

