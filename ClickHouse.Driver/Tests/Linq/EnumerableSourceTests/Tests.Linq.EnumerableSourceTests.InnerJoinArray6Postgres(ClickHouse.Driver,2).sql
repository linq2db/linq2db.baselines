-- ClickHouse.Driver ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
		INNER JOIN VALUES('item Nullable(String)', ('Doe')) n ON p.LastName = n.item

