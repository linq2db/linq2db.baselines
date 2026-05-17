-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT 1 AS "ID" FROM DUMMY
			UNION ALL
			SELECT 2 FROM DUMMY) "n" ON "p"."PersonID" = "n"."ID"

