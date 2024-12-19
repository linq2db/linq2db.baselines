BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID as ID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender,
	a_Patient.PersonID,
	a_Patient.PersonID as PersonID_1,
	a_Patient.Diagnosis
FROM
	Person t1
		LEFT JOIN Patient a_Patient ON t1.PersonID = a_Patient.PersonID
UNION ALL
SELECT
	t3.FirstName as FirstName,
	t3.ID as ID,
	t3.LastName as LastName,
	t3.MiddleName as MiddleName,
	t3.Gender as Gender,
	t3.cond as PersonID,
	t3.cond as PersonID_1,
	t3.Diagnosis as Diagnosis
FROM
	(
		SELECT
			t2.FirstName as FirstName,
			t2.PersonID as ID,
			t2.LastName as LastName,
			t2.MiddleName as MiddleName,
			t2.Gender as Gender,
			a_Patient_1.PersonID as cond,
			a_Patient_1.Diagnosis as Diagnosis
		FROM
			Person t2
				LEFT JOIN Patient a_Patient_1 ON t2.PersonID = a_Patient_1.PersonID
		LIMIT 2
	) t3

