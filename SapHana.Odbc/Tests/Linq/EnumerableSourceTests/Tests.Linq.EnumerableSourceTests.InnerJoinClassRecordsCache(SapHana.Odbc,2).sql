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
		INNER JOIN (
			SELECT 3 AS "ID" FROM DUMMY
			UNION ALL
			SELECT 4 FROM DUMMY) "n" ON "p"."PersonID" = "n"."ID"

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
		INNER JOIN (
			SELECT 5 AS "ID" FROM DUMMY
			UNION ALL
			SELECT 6 FROM DUMMY) "n" ON "p"."PersonID" = "n"."ID"

