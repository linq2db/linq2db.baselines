-- YDB Ydb

SELECT
	DateTime::GetMinute(t.DateTimeValue + DateTime::IntervalFromMinutes(5)) as Minute_1
FROM
	LinqDataTypes t

