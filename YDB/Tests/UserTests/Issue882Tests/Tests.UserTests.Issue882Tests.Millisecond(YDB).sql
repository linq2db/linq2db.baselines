-- YDB Ydb

SELECT
	DateTime::GetMillisecondOfSecond(t.DateTimeValue) % 7 as c1
FROM
	LinqDataTypes t

