-- YDB Ydb

SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(t.DateTimeValue + DateTime::IntervalFromDays(Unwrap(CAST(Double('5') AS Int32)))))) as Date_1
FROM
	LinqDataTypes t

