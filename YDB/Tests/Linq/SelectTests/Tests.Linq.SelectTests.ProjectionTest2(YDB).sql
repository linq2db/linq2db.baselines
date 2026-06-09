-- YDB Ydb

SELECT
	a_Patient.PersonID as PersonID,
	a_Patient.Diagnosis as Diagnosis
FROM
	Person p
		LEFT JOIN Patient a_Patient ON p.PersonID = a_Patient.PersonID

