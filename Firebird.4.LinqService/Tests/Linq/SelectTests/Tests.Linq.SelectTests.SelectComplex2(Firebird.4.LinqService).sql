﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	"t1"."PersonID",
	"t1"."Gender",
	"t1"."FirstName",
	"t1"."MiddleName",
	"t1"."LastName"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = 1
FETCH NEXT 1 ROWS ONLY

