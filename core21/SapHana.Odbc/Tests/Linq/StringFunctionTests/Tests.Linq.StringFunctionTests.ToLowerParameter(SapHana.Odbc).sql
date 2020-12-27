BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @param_1 NVarChar(4) -- String
SET     @param_1 = 'john'

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

