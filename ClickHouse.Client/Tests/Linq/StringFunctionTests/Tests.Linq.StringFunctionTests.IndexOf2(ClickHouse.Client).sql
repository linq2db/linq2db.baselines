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
	positionUTF8(p.LastName, 'e', toUInt32(3)) - 1 = 4 AND
	p.PersonID = 2

