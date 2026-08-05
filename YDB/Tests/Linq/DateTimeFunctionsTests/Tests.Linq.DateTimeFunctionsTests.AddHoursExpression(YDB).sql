-- YDB Ydb
DECLARE $Hour Int32
SET     $Hour = 22

SELECT
	DateTime::GetHour(t.DateTimeValue + DateTime::IntervalFromHours($Hour)) as c1
FROM
	LinqDataTypes t

