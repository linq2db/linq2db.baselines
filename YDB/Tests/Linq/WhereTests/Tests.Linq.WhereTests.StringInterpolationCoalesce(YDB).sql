-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.LastName as LastName,
	t1.FullName as FullName
FROM
	(
		SELECT
			p.FirstName as FirstName,
			p.LastName || ', 'u || p.FirstName as LastName,
			p.LastName || ', 'u || p.FirstName || ' ('u || Coalesce(p.MiddleName, ''u) || ' + 'u || Coalesce(p.MiddleName, ''u) || ')'u as FullName
		FROM
			Person p
	) t1
WHERE
	t1.FirstName <> ''u OR t1.LastName <> ''u OR t1.FullName <> ''u
ORDER BY
	t1.FirstName,
	t1.LastName

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

