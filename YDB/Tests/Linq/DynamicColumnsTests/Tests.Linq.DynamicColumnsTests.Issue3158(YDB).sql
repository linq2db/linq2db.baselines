-- YDB Ydb

SELECT
	p.PersonID as ID,
	pa.Diagnosis as Diagnosis
FROM
	Person p
		INNER JOIN Doctor d ON p.PersonID = d.PersonID
		LEFT JOIN Patient pa ON pa.Diagnosis = p.FirstName

