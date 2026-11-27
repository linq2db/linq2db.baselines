-- SapHana.Odbc SapHanaOdbc
SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Locate("p"."LastName", 'p', 2) = 3 AND "p"."PersonID" = 1

