-- YDB Ydb

SELECT
	Unwrap(CAST(t.DateTimeValue + DateTime::IntervalFromMilliseconds(Unwrap(CAST(Double('2023456789') AS Int64))) - t.DateTimeValue AS Int64)) / 1000l as c1
FROM
	LinqDataTypes t

