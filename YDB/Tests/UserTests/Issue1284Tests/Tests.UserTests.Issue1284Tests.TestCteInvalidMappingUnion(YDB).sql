-- YDB Ydb

$CTE_1 = 	SELECT
		x_1.FirstName as entry_FirstName,
		x_1.ID as entry_ID,
		x_1.LastName as entry_LastName,
		x_1.MiddleName as entry_MiddleName,
		x_1.Gender as entry_Gender,
		x_1.rn as rn
	FROM
		(
			SELECT
				Unwrap(CAST(1 AS Int32)) as rn,
				x.FirstName as FirstName,
				x.PersonID as ID,
				x.LastName as LastName,
				x.MiddleName as MiddleName,
				x.Gender as Gender
			FROM
				Person x
			UNION ALL
			SELECT
				Unwrap(CAST(2 AS Int32)) as rn,
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
;

SELECT
	t1.entry_FirstName as FirstName,
	t1.entry_ID as ID,
	t1.entry_LastName as LastName,
	t1.entry_MiddleName as MiddleName,
	t1.entry_Gender as Gender,
	t1.rn as rn
FROM
	$CTE_1 t1
LIMIT 1

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.ID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender,
	t1.rn as rn
FROM
	(
		SELECT
			Unwrap(CAST(1 AS Int32)) as rn,
			x.FirstName as FirstName,
			x.PersonID as ID,
			x.LastName as LastName,
			x.MiddleName as MiddleName,
			x.Gender as Gender
		FROM
			Person x
		UNION ALL
		SELECT
			Unwrap(CAST(2 AS Int32)) as rn,
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

