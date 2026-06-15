-- YDB Ydb
DECLARE $filter1 Text(6) -- String
SET     $filter1 = '%John%'u
DECLARE $filter2 Text(8) -- String
SET     $filter2 = '%Tester%'u

$CTE_1 = 	SELECT
		d.PersonID as PersonID
	FROM
		Patient d
	LIMIT 1
;
$CTE_2 = 	SELECT
		d_1.PersonID as PersonID
	FROM
		Patient d_1
	LIMIT 1
;

SELECT
	t1.PersonID as PersonID,
	t1.Diagnosis as Diagnosis
FROM
	Patient t1
WHERE
	EXISTS(
		SELECT
			1
		FROM
			Person e
		WHERE
			e.FirstName LIKE $filter1 ESCAPE '~'s AND e.PersonID IN (
				SELECT
					t2.PersonID
				FROM
					$CTE_1 t2
			)
	) OR
	EXISTS(
		SELECT
			1
		FROM
			Person e_1
		WHERE
			e_1.FirstName LIKE $filter2 ESCAPE '~'s AND e_1.PersonID IN (
				SELECT
					t3.PersonID
				FROM
					$CTE_2 t3
			)
	)
ORDER BY
	t1.PersonID

-- YDB Ydb

SELECT
	t1.PersonID as PersonID,
	t1.Diagnosis as Diagnosis
FROM
	Patient t1

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

