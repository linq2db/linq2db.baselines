-- SapHana.Odbc SapHanaOdbc
SELECT
	Locate("p"."FirstName", 'o') * 2
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

