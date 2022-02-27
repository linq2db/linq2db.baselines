BeforeExecute
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
	Locate(Substring("p"."LastName",3 + 1),'e') + 3 - 1 = 4 AND
	"p"."PersonID" = 2

