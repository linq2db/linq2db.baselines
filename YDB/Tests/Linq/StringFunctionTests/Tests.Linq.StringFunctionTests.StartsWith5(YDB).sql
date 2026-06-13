-- YDB Ydb

SELECT
	p1.FirstName as FirstName,
	p1.PersonID as ID,
	p1.LastName as LastName,
	p1.MiddleName as MiddleName,
	p1.Gender as Gender
FROM
	Person p1
		CROSS JOIN Person p2
WHERE
	p1.PersonID = p2.PersonID AND Unicode::ReplaceAll(p1.FirstName, 'J'u, '%'u) LIKE (Unicode::ReplaceAll(Unicode::ReplaceAll(Unicode::ReplaceAll(Unicode::ReplaceAll(p2.FirstName, 'J'u, '%'u), '~'s, '~~'u), '%'u, '~%'u), '_'u, '~_'u) || '%'u) ESCAPE '~'s

