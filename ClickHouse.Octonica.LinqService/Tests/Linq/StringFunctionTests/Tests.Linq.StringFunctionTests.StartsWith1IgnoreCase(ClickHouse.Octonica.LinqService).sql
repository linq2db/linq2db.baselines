BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	startsWith(lowerUTF8(p.FirstName), 'joh') = true AND
	p.PersonID = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	startsWith(lowerUTF8(p.FirstName), 'joh') = false AND
	p.PersonID = 1

