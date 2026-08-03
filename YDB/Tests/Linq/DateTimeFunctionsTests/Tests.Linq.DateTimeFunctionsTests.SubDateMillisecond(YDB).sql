-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(DateTime::ToMicroseconds((t.DateTimeValue + DateTime::IntervalFromMilliseconds(Unwrap(CAST(Double('2023456789') AS Int64)))) - t.DateTimeValue) * 10 AS Int64)) AS Double)) / Double('10000') as c1
FROM
	LinqDataTypes t

