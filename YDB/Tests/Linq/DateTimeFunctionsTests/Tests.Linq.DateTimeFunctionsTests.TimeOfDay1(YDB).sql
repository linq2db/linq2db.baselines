-- YDB Ydb

SELECT
	DateTime::TimeOfDay(t.DateTimeValue) as c1
FROM
	LinqDataTypes t

