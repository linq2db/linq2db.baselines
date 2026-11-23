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
	CAST(("p"."PersonID" + 9) / 10 AS Integer) = 1 AND
	"p"."PersonID" = 1

