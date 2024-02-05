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
	concat('123', leftPadUTF8(p.FirstName, toUInt32(toInt32(6)), '*')) = '123**John' AND
	p.PersonID = toInt32(1)

