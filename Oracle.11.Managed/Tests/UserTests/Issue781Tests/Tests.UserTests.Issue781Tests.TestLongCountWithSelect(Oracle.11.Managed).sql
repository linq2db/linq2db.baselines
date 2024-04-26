BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Count(*)
FROM
	(
		SELECT
			t2."c1"
		FROM
			(
				SELECT
					'test' || a_Patient."Diagnosis" as "c1"
				FROM
					"Person" t1
						LEFT JOIN "Patient" a_Patient ON t1."PersonID" = a_Patient."PersonID"
			) t2
		GROUP BY
			t2."c1"
	) t3

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Count(*)
FROM
	(
		SELECT
			t2."c1"
		FROM
			(
				SELECT
					CASE
						WHEN a_Patient."PersonID" IS NULL THEN NULL
						ELSE 'test' || a_Patient."Diagnosis"
					END as "c1"
				FROM
					"Person" t1
						LEFT JOIN "Patient" a_Patient ON t1."PersonID" = a_Patient."PersonID"
			) t2
		GROUP BY
			t2."c1"
	) t3

