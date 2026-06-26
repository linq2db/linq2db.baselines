-- YDB Ydb
DECLARE $take Int32
SET     $take = 1000

SELECT
	a_Patient.Diagnosis as Diagnosis,
	a_Patient.PersonID as id,
	AVG(auto16031.PersonID) as y
FROM
	Person auto16031
		LEFT JOIN Patient a_Patient ON auto16031.PersonID = a_Patient.PersonID
GROUP BY
	auto16031.PersonID,
	a_Patient.PersonID,
	a_Patient.Diagnosis
HAVING
	auto16031.PersonID = 1
ORDER BY
	Diagnosis DESC
LIMIT $take

