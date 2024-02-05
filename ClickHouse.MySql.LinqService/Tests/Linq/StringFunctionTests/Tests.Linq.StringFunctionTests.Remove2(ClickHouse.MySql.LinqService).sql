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
	concat(substringUTF8(p.FirstName, 1, toInt32(2) - 1), '', substringUTF8(p.FirstName, toInt32(2) + toInt32(2))) = 'Jn' AND
	p.PersonID = toInt32(1)

