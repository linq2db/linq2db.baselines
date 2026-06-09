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
	(p.FirstName = 'John'u OR p.FirstName = 'John\'s'u) AND
	p.PersonID > 0 AND
	p.PersonID < 2 AND
	p.LastName <> '123'u

