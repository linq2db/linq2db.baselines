﻿BeforeExecute
--  Firebird.3 Firebird3

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender",
	"a_Patient"."PersonID",
	"a_Patient"."Diagnosis"
FROM
	"Person" "p"
		LEFT JOIN "Patient" "a_Patient" ON "p"."PersonID" = "a_Patient"."PersonID"
WHERE
	"p"."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
--  Firebird.3 Firebird3

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender",
	"a_Patient"."PersonID",
	"a_Patient"."Diagnosis"
FROM
	"Person" "p"
		LEFT JOIN "Patient" "a_Patient" ON "p"."PersonID" = "a_Patient"."PersonID"
WHERE
	"p"."PersonID" = 2
FETCH NEXT 2 ROWS ONLY

