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
	IF(p.LastName IS NULL OR 'e'u IS NULL OR 3 IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.LastName, Coalesce('e'u, ''u), 3 - 1) AS Int32) + 1, 0)) = 5 AND
	p.PersonID = 2

