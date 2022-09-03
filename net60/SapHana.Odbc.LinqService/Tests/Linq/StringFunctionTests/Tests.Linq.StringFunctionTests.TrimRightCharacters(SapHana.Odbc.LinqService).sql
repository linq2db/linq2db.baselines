BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."PersonID",
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	RTRIM(('  ' || "p"."FirstName" || ' '), ' n') = '  Joh' AND
	"p"."PersonID" = 1

