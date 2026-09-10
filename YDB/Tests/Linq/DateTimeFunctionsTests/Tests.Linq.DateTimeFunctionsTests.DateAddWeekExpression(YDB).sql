-- YDB Ydb
DECLARE $Value Int32
SET     $Value = -1

SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(t.DateTimeValue + DateTime::IntervalFromDays($Value * 7)))) as Date_1
FROM
	LinqDataTypes t

