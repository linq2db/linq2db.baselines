-- YDB Ydb

SELECT
	DateTime::GetMillisecondOfSecond(t.DateTimeValue) as c1
FROM
	LinqDataTypes t

