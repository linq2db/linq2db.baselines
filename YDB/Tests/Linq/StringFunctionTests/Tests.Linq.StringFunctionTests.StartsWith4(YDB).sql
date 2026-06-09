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
	p1.PersonID = p2.PersonID AND p1.FirstName LIKE Unicode::ReplaceAll(p2.FirstName, '%'u, '~%'u) ESCAPE '~'s

