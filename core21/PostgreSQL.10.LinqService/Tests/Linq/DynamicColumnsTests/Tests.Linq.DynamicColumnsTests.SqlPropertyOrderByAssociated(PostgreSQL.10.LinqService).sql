﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	x."PersonID"
FROM
	"Person" x
		LEFT JOIN "Patient" "a_Patient" ON x."PersonID" = "a_Patient"."PersonID"
ORDER BY
	"a_Patient"."Diagnosis"

