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
	startsWith(lowerUTF8(p.FirstName), 'joh') AND p.PersonID = 1

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	NOT startsWith(lowerUTF8(p.FirstName), 'joh') AND p.PersonID = 1

