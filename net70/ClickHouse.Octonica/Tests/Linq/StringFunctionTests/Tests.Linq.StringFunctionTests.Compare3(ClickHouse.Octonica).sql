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
	Substring(p.FirstName, toInt32(2), toInt32(2)) = 'oh' AND
	p.PersonID = toInt32(1)

