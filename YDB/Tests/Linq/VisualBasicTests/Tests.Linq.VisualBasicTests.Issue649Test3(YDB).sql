-- YDB Ydb

SELECT
	a_Person.personid as personid,
	a_Person.personname as personname,
	MAX(f.added) as LastAdded
FROM
	activity649 f
		INNER JOIN person649 a_Person ON f.personid = a_Person.personid
WHERE
	f.added >= DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll('2017-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u))
GROUP BY
	a_Person.personid,
	a_Person.personname

