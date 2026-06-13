-- YDB Ydb

SELECT
	DateTime::GetSecond(t.DateTimeValue) % 7 as c1
FROM
	LinqDataTypes t

