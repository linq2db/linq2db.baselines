-- ClickHouse.Driver ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
		INNER JOIN VALUES(
			'item Nullable(String)',
			('Janet'), ('Doe'), ('John'), ('Doe')
		) n ON p.LastName = n.item

-- ClickHouse.Driver ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
		INNER JOIN VALUES(
			'item Nullable(String)',
			('Janet'), ('Doe'), ('John'), ('Doe1')
		) n ON p.LastName = n.item

