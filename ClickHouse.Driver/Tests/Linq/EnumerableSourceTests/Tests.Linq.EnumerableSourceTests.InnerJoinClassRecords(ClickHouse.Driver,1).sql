-- ClickHouse.Driver ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
		INNER JOIN VALUES('ID Nullable(Int32)', (1), (2)) n ON p.PersonID = n.ID

