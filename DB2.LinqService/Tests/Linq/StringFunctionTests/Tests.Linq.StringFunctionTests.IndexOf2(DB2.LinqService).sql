BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(1) -- String
SET     @p = 'e'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Locate(CAST(@p AS NVarChar(1)), "p"."LastName", 3) - 1 = 4 AND
	"p"."PersonID" = 2

