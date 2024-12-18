﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."PersonID",
	"pa"."Diagnosis"
FROM
	"Person" "p"
		INNER JOIN "Doctor" "d" ON "p"."PersonID" = "d"."PersonID"
		LEFT JOIN "Patient" "pa" ON "pa"."Diagnosis" = "p"."FirstName" AND "pa"."Diagnosis" IS NOT NULL AND "p"."FirstName" IS NOT NULL OR "pa"."Diagnosis" IS NULL AND "p"."FirstName" IS NULL

