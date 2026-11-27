-- YDB Ydb
SELECT
	a_Person.personid as personid,
	a_Person.personname as personname,
	MAX(f.added) as LastAdded
FROM
	vb_activity f
		INNER JOIN vb_activity_person a_Person ON f.personid = a_Person.personid
WHERE
	f.added >= DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll('2017-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u))
GROUP BY
	a_Person.personid,
	a_Person.personname

