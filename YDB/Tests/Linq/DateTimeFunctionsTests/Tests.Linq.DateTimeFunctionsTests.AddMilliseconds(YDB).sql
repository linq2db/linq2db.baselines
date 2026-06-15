-- YDB Ydb

SELECT
	t.DateTimeValue + DateTime::IntervalFromMilliseconds(Unwrap(CAST(Double('226') AS Int64))) as c1
FROM
	LinqDataTypes t

-- YDB Ydb

SELECT
	t.DateTimeValue as DateTimeValue
FROM
	LinqDataTypes t

