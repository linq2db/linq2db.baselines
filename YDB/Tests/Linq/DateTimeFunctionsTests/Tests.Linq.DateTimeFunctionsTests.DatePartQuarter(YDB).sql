-- YDB Ydb

SELECT
	(DateTime::GetMonth(t.DateTimeValue) + 2) / 3 as c1
FROM
	LinqDataTypes t

