BeforeExecute
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

