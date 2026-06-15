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
	(Unicode::Substring(p.FirstName, 0, 2 - 1) || ''u || Unicode::Substring(p.FirstName, 2 + 2 - 1)) = 'Jn'u AND
	p.PersonID = 1

