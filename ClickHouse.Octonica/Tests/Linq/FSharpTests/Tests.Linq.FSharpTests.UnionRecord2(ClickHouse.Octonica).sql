BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.PersonID as ID,
	p.FirstName as id_1,
	p.LastName as Id_2,
	p.MiddleName as iD_3
FROM
	Person p
WHERE
	p.PersonID = 1
UNION DISTINCT
SELECT
	p_1.PersonID as ID,
	p_1.FirstName as id_1,
	p_1.LastName as Id_2,
	p_1.MiddleName as iD_3
FROM
	Person p_1
WHERE
	p_1.PersonID = 1

