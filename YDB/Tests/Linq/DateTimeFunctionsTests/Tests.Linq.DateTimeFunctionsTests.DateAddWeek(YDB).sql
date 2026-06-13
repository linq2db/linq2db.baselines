-- YDB Ydb

SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(t.DateTimeValue + DateTime::IntervalFromDays(-7)))) as Date_1
FROM
	LinqDataTypes t

