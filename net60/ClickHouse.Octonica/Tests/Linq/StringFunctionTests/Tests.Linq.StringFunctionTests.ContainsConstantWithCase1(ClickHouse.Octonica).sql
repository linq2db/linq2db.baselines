BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	(position(p.FirstName, 'Joh') <= toInt32(0)) AND p.PersonID = toInt32(1)

