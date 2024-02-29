BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.LastName
FROM
	Person p
WHERE
	p.PersonID = toInt32(1)
LIMIT toInt32(2)

