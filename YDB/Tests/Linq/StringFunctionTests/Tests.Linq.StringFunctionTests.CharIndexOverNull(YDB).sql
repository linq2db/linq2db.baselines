-- YDB Ydb
SELECT
	IF(p.MiddleName IS NULL OR 'o'u IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.MiddleName, Coalesce('o'u, ''u)) AS Int32) + 1, 0)) as c1
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
	IF(p.FirstName IS NULL OR p.MiddleName IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.FirstName, Coalesce(p.MiddleName, ''u)) AS Int32) + 1, 0)) as c1
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
	IF(p.FirstName IS NULL OR CASE
		WHEN p.MiddleName IS NULL THEN NULL
		ELSE 'o'u
	END IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.FirstName, Coalesce(CASE
		WHEN p.MiddleName IS NULL THEN NULL
		ELSE 'o'u
	END, ''u)) AS Int32) + 1, 0)) as c1
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
	p.PersonID as PersonID
FROM
	Person p
WHERE
	IF(p.MiddleName IS NULL OR 'o'u IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.MiddleName, Coalesce('o'u, ''u)) AS Int32) + 1, 0)) = 0
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

