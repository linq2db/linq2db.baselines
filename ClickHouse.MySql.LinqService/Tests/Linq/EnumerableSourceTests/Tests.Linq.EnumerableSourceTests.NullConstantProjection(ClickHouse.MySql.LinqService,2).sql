BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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

