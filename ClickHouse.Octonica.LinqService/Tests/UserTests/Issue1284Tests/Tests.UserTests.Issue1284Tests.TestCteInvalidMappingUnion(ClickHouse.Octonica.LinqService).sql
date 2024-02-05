BeforeExecute
-- ClickHouse.Octonica ClickHouse

WITH CTE_1 AS
(
	SELECT
		x.Gender as entry,
		x.rn,
		x.FirstName,
		x.ID,
		x.LastName,
		x.MiddleName
	FROM
		(
			SELECT
				person_1.FirstName,
				person_1.PersonID as ID,
				person_1.LastName,
				person_1.MiddleName,
				person_1.Gender,
				toInt32(1) as rn
			FROM
				Person person_1
			UNION ALL
			SELECT
				person_2.FirstName as FirstName,
				person_2.PersonID as ID,
				person_2.LastName as LastName,
				person_2.MiddleName as MiddleName,
				person_2.Gender as Gender,
				toInt32(2) as rn
			FROM
				Person person_2
		) x
	WHERE
		x.rn = toInt32(1)
)
SELECT
	t1.FirstName,
	t1.ID,
	t1.LastName,
	t1.MiddleName,
	t1.entry,
	t1.rn
FROM
	CTE_1 t1
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.FirstName,
	x.ID,
	x.LastName,
	x.MiddleName,
	x.Gender,
	x.rn
FROM
	(
		SELECT
			person_1.FirstName as FirstName,
			person_1.PersonID as ID,
			person_1.LastName as LastName,
			person_1.MiddleName as MiddleName,
			person_1.Gender as Gender,
			toInt32(1) as rn
		FROM
			Person person_1
		UNION ALL
		SELECT
			person_2.FirstName as FirstName,
			person_2.PersonID as ID,
			person_2.LastName as LastName,
			person_2.MiddleName as MiddleName,
			person_2.Gender as Gender,
			toInt32(2) as rn
		FROM
			Person person_2
	) x
WHERE
	x.rn = toInt32(1)
LIMIT toInt32(1)

