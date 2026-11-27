-- YDB Ydb
SELECT
	IF(p.FirstName IS NULL OR 'J'u IS NULL OR 1 IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.FirstName, Coalesce('J'u, ''u), 1 - 1) AS Int32) + 1, 0)) as c1
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

