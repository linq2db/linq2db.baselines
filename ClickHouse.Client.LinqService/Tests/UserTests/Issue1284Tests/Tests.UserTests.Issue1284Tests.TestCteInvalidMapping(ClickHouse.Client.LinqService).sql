BeforeExecute
-- ClickHouse.Client ClickHouse

WITH CTE_1 AS
(
	SELECT
		x_1.FirstName as entry_FirstName,
		x_1.ID as entry_ID,
		x_1.LastName as entry_LastName,
		x_1.MiddleName as entry_MiddleName,
		x_1.Gender as entry_Gender,
		x_1.rn
	FROM
		(
			SELECT
				1 as rn,
				x.FirstName as FirstName,
				x.PersonID as ID,
				x.LastName as LastName,
				x.MiddleName as MiddleName,
				x.Gender as Gender
			FROM
				Person x
		) x_1
	WHERE
		x_1.rn = 1
)
SELECT
	t1.entry_FirstName,
	t1.entry_ID,
	t1.entry_LastName,
	t1.entry_MiddleName,
	t1.entry_Gender,
	t1.rn
FROM
	CTE_1 t1
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	person_1.FirstName,
	person_1.PersonID,
	person_1.LastName,
	person_1.MiddleName,
	person_1.Gender
FROM
	Person person_1
LIMIT 1

