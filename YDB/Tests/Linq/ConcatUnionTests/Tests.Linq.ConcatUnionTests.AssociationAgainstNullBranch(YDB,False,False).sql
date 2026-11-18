-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	a_Patient.PersonID as PersonID_1,
	a_Patient.PersonID as PersonID_2,
	a_Patient.Diagnosis as Diagnosis
FROM
	Person p
		LEFT JOIN Patient a_Patient ON p.PersonID = a_Patient.PersonID
UNION ALL
SELECT
	p_1.PersonID as PersonID,
	CAST(NULL AS Int32) as PersonID_1,
	CAST(NULL AS Int32) as PersonID_2,
	CAST(NULL AS Text) as Diagnosis
FROM
	Person p_1

