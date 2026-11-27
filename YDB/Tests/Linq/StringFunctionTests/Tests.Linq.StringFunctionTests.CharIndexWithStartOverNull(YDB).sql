-- YDB Ydb
SELECT
	IF(p.MiddleName IS NULL OR 'o'u IS NULL OR 2 IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.MiddleName, Coalesce('o'u, ''u), 2 - 1) AS Int32) + 1, 0)) as c1
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
	IF(p.FirstName IS NULL OR p.MiddleName IS NULL OR 2 IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.FirstName, Coalesce(p.MiddleName, ''u), 2 - 1) AS Int32) + 1, 0)) as c1
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
	END IS NULL OR 2 IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.FirstName, Coalesce(CASE
		WHEN p.MiddleName IS NULL THEN NULL
		ELSE 'o'u
	END, ''u), 2 - 1) AS Int32) + 1, 0)) as c1
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
	IF(p.FirstName IS NULL OR 'o'u IS NULL OR CASE
		WHEN p.MiddleName IS NULL THEN NULL
		ELSE 1
	END IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.FirstName, Coalesce('o'u, ''u), CASE
		WHEN p.MiddleName IS NULL THEN NULL
		ELSE 1
	END - 1) AS Int32) + 1, 0)) as c1
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
	p.MiddleName IS NULL
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
DECLARE start Int32
SET     start = 1

SELECT
	IF(p.FirstName IS NULL OR 'o'u IS NULL OR $start IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.FirstName, Coalesce('o'u, ''u), $start - 1) AS Int32) + 1, 0)) as c1
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
DECLARE nullValuedStart Int32
SET     nullValuedStart = NULL

SELECT
	IF(p.FirstName IS NULL OR 'o'u IS NULL OR $nullValuedStart IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.FirstName, Coalesce('o'u, ''u), $nullValuedStart - 1) AS Int32) + 1, 0)) as c1
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

