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
	"p"."Gender" = 'M'

