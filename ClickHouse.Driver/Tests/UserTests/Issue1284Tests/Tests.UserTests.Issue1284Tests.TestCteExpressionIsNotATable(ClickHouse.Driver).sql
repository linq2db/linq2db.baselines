-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		person_1.PersonID as entry_ID,
		person_1.FirstName as entry_FirstName,
		person_1.LastName as entry_LastName,
		person_1.MiddleName as entry_MiddleName,
		person_1.Gender as entry_Gender
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
	(
		SELECT
			t1.entry_ID as ID,
			t1.entry_FirstName as FirstName,
			t1.entry_LastName as LastName,
			t1.entry_MiddleName as MiddleName,
			t1.entry_Gender as Gender
		FROM
			CTE_1 t1
	) x
WHERE
	x.ID = 1

-- ClickHouse.Driver ClickHouse

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

