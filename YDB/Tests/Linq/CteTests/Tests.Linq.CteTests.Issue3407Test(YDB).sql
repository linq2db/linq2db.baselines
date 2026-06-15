-- YDB Ydb

$CTE_1 = 	SELECT
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
;

SELECT
	r.FirstName as FirstName,
	r.ID as ID,
	r.LastName as LastName,
	r.MiddleName as MiddleName,
	r.Gender as Gender,
	r.Patient_PersonID as PersonID,
	r.Patient_Diagnosis as Diagnosis
FROM
	$CTE_1 r
WHERE
	r.ID = 2

-- YDB Ydb

$CTE_1 = 	SELECT
		1 as c1
	FROM
		Person t1
;

SELECT
	COUNT(*) as Count_1
FROM
	$CTE_1 t2

