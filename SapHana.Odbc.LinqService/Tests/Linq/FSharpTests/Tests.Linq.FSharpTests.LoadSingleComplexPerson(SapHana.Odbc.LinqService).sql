BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1

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

