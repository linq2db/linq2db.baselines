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
	p.PersonID = 1 AND p.MiddleName IS NULL

