-- YDB Ydb

SELECT
	x.FirstName as FirstName,
	x.PersonID as ID,
	x.LastName as LastName,
	x.MiddleName as MiddleName,
	x.Gender as Gender
FROM
	Person x
		LEFT JOIN Patient a_Patient ON x.PersonID = a_Patient.PersonID
WHERE
	a_Patient.Diagnosis = 'Hallucination with Paranoid Bugs\' Delirium of Persecution'u

