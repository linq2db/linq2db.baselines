-- YDB Ydb

SELECT
	e.FirstName as FirstName,
	a_Person.PersonID IS NOT NULL AND a_Person.MiddleName IS NOT NULL as c1,
	a_Person.MiddleName as MiddleName
FROM
	Person e
		LEFT JOIN Patient a_Patient ON e.PersonID = a_Patient.PersonID
		LEFT JOIN Person a_Person ON a_Patient.PersonID = a_Person.PersonID

