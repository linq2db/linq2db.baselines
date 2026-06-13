-- YDB Ydb

SELECT
	x.PersonID as ID,
	x.FirstName as FirstName,
	x.LastName as LastName,
	x.MiddleName as MiddleName
FROM
	Person x
		LEFT JOIN Patient a_Patient ON x.PersonID = a_Patient.PersonID
WHERE
	a_Patient.Diagnosis = 'Hallucination with Paranoid Bugs\' Delirium of Persecution'u

