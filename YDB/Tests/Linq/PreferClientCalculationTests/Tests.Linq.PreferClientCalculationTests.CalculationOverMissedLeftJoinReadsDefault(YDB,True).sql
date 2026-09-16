-- YDB Ydb
SELECT
	e.Id as Id,
	j.Value1 as Value1,
	Abs(Coalesce(j.Value1, 0) - 1) as c1,
	j.`Date` as Date_1,
	DateTime::GetYear(j.`Date`) as Year_1,
	DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll('2000-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u)) as c2
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.`Date` as Date_1
FROM
	MissedJoinEntity t1

