BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.PersonID,
	Coalesce(p.MiddleName, p.FirstName),
	p.LastName,
	Coalesce(p.MiddleName, p.MiddleName, 'None')
FROM
	Person p
WHERE
	p.PersonID = 1

