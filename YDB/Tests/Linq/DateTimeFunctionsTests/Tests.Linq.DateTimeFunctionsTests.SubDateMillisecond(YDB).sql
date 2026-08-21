-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST((t.DateTimeValue + DateTime::IntervalFromMilliseconds(Unwrap(CAST(Double('2023456789') AS Int64)))) - t.DateTimeValue AS Int64)) * 10l AS Double)) / Double('10000') as c1
FROM
	LinqDataTypes t

