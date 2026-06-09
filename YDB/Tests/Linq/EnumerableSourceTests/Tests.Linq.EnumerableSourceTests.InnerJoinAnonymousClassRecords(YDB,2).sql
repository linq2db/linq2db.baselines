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
			('Janet'u), ('Doe'u)
		) n(Name) ON p.LastName = n.Name

