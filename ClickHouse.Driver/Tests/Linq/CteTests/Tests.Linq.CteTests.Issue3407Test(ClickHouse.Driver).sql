-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		t1.PersonID as ID,
		t1.FirstName as FirstName,
		t1.LastName as LastName,
		t1.MiddleName as MiddleName,
		t1.Gender as Gender,
		a_Patient.PersonID as Patient_PersonID,
		a_Patient.Diagnosis as Patient_Diagnosis
	FROM
		Person t1
			LEFT JOIN Patient a_Patient ON t1.PersonID = a_Patient.PersonID
)
SELECT
	r.FirstName,
	r.ID,
	r.LastName,
	r.MiddleName,
	r.Gender,
	r.PersonID,
	r.Diagnosis
FROM
	(
		SELECT
			t2.ID as ID,
			t2.FirstName as FirstName,
			t2.LastName as LastName,
			t2.MiddleName as MiddleName,
			t2.Gender as Gender,
			t2.Patient_PersonID as PersonID,
			t2.Patient_Diagnosis as Diagnosis
		FROM
			CTE_1 t2
	) r
WHERE
	r.ID = 2

-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		1 as c1
	FROM
		Person t1
)
SELECT
	COUNT(*)
FROM
	CTE_1 t2

