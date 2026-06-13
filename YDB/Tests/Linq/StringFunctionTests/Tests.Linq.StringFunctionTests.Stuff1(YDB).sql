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
	(Unicode::Substring(p.FirstName, 0, 3 - 1) || '123'u || Unicode::Substring(p.FirstName, 3 + 1 - 1)) = 'Jo123n'u AND
	p.PersonID = 1

