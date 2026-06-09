-- YDB Ydb

SELECT
	DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll(Unwrap(CAST(DateTime::GetYear(t.DateTimeValue) AS Text)) || '-'u || Unicode::Substring(Unwrap(CAST(110 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u)) as c1
FROM
	LinqDataTypes t

