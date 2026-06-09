-- YDB Ydb

SELECT
	DateTime::IntervalFromSeconds(Unwrap(CAST(ListHead(Unicode::SplitToList(Unwrap(CAST(DateTime::GetHour(t.DateTimeValue) AS Text)) || ':01:01'u, ':'u)) AS Int32)) * 3600 + Unwrap(CAST(ListHead(ListSkip(Unicode::SplitToList(Unwrap(CAST(DateTime::GetHour(t.DateTimeValue) AS Text)) || ':01:01'u, ':'u), 1)) AS Int32)) * 60 + Unwrap(CAST(ListHead(ListSkip(Unicode::SplitToList(Unwrap(CAST(DateTime::GetHour(t.DateTimeValue) AS Text)) || ':01:01'u, ':'u), 2)) AS Int32))) as c1
FROM
	LinqDataTypes t

