BeforeExecute
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
	lowerUTF8(Substring(p.FirstName, 2, 2)) = 'oh' AND
	p.PersonID = 1

