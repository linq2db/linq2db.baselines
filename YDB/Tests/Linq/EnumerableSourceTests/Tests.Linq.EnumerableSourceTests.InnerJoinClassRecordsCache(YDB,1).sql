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
			(2), (3)
		) n(ID) ON p.PersonID = n.ID

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
			(4), (5)
		) n(ID) ON p.PersonID = n.ID

