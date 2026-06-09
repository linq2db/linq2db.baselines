-- YDB Ydb

SELECT
	DateTime::GetDayOfWeek(t.DateTimeValue) % 7 + 1 as c1
FROM
	LinqDataTypes t

