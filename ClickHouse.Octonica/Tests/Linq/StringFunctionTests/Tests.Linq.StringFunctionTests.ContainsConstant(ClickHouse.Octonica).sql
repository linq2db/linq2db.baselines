-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	position(p.FirstName, 'jOh') > 0 AND p.PersonID = 1

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	position(p.FirstName, 'jOh') <= 0 AND p.PersonID = 1

