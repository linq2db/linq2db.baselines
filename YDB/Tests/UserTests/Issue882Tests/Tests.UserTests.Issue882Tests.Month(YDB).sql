-- YDB Ydb

SELECT
	DateTime::GetMonth(t.DateTimeValue) % 7 as c1
FROM
	LinqDataTypes t

