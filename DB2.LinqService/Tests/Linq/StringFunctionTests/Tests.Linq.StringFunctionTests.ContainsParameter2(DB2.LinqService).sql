BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @str VarChar(6) -- String
SET     @str = '%o~%h%'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" NOT LIKE @str ESCAPE '~' AND "p"."PersonID" = 1

