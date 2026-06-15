-- YDB Ydb

SELECT
	t1.PersonID as ID,
	t1.FirstName as FirstName,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	a_Patient.PersonID as PersonID,
	a_Patient.Diagnosis as Diagnosis
FROM
	Person t1
		LEFT JOIN Patient a_Patient ON t1.PersonID = a_Patient.PersonID

