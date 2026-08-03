-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(DateTime::ToMicroseconds((t.DateTimeValue + DateTime::IntervalFromMinutes(Unwrap(CAST(Double('100') AS Int32)))) - t.DateTimeValue) * 10 AS Int64)) AS Double)) / Double('10000000') as c1
FROM
	LinqDataTypes t

