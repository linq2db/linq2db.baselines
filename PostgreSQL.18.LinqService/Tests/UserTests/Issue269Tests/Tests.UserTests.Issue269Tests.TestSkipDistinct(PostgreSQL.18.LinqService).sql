﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

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
				SELECT
					"a_Patient"."Diagnosis"
				FROM
					"Person" t1
						LEFT JOIN "Patient" "a_Patient" ON t1."PersonID" = "a_Patient"."PersonID"
				WHERE
					t1."PersonID" = pat."PersonID"
				ORDER BY
					t1."FirstName" DESC
				OFFSET 0 
			) t2
		WHERE
			t2."Diagnosis" LIKE '%with%' ESCAPE '~'
	)

