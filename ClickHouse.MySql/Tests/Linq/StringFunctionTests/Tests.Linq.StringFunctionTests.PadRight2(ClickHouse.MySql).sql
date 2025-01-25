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
	concat(rightPadUTF8(p.FirstName, toUInt32(6), '*'), '123') = 'John**123' AND
	p.PersonID = 1

