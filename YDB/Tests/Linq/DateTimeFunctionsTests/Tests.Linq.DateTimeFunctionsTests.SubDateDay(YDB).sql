-- YDB Ydb

SELECT
	Unwrap(CAST(Unwrap(CAST(t.DateTimeValue + DateTime::IntervalFromHours(Unwrap(CAST(Double('100') AS Int32))) - t.DateTimeValue AS Int64)) / 86400000000l AS Double)) as c1
FROM
	LinqDataTypes t

