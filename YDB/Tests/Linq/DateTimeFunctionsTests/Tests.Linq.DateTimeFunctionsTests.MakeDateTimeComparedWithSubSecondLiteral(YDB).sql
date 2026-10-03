-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	LinqDataTypes t1

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	LinqDataTypes p
WHERE
	DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll('2010-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(110 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(p.ID % 1 + 100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u)) < Timestamp('2010-01-01T10:00:00.500000Z')

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	LinqDataTypes p
WHERE
	DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll('2010-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(110 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(p.ID % 1 + 100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u)) >= Timestamp('2010-01-01T10:00:00.500000Z')

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	LinqDataTypes p
WHERE
	DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll('2010-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(110 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(p.ID % 1 + 100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u)) = Timestamp('2010-01-01T10:00:00.500000Z')

