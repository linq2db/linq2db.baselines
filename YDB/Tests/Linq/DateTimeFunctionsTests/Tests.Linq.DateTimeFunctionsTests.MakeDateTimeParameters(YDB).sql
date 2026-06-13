-- YDB Ydb
DECLARE $year Int32
SET     $year = 2010

SELECT
	DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll(Unwrap(CAST($year AS Text)) || '-'u || Unicode::Substring(Unwrap(CAST(t.ID + 100 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u)) as c1
FROM
	LinqDataTypes t
WHERE
	DateTime::GetYear(DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll(Unwrap(CAST($year AS Text)) || '-'u || Unicode::Substring(Unwrap(CAST(t.ID + 100 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u))) = 2010

