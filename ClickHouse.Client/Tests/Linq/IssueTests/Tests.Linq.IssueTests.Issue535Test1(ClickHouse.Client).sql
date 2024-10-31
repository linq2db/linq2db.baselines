BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.PersonID,
	p.FirstName,
	p.LastName
FROM
	Person p
WHERE
	startsWith(p.FirstName, 'J') = true AND (p.PersonID = 1 OR p.LastName = 'fail')
LIMIT 1

