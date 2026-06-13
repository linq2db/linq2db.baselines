-- YDB Ydb

SELECT
	a_Patient.Diagnosis as Diagnosis
FROM
	Person x
		LEFT JOIN Patient a_Patient ON x.PersonID = a_Patient.PersonID

