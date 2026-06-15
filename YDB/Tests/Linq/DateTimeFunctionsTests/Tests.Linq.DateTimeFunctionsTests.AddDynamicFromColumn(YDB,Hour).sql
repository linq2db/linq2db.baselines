-- YDB Ydb

SELECT
	t.DateTimeValue + DateTime::IntervalFromHours(t.SmallIntValue) as c1
FROM
	LinqDataTypes t

