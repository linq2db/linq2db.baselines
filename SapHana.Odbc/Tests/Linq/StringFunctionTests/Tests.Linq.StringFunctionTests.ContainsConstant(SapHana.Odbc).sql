-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE '%jOh%' ESCAPE '~' AND "p"."PersonID" = 1

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" NOT LIKE '%jOh%' ESCAPE '~' AND "p"."PersonID" = 1

