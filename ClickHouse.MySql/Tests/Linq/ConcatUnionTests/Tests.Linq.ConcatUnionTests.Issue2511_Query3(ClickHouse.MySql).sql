-- ClickHouse.MySql ClickHouse

SELECT
	t3.projection__set_id__,
	t3.ID,
	t3.FirstName,
	t3.LastName,
	t3.MiddleName,
	t3.Gender,
	t3.Patient,
	t3.PersonID,
	t3.Diagnosis
FROM
	(
		SELECT
			t1.ID as ID,
			toInt32(0) as projection__set_id__,
			t1.FirstName as FirstName,
			t1.LastName as LastName,
			t1.MiddleName as MiddleName,
			t1.Gender as Gender,
			toInt32(NULL) as Patient,
			toInt32(NULL) as PersonID,
			toString(NULL) as Diagnosis
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
			toInt32(1) as projection__set_id__,
			t2.FirstName as FirstName,
			t2.LastName as LastName,
			t2.MiddleName as MiddleName,
			t2.Gender as Gender,
			a_Patient.PersonID as Patient,
			a_Patient.PersonID as PersonID,
			a_Patient.Diagnosis as Diagnosis
		FROM
			Person t2
				LEFT JOIN Patient a_Patient ON t2.PersonID = a_Patient.PersonID
	) t3
ORDER BY
	t3.ID

