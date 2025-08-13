﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @param VarChar(4) -- String
SET     @param = 'john'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") = CAST(@param AS NVarChar(4)) AND
	"p"."PersonID" = 1

