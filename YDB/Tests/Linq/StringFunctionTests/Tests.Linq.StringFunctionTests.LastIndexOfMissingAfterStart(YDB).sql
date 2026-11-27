-- YDB Ydb
SELECT
	CASE
		WHEN IF(p.FirstName IS NULL OR 'x'u IS NULL OR 2 IS NULL, NULL, Coalesce(CAST(Unicode::Find(p.FirstName, Coalesce('x'u, ''u), 2 - 1) AS Int32) + 1, 0)) = 0
			THEN -1
		ELSE Unwrap(CAST(Unicode::GetLength(p.FirstName) AS Int32)) - IF(Unicode::Reverse(Unicode::Substring(p.FirstName, 2 - 1, (Unwrap(CAST(Unicode::GetLength(p.FirstName) AS Int32)) - 1))) IS NULL OR 'x'u IS NULL, NULL, Coalesce(CAST(Unicode::Find(Unicode::Reverse(Unicode::Substring(p.FirstName, 2 - 1, (Unwrap(CAST(Unicode::GetLength(p.FirstName) AS Int32)) - 1))), Coalesce('x'u, ''u)) AS Int32) + 1, 0))
	END as c1
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

