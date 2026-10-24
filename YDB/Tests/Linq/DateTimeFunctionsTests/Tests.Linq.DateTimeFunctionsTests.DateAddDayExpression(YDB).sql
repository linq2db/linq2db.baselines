-- YDB Ydb
DECLARE $Value Int32
SET     $Value = 5

SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(t.DateTimeValue + DateTime::IntervalFromDays($Value)))) as Date_1
FROM
	LinqDataTypes t

