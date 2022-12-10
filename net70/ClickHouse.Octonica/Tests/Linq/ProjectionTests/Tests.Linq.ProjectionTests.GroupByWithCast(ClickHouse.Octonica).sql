BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t2.Diagnosis,
	t2.c1,
	Avg(t2.PersonID)
FROM
	(
		SELECT
			t1.PersonID as PersonID,
			a_Patient.PersonID as c1,
			a_Patient.Diagnosis as Diagnosis
		FROM
			Person t1
				LEFT JOIN Patient a_Patient ON t1.PersonID = a_Patient.PersonID
	) t2
GROUP BY
	t2.PersonID,
	t2.c1,
	t2.Diagnosis
HAVING
	t2.PersonID = toInt32(1)
ORDER BY
	t2.Diagnosis DESC
LIMIT toInt32(1000)

