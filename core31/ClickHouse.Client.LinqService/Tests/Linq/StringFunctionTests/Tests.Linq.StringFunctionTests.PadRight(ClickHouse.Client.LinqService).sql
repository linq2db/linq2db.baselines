BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	concat(rightPadUTF8(p.FirstName, toUInt32(toInt32(6)), ' '), '123') = 'John  123' AND
	p.PersonID = toInt32(1)

