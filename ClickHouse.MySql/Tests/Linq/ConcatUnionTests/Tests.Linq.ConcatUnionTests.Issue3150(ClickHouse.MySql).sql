-- ClickHouse.MySql ClickHouse

SELECT
	p.PersonID as ID,
	p.FirstName,
	toString('id=1') as Marker
FROM
	Person p
WHERE
	p.PersonID = 1
UNION ALL
SELECT
	p_1.PersonID as ID,
	p_1.FirstName as FirstName,
	toString('id=2') as Marker
FROM
	Person p_1
WHERE
	p_1.PersonID = 2

