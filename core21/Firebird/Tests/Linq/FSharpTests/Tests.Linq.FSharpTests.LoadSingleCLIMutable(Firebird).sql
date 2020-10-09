﻿BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
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

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
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

