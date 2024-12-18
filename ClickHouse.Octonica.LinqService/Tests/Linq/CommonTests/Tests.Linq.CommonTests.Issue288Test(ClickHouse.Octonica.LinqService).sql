BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName IS NULL
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName = 'John' AND p.FirstName IS NOT NULL
LIMIT 1

