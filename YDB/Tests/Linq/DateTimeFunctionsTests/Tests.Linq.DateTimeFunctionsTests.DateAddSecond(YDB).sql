-- YDB Ydb

SELECT
	DateTime::GetSecond(t.DateTimeValue + DateTime::IntervalFromSeconds(41)) as Second_1
FROM
	LinqDataTypes t

