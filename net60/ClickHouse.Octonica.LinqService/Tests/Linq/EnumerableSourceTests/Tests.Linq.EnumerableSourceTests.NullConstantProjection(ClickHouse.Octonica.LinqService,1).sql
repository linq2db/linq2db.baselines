BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.PersonID,
	p.FirstName,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
ORDER BY
	p.PersonID

