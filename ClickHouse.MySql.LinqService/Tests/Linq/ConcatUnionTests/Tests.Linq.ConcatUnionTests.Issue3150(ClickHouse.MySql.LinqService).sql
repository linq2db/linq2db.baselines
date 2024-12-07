BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.PersonID,
	p.FirstName,
	toString('id=1') as c1
FROM
	Person p
WHERE
	p.PersonID = 1
UNION ALL
SELECT
	p_1.PersonID as PersonID,
	p_1.FirstName as FirstName,
	toString('id=2') as c1
FROM
	Person p_1
WHERE
	p_1.PersonID = 2

