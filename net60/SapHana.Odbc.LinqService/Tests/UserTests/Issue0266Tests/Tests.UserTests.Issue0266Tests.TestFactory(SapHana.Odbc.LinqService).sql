BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1
LIMIT 2

