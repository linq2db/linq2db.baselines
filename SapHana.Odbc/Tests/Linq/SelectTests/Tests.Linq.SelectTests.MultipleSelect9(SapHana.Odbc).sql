BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	("p5"."PersonID" * LENGTH('22')) / 2,
	"p5"."FirstName"
FROM
	"Person" "p5"

