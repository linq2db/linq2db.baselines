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
	positionUTF8(p.FirstName, 'oh') = toInt32(2) AND p.PersonID = toInt32(1)

