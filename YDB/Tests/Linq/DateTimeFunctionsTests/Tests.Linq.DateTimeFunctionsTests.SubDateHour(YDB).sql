-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(DateTime::ToMicroseconds((t.DateTimeValue + DateTime::IntervalFromHours(Unwrap(CAST(Double('100') AS Int32)))) - t.DateTimeValue) * 10 AS Int64)) AS Double)) / Double('36000000000') as c1
FROM
	LinqDataTypes t

