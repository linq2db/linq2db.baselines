BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1000

SELECT
	t2.Diagnosis,
	t2.PersonID,
	t2.y
FROM
	(
		SELECT
			a_Patient.Diagnosis,
			a_Patient.PersonID,
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

