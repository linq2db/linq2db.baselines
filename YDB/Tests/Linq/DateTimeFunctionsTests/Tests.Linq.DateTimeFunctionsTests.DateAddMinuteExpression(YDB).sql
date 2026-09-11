-- YDB Ydb
DECLARE $Value Int32
SET     $Value = 5

SELECT
	DateTime::GetMinute(t.DateTimeValue + DateTime::IntervalFromMinutes($Value)) as Minute_1
FROM
	LinqDataTypes t

