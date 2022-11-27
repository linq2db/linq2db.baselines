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
	rightUTF8(p.FirstName, toInt32(3)) = 'ohn' AND p.PersonID = toInt32(1)

