-- YDB Ydb
SELECT
	e.FirstName as FirstName,
	t1.ID IS NOT NULL AND t1.LastName IS NOT NULL as c1,
	t1.LastName as LastName
FROM
	Person e
		LEFT JOIN (
			SELECT
				a_Person.PersonID as ID,
				a_Person.LastName as LastName,
				a_Patient.PersonID as PersonID
			FROM
				Patient a_Patient
					LEFT JOIN Person a_Person ON a_Patient.PersonID = a_Person.PersonID
		) t1 ON e.PersonID = t1.PersonID

