-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	position(p.FirstName, 'o%h') > 0 AND p.PersonID = 1

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	position(p.FirstName, 'o%h') <= 0 AND p.PersonID = 1

