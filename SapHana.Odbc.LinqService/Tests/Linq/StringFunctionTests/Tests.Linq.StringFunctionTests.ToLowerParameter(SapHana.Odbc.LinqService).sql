BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @param NVarChar(4) -- String
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
	Lower("p"."FirstName") = ? AND "p"."PersonID" = 1

