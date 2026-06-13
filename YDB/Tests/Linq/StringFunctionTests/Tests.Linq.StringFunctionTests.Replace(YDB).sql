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
	Unicode::ReplaceAll(p.FirstName, 'hn'u, 'lie'u) = 'Jolie'u AND
	p.PersonID = 1

