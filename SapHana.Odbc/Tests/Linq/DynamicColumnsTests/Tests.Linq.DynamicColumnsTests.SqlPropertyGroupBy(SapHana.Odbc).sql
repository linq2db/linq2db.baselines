-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."FirstName",
	COUNT(*)
FROM
	"Person" "p"
GROUP BY
	"p"."FirstName"

