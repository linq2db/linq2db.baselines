-- YDB Ydb

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	'John123'u LIKE (Unicode::ReplaceAll(Unicode::ReplaceAll(Unicode::ReplaceAll(p.FirstName, '~'s, '~~'u), '%'u, '~%'u), '_'u, '~_'u) || '%'u) ESCAPE '~'s

