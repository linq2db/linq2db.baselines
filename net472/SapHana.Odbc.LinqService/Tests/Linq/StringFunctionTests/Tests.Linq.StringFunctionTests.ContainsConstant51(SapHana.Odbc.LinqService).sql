BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ps NVarChar(3) -- String
SET     @ps = '%[%'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123[456' LIKE ? ESCAPE '~'

