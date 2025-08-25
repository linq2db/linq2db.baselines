BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @str NVarChar(6) -- String
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
	"p"."FirstName" NOT LIKE ? ESCAPE '~' AND "p"."PersonID" = 1

