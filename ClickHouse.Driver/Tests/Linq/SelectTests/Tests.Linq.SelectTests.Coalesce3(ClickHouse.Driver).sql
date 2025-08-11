BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p.PersonID,
	p.MiddleName,
	p.FirstName,
	p.LastName
FROM
	Person p
WHERE
	p.PersonID = 1

