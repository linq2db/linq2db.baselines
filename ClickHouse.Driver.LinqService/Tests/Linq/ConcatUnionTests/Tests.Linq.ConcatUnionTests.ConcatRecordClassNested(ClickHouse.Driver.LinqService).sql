BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p.PersonID as Id,
	p.FirstName,
	p.LastName
FROM
	Person p
UNION ALL
SELECT
	p_1.PersonID as Id,
	p_1.LastName as FirstName,
	p_1.FirstName as LastName
FROM
	Person p_1

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

