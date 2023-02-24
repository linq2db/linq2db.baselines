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
	concat(p.FirstName, leftPadUTF8('', toUInt32((p.PersonID + toInt32(1))), ' '), '123') = 'John  123' AND
	p.PersonID = toInt32(1)

