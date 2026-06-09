-- YDB Ydb

SELECT
	DateTime::GetMinute(t.DateTimeValue) % 7 as c1
FROM
	LinqDataTypes t

