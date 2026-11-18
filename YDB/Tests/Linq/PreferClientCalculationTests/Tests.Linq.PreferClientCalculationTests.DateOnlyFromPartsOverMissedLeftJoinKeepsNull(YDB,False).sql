-- YDB Ydb
SELECT
	CAST(CAST(j.Value1 AS Text) || '-'u || Unicode::Substring(CAST(j.Value1 + 100 AS Text), 1, 2) || '-'u || Unicode::Substring(CAST(j.Value1 + 100 AS Text), 1, 2) AS Date) as c1,
	CAST(CAST(j.Value1 AS Text) || '-'u || Unicode::Substring(CAST(j.Value1 + 100 AS Text), 1, 2) || '-'u || Unicode::Substring(CAST(j.Value1 + 100 AS Text), 1, 2) AS Date) as c2
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

