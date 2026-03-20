-- ClickHouse.Driver ClickHouse

SELECT
	p.PersonID as Item1,
	p.FirstName as Item2
FROM
	Person p
WHERE
	p.PersonID = 1
UNION ALL
SELECT
	p_1.PersonID as Item1,
	p_1.FirstName as Item2
FROM
	Person p_1
WHERE
	p_1.PersonID = 1

