BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.PersonID,
	p.FirstName,
	p.LastName
FROM
	Person p
WHERE
	startsWith(p.FirstName, 'J') AND (p.PersonID = toInt32(1) OR p.LastName = 'fail')
LIMIT toInt32(1)

