BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	concat(p.FirstName, leftPadUTF8('', toUInt32((p.PersonID + 1)), ' '), '123') = 'John  123' AND
	p.PersonID = 1

