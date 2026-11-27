-- YDB Ydb
SELECT
	IF(p.FirstName IS NULL OR 'x'u IS NULL OR 2 IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.FirstName, Coalesce('x'u, ''u), 2 - 1) AS Int32) + 1, 0)) - 1 as c1
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

-- YDB Ydb
SELECT
	IF(p.FirstName IS NULL OR 'x'u IS NULL OR 2 IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.FirstName, Coalesce('x'u, ''u), 2 - 1) AS Int32) + 1, 0)) - 1 as c1
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

-- YDB Ydb
SELECT
	IF(p.FirstName IS NULL OR 'x'u IS NULL OR (Unwrap(CAST(Unicode::GetLength(p.FirstName) AS Int32)) + 1) IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.FirstName, Coalesce('x'u, ''u), (Unwrap(CAST(Unicode::GetLength(p.FirstName) AS Int32)) + 1) - 1) AS Int32) + 1, 0)) - 1 as c1
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

