-- ClickHouse.MySql ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	lowerUTF8(Substring(p.FirstName, 2, 2)) = lowerUTF8(Substring('Joh', 2, 2)) AND
	p.PersonID = 1

