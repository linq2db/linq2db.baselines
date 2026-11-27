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
	positionUTF8(leftUTF8(p.LastName, 7), 'e', toUInt32(3)) - 1 = 4 AND
	p.PersonID = 2

