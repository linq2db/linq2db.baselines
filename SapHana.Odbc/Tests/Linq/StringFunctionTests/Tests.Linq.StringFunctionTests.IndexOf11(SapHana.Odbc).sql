BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1 NVarChar(2) -- String
SET     @Parameter1 = 'oh'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Locate("p"."FirstName", ?) - 1 = 1 AND "p"."PersonID" = 1

