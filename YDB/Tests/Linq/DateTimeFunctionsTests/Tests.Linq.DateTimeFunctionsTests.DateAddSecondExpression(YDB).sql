-- YDB Ydb
DECLARE $Value Int32
SET     $Value = 41

SELECT
	DateTime::GetSecond(t.DateTimeValue + DateTime::IntervalFromSeconds($Value)) as Second_1
FROM
	LinqDataTypes t

