﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t",
	"Person" "t1"
WHERE
	"t1"."PersonID" = 1

