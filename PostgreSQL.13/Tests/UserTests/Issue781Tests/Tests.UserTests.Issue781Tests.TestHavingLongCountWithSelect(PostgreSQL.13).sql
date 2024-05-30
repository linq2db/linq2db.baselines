﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	(
		SELECT
			t2.c1
		FROM
			(
				SELECT
					'test' || "a_Patient"."Diagnosis" as c1
				FROM
					"Person" t1
						LEFT JOIN "Patient" "a_Patient" ON t1."PersonID" = "a_Patient"."PersonID"
			) t2
		GROUP BY
			t2.c1
		HAVING
			t2.c1 IS NOT NULL
	) t3

