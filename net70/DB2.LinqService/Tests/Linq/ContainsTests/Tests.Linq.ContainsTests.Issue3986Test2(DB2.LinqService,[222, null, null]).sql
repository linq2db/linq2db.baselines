﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."PersonID" = 4 AND "r"."MiddleName" <> '222' AND
	"r"."MiddleName" IS NOT NULL

