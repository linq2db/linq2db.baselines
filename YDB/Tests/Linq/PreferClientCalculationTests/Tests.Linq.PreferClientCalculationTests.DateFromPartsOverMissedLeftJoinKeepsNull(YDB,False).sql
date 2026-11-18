-- YDB Ydb
SELECT
	e.`Date` as Date_1,
	DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll(CAST(j.Value1 AS Text) || '-'u || Unicode::Substring(CAST(j.Value1 + 100 AS Text), 1, 2) || '-'u || Unicode::Substring(CAST(j.Value1 + 100 AS Text), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u)) as c1,
	DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll(CAST(j.Value1 AS Text) || '-'u || Unicode::Substring(CAST(j.Value1 + 100 AS Text), 1, 2) || '-'u || Unicode::Substring(CAST(j.Value1 + 100 AS Text), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u)) as c2,
	DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll(Unwrap(CAST(DateTime::GetYear(e.`Date`) AS Text)) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(Coalesce(j.Value1, 0) + 100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u)) as c3
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

