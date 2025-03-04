BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t2.Diagnosis,
	t2.PersonID,
	t2.AVG_1
FROM
	(
		SELECT
			a_Patient.Diagnosis as Diagnosis,
			a_Patient.PersonID as PersonID,
			avg(t1.PersonID) as AVG_1
		FROM
			Person t1
				LEFT JOIN Patient a_Patient ON t1.PersonID = a_Patient.PersonID
		GROUP BY
			t1.PersonID,
			a_Patient.PersonID,
			a_Patient.Diagnosis
		HAVING
			t1.PersonID = 1
	) t2
ORDER BY
	t2.Diagnosis DESC
LIMIT 1000

