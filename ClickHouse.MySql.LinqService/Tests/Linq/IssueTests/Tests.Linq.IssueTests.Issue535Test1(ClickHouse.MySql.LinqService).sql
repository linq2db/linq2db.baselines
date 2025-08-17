BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p.PersonID,
	p.FirstName,
	p.LastName
FROM
	Person p
WHERE
	startsWith(p.FirstName, 'J') AND (p.PersonID = 1 OR p.LastName = 'fail')
LIMIT 1

