BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1000

SELECT
	t2.value_1,
	t2.id,
	t2.y
FROM
	(
		SELECT
			a_Patient.Diagnosis as value_1,
			a_Patient.PersonID as id,
			Round(AVG(t1.PersonID), 27) as y
		FROM
			Person t1
				LEFT JOIN Patient a_Patient ON t1.PersonID = a_Patient.PersonID
		GROUP BY
			t1.PersonID,
			a_Patient.PersonID,
			a_Patient.Diagnosis
		HAVING
			t1.PersonID = 1
		ORDER BY
			a_Patient.Diagnosis DESC
	) t2
WHERE
	ROWNUM <= :take

