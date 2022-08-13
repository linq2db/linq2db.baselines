BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	a_Patient.Diagnosis,
	a_Patient.PersonID,
	Avg(t1.PersonID)
FROM
	Person t1
		LEFT JOIN Patient a_Patient ON t1.PersonID = a_Patient.PersonID
GROUP BY
	t1.PersonID,
	a_Patient.PersonID,
	a_Patient.Diagnosis
HAVING
	t1.PersonID = toInt32(1)
ORDER BY
	a_Patient.Diagnosis DESC
LIMIT toInt32(1000)

