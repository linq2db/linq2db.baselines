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
	Unicode::Substring(p.FirstName, 2 - 1, 2) = Unicode::Substring('Joh'u, 2 - 1, 2) AND
	p.PersonID = 1

