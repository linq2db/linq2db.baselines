-- YDB Ydb

SELECT
	DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll(Unwrap(CAST(DateTime::GetYear(p.DateTimeValue) AS Text)) || '-01-01 00:00:00'u, ' 'u, 'T'u) || 'Z'u)) as Day_1
FROM
	LinqDataTypes p
WHERE
	DateTime::GetDayOfMonth(DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll(Unwrap(CAST(DateTime::GetYear(p.DateTimeValue) AS Text)) || '-01-01 00:00:00'u, ' 'u, 'T'u) || 'Z'u))) > 0

