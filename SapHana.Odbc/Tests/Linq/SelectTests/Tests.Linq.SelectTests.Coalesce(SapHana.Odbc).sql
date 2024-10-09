BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."PersonID",
	"p"."FirstName",
	Coalesce("p"."MiddleName", 'None')
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

