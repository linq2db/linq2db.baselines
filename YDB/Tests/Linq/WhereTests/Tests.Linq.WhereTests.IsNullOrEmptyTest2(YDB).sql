-- YDB Ydb

SELECT
	nm.FirstName as FirstName
FROM
	Person nm
WHERE
	Unwrap(CAST(Unicode::GetLength(nm.FirstName) AS Int32)) <> 0

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

