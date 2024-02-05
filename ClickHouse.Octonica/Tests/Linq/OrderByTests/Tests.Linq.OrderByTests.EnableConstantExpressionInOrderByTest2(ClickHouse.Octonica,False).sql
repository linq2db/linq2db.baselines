BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.PersonID,
	p.LastName
FROM
	Person p
WHERE
	p.PersonID IN (toInt32(1), toInt32(3))
ORDER BY
	p.LastName DESC

