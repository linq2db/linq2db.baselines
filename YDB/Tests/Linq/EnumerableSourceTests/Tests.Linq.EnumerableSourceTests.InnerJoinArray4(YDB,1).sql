-- YDB Ydb

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
		INNER JOIN (VALUES
			('Janet'u), ('Doe'u), ('John'u), ('Doe'u)
		) n(item) ON p.LastName = n.item

-- YDB Ydb

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
		INNER JOIN (VALUES
			('Janet'u), ('Doe1'u), ('John'u), ('Doe'u)
		) n(item) ON p.LastName = n.item

