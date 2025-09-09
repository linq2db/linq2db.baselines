BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	lowerUTF8(p.FirstName) > 'joh' AND p.PersonID = 1

