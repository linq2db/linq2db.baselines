-- YDB Ydb
DECLARE $month Int32
SET     $month = 1

SELECT
	DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll(Unwrap(CAST(2010 + t.ID AS Text)) || '-'u || Unicode::Substring(Unwrap(CAST($month + 100 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u)) as c1
FROM
	LinqDataTypes t

