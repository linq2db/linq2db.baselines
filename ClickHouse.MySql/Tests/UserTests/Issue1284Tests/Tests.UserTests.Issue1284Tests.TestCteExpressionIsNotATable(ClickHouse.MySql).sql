-- ClickHouse.MySql ClickHouse

WITH CTE_1 AS
(
	SELECT
		person_1.PersonID as ID,
		person_1.FirstName as FirstName,
		person_1.LastName as LastName,
		person_1.MiddleName as MiddleName,
		person_1.Gender as Gender
	FROM
		Person person_1
)
SELECT
	x.FirstName,
	x.ID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	CTE_1 x
WHERE
	x.ID = 1

-- ClickHouse.MySql ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.PersonID = 1

