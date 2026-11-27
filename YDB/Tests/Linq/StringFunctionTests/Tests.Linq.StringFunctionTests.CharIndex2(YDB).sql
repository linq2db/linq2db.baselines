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
	IF(p.LastName IS NULL OR 'p'u IS NULL OR 2 IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.LastName, Coalesce('p'u, ''u), 2 - 1) AS Int32) + 1, 0)) = 3 AND
	p.PersonID = 1

