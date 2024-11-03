BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	p.PersonID = 1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	startsWith(p.FirstName, 'Joh') = true AND p.PersonID = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	(startsWith(p.FirstName, 'Joh') = false OR startsWith(p.FirstName, 'Joh') IS NULL) AND
	p.PersonID = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	startsWith(p.FirstName, 'JOH') = true AND p.PersonID = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	(startsWith(p.FirstName, 'JOH') = false OR startsWith(p.FirstName, 'JOH') IS NULL) AND
	p.PersonID = 1

