﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p2"."PersonID",
	"p2"."FirstName" || ''
FROM
	"Person" "p2"
WHERE
	"p2"."PersonID" = 1

