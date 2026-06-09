-- YDB Ydb

SELECT
	DateTime::MakeDatetime(DateTime::ParseIso8601(Unicode::ReplaceAll(Unwrap(CAST(DateTime::GetYear(t.DateTimeValue) AS Text)) || '-01-01 00:20:00'u, ' 'u, 'T'u) || 'Z'u)) as c1
FROM
	LinqDataTypes t

