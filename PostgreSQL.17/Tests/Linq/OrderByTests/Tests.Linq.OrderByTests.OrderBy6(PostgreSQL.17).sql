﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."PersonID",
	patient_1."PersonID"
FROM
	"Person" t1
		LEFT JOIN "Patient" patient_1 ON t1."PersonID" = patient_1."PersonID"
ORDER BY
	t1."MiddleName"

