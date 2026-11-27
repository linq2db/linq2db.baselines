-- YDB Ydb
SELECT
	p.FirstName as FirstName,
	p.PersonID as PersonID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	IF(p.FirstName IS NULL OR 'oh'u IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.FirstName, Coalesce('oh'u, ''u)) AS Int32) + 1, 0)) = 2 AND
	p.PersonID = 1

