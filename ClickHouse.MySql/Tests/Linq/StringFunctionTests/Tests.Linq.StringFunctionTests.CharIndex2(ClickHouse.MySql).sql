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
	positionUTF8(p.LastName, 'p', toUInt32(2)) = 3 AND
	p.PersonID = 1

