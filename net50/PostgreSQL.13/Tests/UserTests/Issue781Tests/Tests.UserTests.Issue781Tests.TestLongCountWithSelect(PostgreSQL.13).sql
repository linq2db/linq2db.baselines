BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as c1
		FROM
			"Person" "selectParam"
				LEFT JOIN "Patient" "a_Patient" ON "selectParam"."PersonID" = "a_Patient"."PersonID"
		GROUP BY
			'test' || "a_Patient"."Diagnosis"
	) t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as c1
		FROM
			"Person" "selectParam"
				LEFT JOIN "Patient" "a_Patient" ON "selectParam"."PersonID" = "a_Patient"."PersonID"
		GROUP BY
			'test' || "a_Patient"."Diagnosis"
	) t1

