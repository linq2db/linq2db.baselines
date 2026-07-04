-- YDB Ydb

SELECT
	a_Patient.Diagnosis as Diagnosis,
	COUNT(*) as Count_1
FROM
	Person p
		LEFT JOIN Patient a_Patient ON p.PersonID = a_Patient.PersonID
GROUP BY
	a_Patient.Diagnosis

