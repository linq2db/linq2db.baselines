-- YDB Ydb

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
WHERE
	p.PersonID = 1
LIMIT 2

-- YDB Ydb

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
WHERE
	p.PersonID = 2
LIMIT 2

