-- YDB Ydb
DECLARE $p Int32
SET     $p = 226

SELECT
	t.DateTimeValue + DateTime::IntervalFromMilliseconds($p) as c1
FROM
	LinqDataTypes t

-- YDB Ydb

SELECT
	t.DateTimeValue as DateTimeValue
FROM
	LinqDataTypes t

