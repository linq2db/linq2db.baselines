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
	p.FirstName <> 'Jo' AND p.PersonID = 1

