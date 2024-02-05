BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t2.FirstName,
	t2.ID,
	t2.LastName,
	t2.MiddleName,
	t2.Gender
FROM
	(
		SELECT
			t1.FirstName as FirstName,
			t1.PersonID as ID,
			t1.LastName as LastName,
			t1.MiddleName as MiddleName,
			t1.Gender as Gender
		FROM
			Person t1
		ORDER BY
			t1.LastName
		LIMIT toInt32(1)
	) t2
UNION DISTINCT
SELECT
	t4.FirstName,
	t4.ID,
	t4.LastName,
	t4.MiddleName,
	t4.Gender
FROM
	(
		SELECT
			t3.FirstName as FirstName,
			t3.PersonID as ID,
			t3.LastName as LastName,
			t3.MiddleName as MiddleName,
			t3.Gender as Gender
		FROM
			Person t3
		ORDER BY
			t3.LastName
		LIMIT toInt32(1)
	) t4

