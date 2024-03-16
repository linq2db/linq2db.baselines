﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	pat."PersonID",
	pat."Diagnosis"
FROM
	"Patient" pat
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT DISTINCT
					"a_Patient"."Diagnosis"
				FROM
					"Person" per
						LEFT JOIN "Patient" "a_Patient" ON per."PersonID" = "a_Patient"."PersonID"
				WHERE
					per."PersonID" = pat."PersonID"
			) t1
		WHERE
			t1."Diagnosis" LIKE '%with%' ESCAPE '~'
	)

