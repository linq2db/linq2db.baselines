-- YDB Ydb
DECLARE $Date Int32
SET     $Date = 5

SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(t.DateTimeValue + DateTime::IntervalFromDays($Date)))) as Date_1
FROM
	LinqDataTypes t

