BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.PersonID,
	p.FirstName,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = 1
LIMIT 2

