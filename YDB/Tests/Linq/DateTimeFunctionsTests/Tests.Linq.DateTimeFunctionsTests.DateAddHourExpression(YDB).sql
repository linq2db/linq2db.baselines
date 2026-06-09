-- YDB Ydb
DECLARE $Value Int32
SET     $Value = 1

SELECT
	DateTime::GetHour(t.DateTimeValue + DateTime::IntervalFromHours($Value)) as c1
FROM
	LinqDataTypes t

