BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1 NVarChar(4) -- String
SET     @Parameter1 = 'JOHN'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Upper("p"."FirstName") = ? AND "p"."PersonID" = 1

