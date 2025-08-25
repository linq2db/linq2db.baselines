BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = 'John' OR "p"."LastName" = 'John'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @firstName NVarChar(4) -- String
SET     @firstName = 'John'
DECLARE @firstName NVarChar(4) -- String
SET     @firstName = 'John'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = ? OR "p"."LastName" = ?
LIMIT 2

