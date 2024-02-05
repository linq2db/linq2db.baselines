BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	leftUTF8(p.FirstName, toInt32(2)) = 'Jo' AND p.PersonID = toInt32(1)

