﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."PersonID",
	"p2"."FirstName",
	"p3"."LastName"
FROM
	"Person" "p",
	"Person" "p2",
	"Person" "p3"
WHERE
	"p"."PersonID" = "p2"."PersonID" AND "p"."LastName" = "p3"."LastName" AND
	"p"."PersonID" = 1

