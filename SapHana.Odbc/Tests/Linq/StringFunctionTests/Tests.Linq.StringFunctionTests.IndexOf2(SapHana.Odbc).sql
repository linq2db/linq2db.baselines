BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p NVarChar(1) -- String
SET     @p = 'e'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Locate(Substring("p"."LastName",3 + 1),?) + 3 - 1 = 4 AND
	"p"."PersonID" = 2

