-- YDB Ydb
DECLARE $Second Int32
SET     $Second = -35

SELECT
	DateTime::GetSecond(t.DateTimeValue + DateTime::IntervalFromSeconds($Second)) as Second_1
FROM
	LinqDataTypes t

