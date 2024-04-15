BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(2) -- String
SET     @p = 'oh'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Locate(CAST(@p AS NVarChar(2)), "p"."FirstName") - 1 = 1 AND
	"p"."PersonID" = 1

