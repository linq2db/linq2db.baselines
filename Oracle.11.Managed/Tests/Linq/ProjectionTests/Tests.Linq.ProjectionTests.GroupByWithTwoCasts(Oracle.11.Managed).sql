-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1000

SELECT
	t1."Diagnosis",
	t1."PersonID",
	t1.AVG_1
FROM
	(
		SELECT
			a_Patient."Diagnosis",
			a_Patient."PersonID",
			AVG(auto16031."PersonID") as AVG_1
		FROM
			"Person" auto16031
				LEFT JOIN "Patient" a_Patient ON auto16031."PersonID" = a_Patient."PersonID"
		GROUP BY
			auto16031."PersonID",
			a_Patient."PersonID",
			a_Patient."Diagnosis"
		HAVING
			auto16031."PersonID" = 1
		ORDER BY
			a_Patient."Diagnosis" DESC
	) t1
WHERE
	ROWNUM <= :take
ORDER BY
	t1."Diagnosis" DESC

