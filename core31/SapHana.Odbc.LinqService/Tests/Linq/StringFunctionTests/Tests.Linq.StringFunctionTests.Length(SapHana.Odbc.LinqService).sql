BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Length_1  -- Int32
SET     @Length_1 = 4

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

