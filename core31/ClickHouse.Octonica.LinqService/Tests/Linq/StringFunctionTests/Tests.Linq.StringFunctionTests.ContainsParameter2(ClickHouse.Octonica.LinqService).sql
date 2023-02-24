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
	position(p.FirstName, 'o%h') <= toInt32(0) AND p.PersonID = toInt32(1)

