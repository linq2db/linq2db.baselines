-- YDB Ydb

SELECT
	i.FirstName as FirstName,
	i.PersonID as ID,
	i.LastName as LastName,
	i.MiddleName as MiddleName,
	i.Gender as Gender,
	a_Patient.PersonID as PersonID,
	a_Patient.Diagnosis as Diagnosis
FROM
	Person i
		LEFT JOIN Patient a_Patient ON i.PersonID = a_Patient.PersonID
WHERE
	a_Patient.PersonID <> 0 OR a_Patient.PersonID IS NULL

