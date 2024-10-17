BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	endsWith(p.FirstName, 'JOHN') = true AND p.PersonID = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	endsWith(p.FirstName, 'JOHN') = false AND p.PersonID = 1

