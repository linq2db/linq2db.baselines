BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.FirstName,
	p.PersonID as ID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = 2
UNION ALL
SELECT
	p_1.FirstName as FirstName,
	p_1.PersonID as ID,
	p_1.LastName as LastName,
	p_1.MiddleName as MiddleName,
	p_1.Gender as Gender
FROM
	Person p_1
WHERE
	p_1.PersonID = 3

