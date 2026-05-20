-- ClickHouse.MySql ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	VALUES('item Nullable(String)', ('Janet'), ('Doe'), ('John'), ('Doe')) n
		INNER JOIN Person p ON n.item = p.LastName

