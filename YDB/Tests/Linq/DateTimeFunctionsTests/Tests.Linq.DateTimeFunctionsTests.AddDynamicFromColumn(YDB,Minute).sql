-- YDB Ydb

SELECT
	t.DateTimeValue + DateTime::IntervalFromMinutes(t.SmallIntValue) as c1
FROM
	LinqDataTypes t

