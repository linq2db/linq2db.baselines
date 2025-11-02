-- ClickHouse.MySql ClickHouse

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
				toInt32(1) as rn,
				x.FirstName as FirstName,
				x.PersonID as ID,
				x.LastName as LastName,
				x.MiddleName as MiddleName,
				x.Gender as Gender
			FROM
				Person x
			UNION ALL
			SELECT
				toInt32(2) as rn,
				person_1.FirstName as FirstName,
				person_1.PersonID as ID,
				person_1.LastName as LastName,
				person_1.MiddleName as MiddleName,
				person_1.Gender as Gender
			FROM
				Person person_1
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

-- ClickHouse.MySql ClickHouse

SELECT
	t1.FirstName,
	t1.ID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender,
	t1.rn
FROM
	(
		SELECT
			toInt32(1) as rn,
			x.FirstName as FirstName,
			x.PersonID as ID,
			x.LastName as LastName,
			x.MiddleName as MiddleName,
			x.Gender as Gender
		FROM
			Person x
		UNION ALL
		SELECT
			toInt32(2) as rn,
			person_1.FirstName as FirstName,
			person_1.PersonID as ID,
			person_1.LastName as LastName,
			person_1.MiddleName as MiddleName,
			person_1.Gender as Gender
		FROM
			Person person_1
	) t1
WHERE
	t1.rn = 1
LIMIT 1

