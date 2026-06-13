-- YDB Ydb

SELECT
	t.DateTimeValue + DateTime::IntervalFromSeconds(t.SmallIntValue) as c1
FROM
	LinqDataTypes t

