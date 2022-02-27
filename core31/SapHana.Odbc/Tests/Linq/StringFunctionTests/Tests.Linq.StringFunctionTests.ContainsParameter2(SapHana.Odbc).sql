BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @str_1 NVarChar(6) -- String
SET     @str_1 = '%o~%h%'

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

