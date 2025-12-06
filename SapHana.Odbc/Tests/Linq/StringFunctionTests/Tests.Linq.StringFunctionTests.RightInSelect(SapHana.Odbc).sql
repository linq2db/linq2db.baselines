-- SapHana.Odbc SapHanaOdbc

SELECT
	RIGHT("p"."FirstName", 3)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

