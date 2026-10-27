-- ClickHouse.Driver ClickHouse
SELECT
	p.PersonID,
	toInt32(NULL) as c1,
	toInt32(NULL) as PersonID_1,
	toString(NULL) as Diagnosis
FROM
	Person p
INTERSECT DISTINCT
SELECT
	p_1.PersonID as PersonID,
	a_Patient.PersonID as c1,
	a_Patient.PersonID as PersonID_1,
	a_Patient.Diagnosis as Diagnosis
FROM
	Person p_1
		LEFT JOIN Patient a_Patient ON p_1.PersonID = a_Patient.PersonID

