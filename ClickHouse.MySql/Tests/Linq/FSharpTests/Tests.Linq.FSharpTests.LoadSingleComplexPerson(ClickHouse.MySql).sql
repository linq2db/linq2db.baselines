-- ClickHouse.MySql ClickHouse

SELECT
	p.PersonID,
	p.FirstName,
	p.MiddleName,
	p.LastName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = 1
LIMIT 2

