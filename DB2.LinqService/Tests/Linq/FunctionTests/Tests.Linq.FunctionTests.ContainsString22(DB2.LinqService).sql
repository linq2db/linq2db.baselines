BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @nm VarChar(4) -- String
SET     @nm = 'John'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IN (@nm)

