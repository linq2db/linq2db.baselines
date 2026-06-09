-- YDB Ydb

SELECT
	DateTime::GetHour(t.DateTimeValue + DateTime::IntervalFromHours(1)) as c1
FROM
	LinqDataTypes t

