-- YDB Ydb
DECLARE $Minute Int32
SET     $Minute = -8

SELECT
	DateTime::GetMinute(t.DateTimeValue + DateTime::IntervalFromMinutes($Minute)) as Minute_1
FROM
	LinqDataTypes t

