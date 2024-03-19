BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	(
		SELECT
			'test' || "a_Patient"."Diagnosis" as c1
		FROM
			"Person" t1
				LEFT JOIN "Patient" "a_Patient" ON t1."PersonID" = "a_Patient"."PersonID"
		GROUP BY
			'test' || "a_Patient"."Diagnosis"
	) t2

