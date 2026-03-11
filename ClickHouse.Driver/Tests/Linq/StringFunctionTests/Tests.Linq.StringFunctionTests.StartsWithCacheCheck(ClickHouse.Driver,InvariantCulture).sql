-- ClickHouse.Driver ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	p.PersonID = 1
LIMIT 2

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	startsWith(p.FirstName, 'Joh') AND p.PersonID = 1

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	NOT startsWith(p.FirstName, 'Joh') AND p.PersonID = 1

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	startsWith(p.FirstName, 'JOH') AND p.PersonID = 1

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	NOT startsWith(p.FirstName, 'JOH') AND p.PersonID = 1

