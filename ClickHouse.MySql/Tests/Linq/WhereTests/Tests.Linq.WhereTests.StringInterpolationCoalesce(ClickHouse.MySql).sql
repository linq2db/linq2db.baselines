-- ClickHouse.MySql ClickHouse

SELECT
	t1.FirstName,
	t1.LastName,
	t1.FullName
FROM
	(
		SELECT
			p.FirstName as FirstName,
			concat(p.LastName, ', ', p.FirstName) as LastName,
			concat(p.LastName, ', ', p.FirstName, ' (', Coalesce(p.MiddleName, ''), ' + ', Coalesce(p.MiddleName, ''), ')') as FullName
		FROM
			Person p
	) t1
WHERE
	t1.FirstName <> '' OR t1.LastName <> '' OR t1.FullName <> ''
ORDER BY
	t1.FirstName,
	t1.LastName

-- ClickHouse.MySql ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

