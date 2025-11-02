-- ClickHouse.Octonica ClickHouse

SELECT
	p.FirstName,
	p.LastName
FROM
	Person p
UNION ALL
SELECT
	p_1.FirstName as FirstName,
	p_1.LastName as LastName
FROM
	Person p_1
UNION ALL
SELECT
	p_2.FirstName as FirstName,
	p_2.LastName as LastName
FROM
	Person p_2
UNION ALL
SELECT
	p_3.FirstName as FirstName,
	p_3.LastName as LastName
FROM
	Person p_3
UNION ALL
SELECT
	p_4.FirstName as FirstName,
	p_4.LastName as LastName
FROM
	Person p_4
UNION ALL
SELECT
	p_5.FirstName as FirstName,
	p_5.LastName as LastName
FROM
	Person p_5

