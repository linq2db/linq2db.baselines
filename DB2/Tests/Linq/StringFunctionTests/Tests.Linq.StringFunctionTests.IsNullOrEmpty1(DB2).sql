﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	CHARACTER_LENGTH("p"."FirstName",CODEUNITS32) <> 0 AND
	"p"."PersonID" = 1

