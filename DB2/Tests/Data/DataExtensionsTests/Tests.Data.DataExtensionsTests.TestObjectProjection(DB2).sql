﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1
FETCH FIRST 1 ROWS ONLY

