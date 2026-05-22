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
			'Name Nullable(String)',
			('Janet'), ('Doe')
		) n ON p.LastName = n.Name

