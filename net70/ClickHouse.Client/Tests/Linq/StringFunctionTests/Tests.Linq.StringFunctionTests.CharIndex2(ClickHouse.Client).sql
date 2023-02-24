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
	positionUTF8(p.LastName, 'p', toUInt32(toInt32(2))) = toInt32(3) AND
	p.PersonID = toInt32(1)

