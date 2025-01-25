BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."PersonID",
	"p"."FirstName" || '1'
FROM
	"Person" "p"

