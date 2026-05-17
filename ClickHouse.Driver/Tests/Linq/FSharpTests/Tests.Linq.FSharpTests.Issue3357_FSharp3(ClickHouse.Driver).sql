-- ClickHouse.Driver ClickHouse

SELECT
	p.PersonID as Id,
	p.FirstName as Name
FROM
	Person p
WHERE
	p.PersonID = 1
UNION ALL
SELECT
	p_1.PersonID as Id,
	p_1.FirstName as Name
FROM
	Person p_1
WHERE
	p_1.PersonID = 1

