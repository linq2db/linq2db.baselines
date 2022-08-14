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
	positionUTF8(p.LastName, 'e', toUInt32(toInt32(3))) = toInt32(5) AND
	p.PersonID = toInt32(2)

