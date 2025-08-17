BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	concat('123', leftPadUTF8(p.FirstName, toUInt32(6), ' ')) = '123  John' AND
	p.PersonID = 1

