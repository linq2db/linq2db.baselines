-- YDB Ydb

SELECT
	p.PersonID as PersonID,
	p.FirstName as FirstName,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.PersonID = 1 AND p.Gender = 'M'u

