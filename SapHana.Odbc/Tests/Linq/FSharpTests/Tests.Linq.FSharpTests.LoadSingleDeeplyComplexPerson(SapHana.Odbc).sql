BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."MiddleName",
	"p"."LastName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = ?
LIMIT 2

