-- YDB Ydb

SELECT
	e.FirstName as FirstName,
	a_Person.PersonID IS NOT NULL AND a_Person.LastName IS NOT NULL as c1,
	a_Person.LastName as LastName
FROM
	Person e
		LEFT JOIN Patient a_Patient ON e.PersonID = a_Patient.PersonID
		LEFT JOIN Person a_Person ON a_Patient.PersonID = a_Person.PersonID

