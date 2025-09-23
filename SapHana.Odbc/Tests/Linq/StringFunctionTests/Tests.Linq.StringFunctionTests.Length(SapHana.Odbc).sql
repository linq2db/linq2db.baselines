BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Length Int -- Int32
SET     @Length = 4

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Length("p"."FirstName") = ? AND "p"."PersonID" = 1

