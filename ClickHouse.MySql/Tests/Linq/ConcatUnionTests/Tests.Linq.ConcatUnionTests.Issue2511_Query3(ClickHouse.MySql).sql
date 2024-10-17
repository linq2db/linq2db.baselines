BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t3.projection__set_id__,
	t3.ID,
	t3.FirstName,
	t3.LastName,
	t3.MiddleName,
	t3.Gender,
	t3.c1,
	t3.c2,
	t3.c3
FROM
	(
		SELECT
			t1.ID as ID,
			t1.FirstName as FirstName,
			t1.LastName as LastName,
			t1.MiddleName as MiddleName,
			t1.Gender as Gender,
			toInt32(NULL) as c1,
			toInt32(NULL) as c2,
			toString(NULL) as c3,
			toInt32(0) as projection__set_id__
		FROM
			(
				SELECT
					p.PersonID as ID,
					p.FirstName as FirstName,
					p.LastName as LastName,
					p.MiddleName as MiddleName,
					p.Gender as Gender
				FROM
					Person p
				LIMIT 2
			) t1
		UNION ALL
		SELECT
			t2.PersonID as ID,
			t2.FirstName as FirstName,
			t2.LastName as LastName,
			t2.MiddleName as MiddleName,
			t2.Gender as Gender,
			a_Patient.PersonID as c1,
			a_Patient.PersonID as c2,
			a_Patient.Diagnosis as c3,
			toInt32(1) as projection__set_id__
		FROM
			Person t2
				LEFT JOIN Patient a_Patient ON t2.PersonID = a_Patient.PersonID
	) t3
ORDER BY
	t3.ID

