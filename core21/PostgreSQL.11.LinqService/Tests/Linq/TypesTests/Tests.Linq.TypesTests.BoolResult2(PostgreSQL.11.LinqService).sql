﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	"a_Patient"."PersonID" IS NOT NULL
FROM
	"Person" p
		LEFT JOIN "Patient" "a_Patient" ON p."PersonID" = "a_Patient"."PersonID"

