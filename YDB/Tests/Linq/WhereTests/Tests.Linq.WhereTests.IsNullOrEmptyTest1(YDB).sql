-- YDB Ydb

SELECT
	nm.MiddleName as MiddleName
FROM
	Person nm
WHERE
	NOT (nm.MiddleName IS NULL OR CAST(Unicode::GetLength(nm.MiddleName) AS Int32) = 0)

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

