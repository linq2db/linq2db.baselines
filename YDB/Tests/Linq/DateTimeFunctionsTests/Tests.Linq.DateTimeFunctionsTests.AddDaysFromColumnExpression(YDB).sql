-- YDB Ydb

SELECT
	t.DateTimeValue + DateTime::IntervalFromDays(t.SmallIntValue) as c1
FROM
	LinqDataTypes t

