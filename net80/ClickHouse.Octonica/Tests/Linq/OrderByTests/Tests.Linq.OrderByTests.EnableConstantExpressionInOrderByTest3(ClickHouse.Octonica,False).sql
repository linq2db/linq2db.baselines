BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.PersonID,
	p.Gender,
	p.FirstName,
	p.MiddleName,
	p.LastName
FROM
	Person p
WHERE
	p.PersonID IN (toInt32(1), toInt32(3))
ORDER BY
	p.LastName

