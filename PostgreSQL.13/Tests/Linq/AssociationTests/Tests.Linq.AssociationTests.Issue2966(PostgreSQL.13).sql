﻿BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r_1."Diagnosis",
	"a_Person"."FirstName"
FROM
	(
		SELECT
			r."PersonID",
			r."Diagnosis"
		FROM
			"Patient" r
		UNION ALL
		SELECT
			t1."PersonID",
			t1."Diagnosis"
		FROM
			"Patient" t1
	) r_1
		INNER JOIN "Person" "a_Person" ON r_1."PersonID" = "a_Person"."PersonID"

