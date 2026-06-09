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
	p.PersonID = 1 AND Coalesce(p.MiddleName, 'None'u) = 'None'u AND
	p.FirstName = 'John'u

