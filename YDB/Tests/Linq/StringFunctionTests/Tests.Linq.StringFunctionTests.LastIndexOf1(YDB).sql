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
	Unwrap(CAST(Unicode::GetLength(p.LastName) AS Int32)) - IF(Unicode::Reverse(p.LastName) IS NULL OR 'p'u IS NULL, NULL, Coalesce(CAST(Unicode::Find(Unicode::Reverse(p.LastName), Coalesce('p'u, ''u)) AS Int32) + 1, 0)) = 2 AND
	IF(p.LastName IS NULL OR 'p'u IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.LastName, Coalesce('p'u, ''u)) AS Int32) + 1, 0)) <> 0 AND
	p.PersonID = 1

