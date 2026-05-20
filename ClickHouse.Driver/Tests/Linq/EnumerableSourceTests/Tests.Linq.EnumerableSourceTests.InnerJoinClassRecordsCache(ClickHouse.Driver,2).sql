-- ClickHouse.Driver ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
		INNER JOIN VALUES('ID Nullable(Int32)', (3), (4)) n ON p.PersonID = n.ID

-- ClickHouse.Driver ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
		INNER JOIN VALUES('ID Nullable(Int32)', (5), (6)) n ON p.PersonID = n.ID

