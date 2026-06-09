-- YDB Ydb

SELECT
	DateTime::GetHour(t.DateTimeValue + DateTime::IntervalFromHours(Unwrap(CAST(Double('22') AS Int32)))) as c1
FROM
	LinqDataTypes t

