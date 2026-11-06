-- DuckDB
SELECT
	p.PersonID,
	a_Patient.PersonID,
	a_Patient.PersonID,
	a_Patient.Diagnosis
FROM
	Person p
		LEFT JOIN Patient a_Patient ON p.PersonID = a_Patient.PersonID
EXCEPT
SELECT
	p_1.PersonID,
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER),
	CAST(NULL AS VARCHAR)
FROM
	Person p_1

