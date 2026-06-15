-- YDB Ydb

SELECT
	DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll(Unwrap(CAST(DateTime::GetYear(d.DateTimeValue) AS Text)) || '-02-24 00:00:00'u, ' 'u, 'T'u) || 'Z'u)) as Day_1
FROM
	LinqDataTypes d
WHERE
	DateTime::GetDayOfMonth(DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll(Unwrap(CAST(DateTime::GetYear(d.DateTimeValue) AS Text)) || '-02-24 00:00:00'u, ' 'u, 'T'u) || 'Z'u))) > 0

