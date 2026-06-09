-- YDB Ydb

SELECT
	DateTime::GetMinute(t.DateTimeValue) as c1
FROM
	LinqDataTypes t

