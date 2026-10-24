-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST((t.DateTimeValue + DateTime::IntervalFromHours(Unwrap(CAST(Double('100') AS Int32)))) - t.DateTimeValue AS Int64)) * 10l AS Double)) / Double('864000000000') as c1
FROM
	LinqDataTypes t

