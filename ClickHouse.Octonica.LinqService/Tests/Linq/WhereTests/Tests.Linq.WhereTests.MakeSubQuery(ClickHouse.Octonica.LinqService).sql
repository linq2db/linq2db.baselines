BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.PersonID + toInt32(1),
	p.FirstName
FROM
	Person p
WHERE
	p.PersonID = toInt32(1)

