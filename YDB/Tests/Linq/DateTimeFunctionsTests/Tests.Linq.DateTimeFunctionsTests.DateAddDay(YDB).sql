-- YDB Ydb

SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(t.DateTimeValue + DateTime::IntervalFromDays(5)))) as Date_1
FROM
	LinqDataTypes t

