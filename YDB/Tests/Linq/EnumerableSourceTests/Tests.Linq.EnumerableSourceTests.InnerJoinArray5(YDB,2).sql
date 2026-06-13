-- YDB Ydb

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	(VALUES
		('Janet'u), ('Doe'u), ('John'u), ('Doe'u)
	) n(item)
		INNER JOIN Person p ON n.item = p.LastName

