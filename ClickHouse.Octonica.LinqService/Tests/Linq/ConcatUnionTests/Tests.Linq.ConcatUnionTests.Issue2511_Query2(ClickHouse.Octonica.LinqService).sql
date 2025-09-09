BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.ID,
	t1.FirstName,
	t1.LastName,
	t1.MiddleName,
	t1.Gender,
	t1.PersonID,
	t1.PersonID as PersonID_1,
	t1.Diagnosis
FROM
	(
		SELECT
			p.PersonID as ID,
			p.FirstName as FirstName,
			p.LastName as LastName,
			p.MiddleName as MiddleName,
			p.Gender as Gender,
			a_Patient.PersonID as PersonID,
			a_Patient.Diagnosis as Diagnosis
		FROM
			Person p
				LEFT JOIN Patient a_Patient ON p.PersonID = a_Patient.PersonID
		LIMIT 2
	) t1
UNION ALL
SELECT
	t2.PersonID as ID,
	t2.FirstName as FirstName,
	t2.LastName as LastName,
	t2.MiddleName as MiddleName,
	t2.Gender as Gender,
	a_Patient_1.PersonID as PersonID,
	a_Patient_1.PersonID as PersonID_1,
	a_Patient_1.Diagnosis as Diagnosis
FROM
	Person t2
		LEFT JOIN Patient a_Patient_1 ON t2.PersonID = a_Patient_1.PersonID

