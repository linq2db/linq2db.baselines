BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"p"."PersonID",
	RTRIM(("p"."FirstName" || '1'), '')
FROM
	"Person" "p"

