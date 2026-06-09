-- YDB Ydb

SELECT
	Unwrap(CAST(Unwrap(CAST(t.DateTimeValue + DateTime::IntervalFromMilliseconds(Unwrap(CAST(Double('2023456789') AS Int64))) - t.DateTimeValue AS Int64)) / 1000l AS Double)) as c1
FROM
	LinqDataTypes t

