BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE '%jOh%' ESCAPE '~' AND "p"."PersonID" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" NOT LIKE '%jOh%' ESCAPE '~' AND "p"."PersonID" = 1

