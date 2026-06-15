-- YDB Ydb

SELECT
	i.FirstName as FirstName,
	i.PersonID as ID,
	i.LastName as LastName,
	i.MiddleName as MiddleName,
	i.Gender as Gender,
	p.PersonID as PersonID,
	p.Diagnosis as Diagnosis
FROM
	Person i
		LEFT JOIN Patient p ON i.PersonID = p.PersonID
WHERE
	p.PersonID <> 0 OR p.PersonID IS NULL

